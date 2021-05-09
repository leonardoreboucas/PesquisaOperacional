import React, { useEffect, useState } from "react";
import { DataGrid } from '@material-ui/data-grid';
import { Box, Button, Card, CardContent, CardHeader, FormControl, Grid, InputLabel, LinearProgress, makeStyles, MenuItem, Select, Snackbar, TextField, Typography } from '@material-ui/core';
import ArrowForwardIcon from '@material-ui/icons/ArrowForward';
import AddIcon from '@material-ui/icons/Add';
import api from "./services/Api";
import MuiAlert from '@material-ui/lab/Alert';
import DeleteIcon from '@material-ui/icons/Delete';

function Alert(props) {
  return <MuiAlert elevation={6} variant="filled" {...props} />;
}

const columns = [
  { field: 'id', headerName: 'ID', width: 150 },
  { field: 'memory', headerName: 'Memory', width: 130 },
  { field: 'vcpu', headerName: 'vCPU', width: 130 },
  {
    field: 'storage',
    headerName: 'Storage',
    type: 'number',
    width: 200,
  }
];

const columnsEstimates = [
  { field: 'requiredId', headerName: 'Required Id', width: 130 },
  { field: 'id', headerName: 'Instance ID (SKU)', width: 200 },
  { field: 'provider', headerName: 'Provider', width: 120 },
  { field: 'instanceType', headerName: 'Type', width: 130 },
  {
    field: 'tenancy',
    headerName: 'Tenancy',
    width: 130,
  },
  {
    field: 'memory',
    headerName: 'Memory',
    type: 'number',
    width: 120,
  },
  {
    field: 'vcpu',
    headerName: 'vCPU',
    type: 'number',
    width: 100,
  },
  {
    field: 'storage',
    headerName: 'Storage',
    type: 'number',
    width: 120,
  },
  {
    field: 'price',
    headerName: 'Price',
    type: 'number',
    width: 100,
  },
  {
    field: 'countMemory',
    headerName: 'Memory used',
    type: 'number',
    width: 150,
  },
  {
    field: 'countVcpu',
    headerName: 'VCpu used',
    width: 150,
  }
  ,
  {
    field: 'countStorage',
    headerName: 'Storage used',
    width: 150,
  }
];

const useStyles = makeStyles((theme) => ({
  formControl: {
    margin: theme.spacing(1),
    minWidth: 120,
  },
  selectEmpty: {
    marginTop: theme.spacing(2),
  },
}));

