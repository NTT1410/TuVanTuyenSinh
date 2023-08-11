import axios from "axios";

const SERVER_CONTEXT = "/backend-university-entrance";

export const endpoints = {
  departments: `${SERVER_CONTEXT}/api/departments`,
  users: `${SERVER_CONTEXT}/api/users`,
};

export default axios.create({
  baseURL: "http://localhost:8080",
});
