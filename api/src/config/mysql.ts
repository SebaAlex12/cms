import mysql from "mysql";
import config from "./keys";

const params = {
    host: config.DBhost,
    user: config.DBuser,
    password: config.DBpassword,
    database: config.DBname
}

export const connect = mysql.createConnection(params);
export const pool = mysql.createPool(params);