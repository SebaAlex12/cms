import { Iconfig } from "./interfaces";

const config:Iconfig = {
    DBhost: process.env.DB_HOST || '',
    DBuser: process.env.DB_USER || '',
    DBpassword: process.env.DB_PASSWORD || '',
    DBname: process.env.DB_NAME || ''
}
export default config;