export default function DataTable() {
  const [requirements, setRequirements] = useState([])
  const [estimates, setEstimates] = useState([])
  const [total, setTotal] = useState()
  const [totalCalculated, setTotalCalculated] = useState()
  const [totalMemory, setTotalMemory] = useState()
  const [totalVcpu, setTotalVcpu] = useState()
  const [totalStorage, setTotalStorage] = useState()
  const [showEstimates, setShowEstimates] = useState(false)
  const [error, setError] = useState()
  const defaultData = {
    id:0,
    memory:"",
    vcpu:"",
    storage:""
  }
  const [data, setData] = useState(defaultData);
  const handleChange = event => {
    setData({
      ...data,
      [event.target.name]: event.target.value
    });
  };

  const handleAdd= event => {
    let obj ={
      id:data.memory+data.vcpu+data.storage,
      memory: data.memory,
      vcpu: data.vcpu,
      storage: data.storage
    }
    let list = requirements.concat([obj])
    setRequirements(list)
    setData(defaultData);
  };

  const handleEstimates = async event => {
    if (!requirements.length){
      setOpen(true)
      setMessage({text:"Fill the requirements",severity:"error"})
      return false
    }

    setOpen(true)
    setMessage({text:"Estimative requested",severity:"success"})

    setEstimates([])
    setTotalCalculated(0)
    setTotalMemory(0)
    setTotalVcpu(0)
    setTotalStorage(0)
    setError()
    setShowEstimates(true)


    const response = await api.put("solve", {"required":requirements, "mainParam":item}).catch(e=>{
      console.log(e)
    })

    if (response && response.data.list.length==0){
      setError(true)
      return
    }

    let data = []
    response.data.list.forEach(itemNow=>{
      let row = itemNow.instance_found
      row.id = row.sku
      //row.paramCount = itemNow.paramCount / itemNow.instance_found[item]
      row.countMemory = itemNow.countMemory
      row.countVcpu = itemNow.countVcpu
      row.countStorage = itemNow.countStorage
      row.requiredId = itemNow.instance_required.id
      data.push(row)
    })
    setTotal(response.data.total)

    let totalCalculated = 0
    let totalMemory = 0
    let totalVcpu = 0
    let totalStorage = 0
    
    data.forEach(itemNow=>{
      totalCalculated += itemNow.price
      totalMemory += itemNow.memory
      totalVcpu += itemNow.vcpu
      totalStorage += itemNow.storage
    })
    setTotalCalculated(totalCalculated)
    setTotalMemory(totalMemory)
    setTotalVcpu(totalVcpu)
    setTotalStorage(totalStorage)
    setEstimates(data)
    setOpen(false)
  };

  const classes = useStyles();
  const [item, setItem] = React.useState();

  const handleChangeSelect = (event) => {
    setItem(event.target.value);
  };

  const [open, setOpen] = React.useState(false);
  const [message, setMessage] = React.useState({});
  
  const handleClose = (event, reason) => {
    if (reason === 'clickaway') {
      return;
    }

    setOpen(false);
  };

  const handleClean = (event) => {
    setRequirements([]);
    setShowEstimates(false)
  };


  return (
    <Box my={3} mx={3}>
      <Snackbar open={open} autoHideDuration={6000} onClose={handleClose}>
        <Alert onClose={handleClose} severity={message.severity}>
          {message.text}
        </Alert>
      </Snackbar>
      <Box my={3} mx={3}>
        <Grid container>
          <Grid item md={4}>
            <Card>
              <CardContent>
                <Grid container>
                  <Grid item md={3}>
                    <Box x={3}>
                      <TextField
                            margin="dense"
                            onChange={handleChange}
                            required
                            variant="standard"
                            InputProps={{ readOnly: false }}
                            label="memory"
                            name="memory"
                            value={data.memory}
                          />
                      </Box>
                  </Grid>
                  <Grid item md={1}>

                  </Grid>
                  <Grid item md={3}>
                    <Box x={3}>
                      <TextField
                          margin="dense"
                          onChange={handleChange}
                          required
                          variant="standard"
                          InputProps={{ readOnly: false }}
                          label="vcpu"
                          name="vcpu"
                          value={data.vcpu}
                        />
                    </Box>
                  </Grid>
                  <Grid item md={1}>

                  </Grid>
                  <Grid item md={4}>
                    <Box x={3}>
                      <TextField
                          margin="dense"
                          onChange={handleChange}
                          required
                          variant="standard"
                          InputProps={{ readOnly: false }}
                          label="storage"
                          name="storage"
                          value={data.storage}
                        />
                    </Box>
                  </Grid>
                  <Grid item md={12}>
                    <Button variant="contained" color="primary" onClick={()=>{handleAdd()}}><AddIcon /> Add</Button>
                    <Button style={{marginLeft:'5px'}} variant="contained" color="secondary" onClick={()=>{handleClean()}}><DeleteIcon /> Clean</Button>
                  </Grid>
                </Grid>
              </CardContent>
            </Card>
            
            <Card>
              <CardContent>
                <div style={{ height: 700, width: '100%' }}>
                  <DataGrid rows={requirements} columns={columns} pageSize={50} />
                </div>
              </CardContent>
            </Card>
          
          </Grid>
        
        
          <Grid item md={1}>
            <Grid container justify = "center">
              <Box mx={3}><Button variant="contained" color="primary" onClick={()=>{handleEstimates()}}>Estimate <ArrowForwardIcon /></Button></Box>
            </Grid>
          </Grid>
        
          <Grid item md={7}>
            <Card>
              <CardContent>
                {(showEstimates && !error)&&(
                  (!estimates.length )?
                    <LinearProgress />
                  :
                    <div style={{ height: 800, width: '100%' }}>
                      <DataGrid rows={(estimates)?estimates:[]} columns={columnsEstimates} pageSize={50} />
                      <Typography>Objective Value: {total} / Total Calculated: {totalCalculated} / Total Memory: {totalMemory} / Total VCpu: {totalVcpu} / Total Storage: {totalStorage}</Typography>
                    </div>
                  )
                }
                {error&&(
                  <Typography>No result found</Typography>
                )}
              </CardContent>
            </Card>
          </Grid>
        </Grid>
      </Box>
    </Box>
  );
}