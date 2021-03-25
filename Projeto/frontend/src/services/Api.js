import axios from "axios";
const headers = {
    'Content-Type': 'text/plain'
};
const api = axios.create({
  baseURL: "http://localhost:8000",
  headers: headers
});

export default api;