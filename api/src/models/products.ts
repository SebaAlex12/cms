import { pool } from "../config/mysql";

/*  get all products  */
export const getProducts = () => {
    const sql = 'SELECT * FROM produkty';
    return new Promise((resolve, reject)=>{
        pool.query(sql,  (error, data)=>{
            if(error){
                return reject(error);
            }
            return resolve(data);
        });
    });
}