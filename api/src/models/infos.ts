import { pool } from "../config/mysql";

/*  get all infos  */
export const getInfos = () => {
    const sql = 'SELECT * FROM strony';
    return new Promise((resolve, reject)=>{
        pool.query(sql,  (error, data)=>{
            if(error){
                return reject(error);
            }
            return resolve(data);
        });
    });
}

/*  get info by id  */
export const getInfoById = (id:number) => {
    const sql = `SELECT * FROM strony WHERE id = ${id}`;
    return new Promise((resolve,reject)=>{
        pool.query(sql, (error, data)=>{
            if(error){
                return reject(error);
            }
            return resolve(data);
        })
    })
}

/*  update info by id  */
export const updateInfoById = (id:number, params:any) => {

    const sql = `UPDATE strony SET 
        nazwa = ?,
        nazwaen = ?,
        nazwade = ?,
        naglowek = ?,
        nagloweken = ?,
        naglowekde = ?,
        tekst = ?,
        teksten = ?,
        tekstde = ?,
        g = ?,
        parent = ?,
        nr = ?,
        widocznosc = ?,
        widocznosc_linku = ?,
        nazwa_pliku = ?,
        nazwa_plikuen = ?,
        nazwa_plikude = ?,
        link = ?,
        szablon = ?,
        style = ?,
        img = ?,
        img_strona = ?,
        title = ?,
        titleen = ?,
        titlede = ?,
        description = ?,
        descriptionen = ?,
        descriptionde = ?,
        keywords = ?,
        keywordsen = ?,
        keywordsde = ?,
        artykuly_id = ?,
        albumy_id = ?,
        dodatkowe_id = ?,
        grupy_sekcyjne_id = ?,
        banery_id = ?
    WHERE id = ${id}`;

    const values = [
        params["nazwa"],
        params["nazwaen"],
        params["nazwade"],
        params["naglowek"],
        params["nagloweken"],
        params["naglowekde"],
        params["tekst"],
        params["teksten"],
        params["tekstde"],
        params["g"],
        params["parent"],
        params["nr"],
        params["widocznosc"],
        params["widocznosc_linku"],
        params["nazwa_pliku"],
        params["nazwa_plikuen"],
        params["nazwa_plikude"],
        params["link"],
        params["szablon"],
        params["style"],
        params["img"],
        params["img_strona"],
        params["title"],
        params["titleen"],
        params["titlede"],
        params["description"],
        params["descriptionen"],
        params["descriptionde"],
        params["keywords"],
        params["keywordsen"],
        params["keywordsde"],
        params["artykuly_id"],
        params["albumy_id"],
        params["dodatkowe_id"],
        params["grupy_sekcyjne_id"],
        params["banery_id"]
    ];

    return new Promise((resolve,reject)=>{
        pool.query(sql, values, (error, data)=>{
            if(error){
                return reject(error);
            }
            return resolve(data);
        })
    })
}

export const insertInfo = (params:any) => {
    const sql = `INSERT INTO strony SET 
        nazwa = ?,
        nazwaen = ?,
        nazwade = ?,
        naglowek = ?,
        nagloweken = ?,
        naglowekde = ?,
        tekst = ?,
        teksten = ?,
        tekstde = ?,
        g = ?,
        parent = ?,
        nr = ?,
        widocznosc = ?,
        widocznosc_linku = ?,
        nazwa_pliku = ?,
        nazwa_plikuen = ?,
        nazwa_plikude = ?,
        link = ?,
        szablon = ?,
        style = ?,
        img = ?,
        img_strona = ?,
        title = ?,
        titleen = ?,
        titlede = ?,
        description = ?,
        descriptionen = ?,
        descriptionde = ?,
        keywords = ?,
        keywordsen = ?,
        keywordsde = ?,
        artykuly_id = ?,
        albumy_id = ?,
        dodatkowe_id = ?,
        grupy_sekcyjne_id = ?,
        banery_id = ?
    `;
    const values = [
        params["nazwa"],
        params["nazwaen"],
        params["nazwade"],
        params["naglowek"],
        params["nagloweken"],
        params["naglowekde"],
        params["tekst"],
        params["teksten"],
        params["tekstde"],
        params["g"],
        params["parent"],
        params["nr"],
        params["widocznosc"],
        params["widocznosc_linku"],
        params["nazwa_pliku"],
        params["nazwa_plikuen"],
        params["nazwa_plikude"],
        params["link"],
        params["szablon"],
        params["style"],
        params["img"],
        params["img_strona"],
        params["title"],
        params["titleen"],
        params["titlede"],
        params["description"],
        params["descriptionen"],
        params["descriptionde"],
        params["keywords"],
        params["keywordsen"],
        params["keywordsde"],
        params["artykuly_id"],
        params["albumy_id"],
        params["dodatkowe_id"],
        params["grupy_sekcyjne_id"],
        params["banery_id"]
    ];
    return new Promise((resolve,reject) => {
        pool.query(sql,values,(error, data) => {
            if(error){
                reject(error);
            }
            resolve(data);
        })
    });
}

export const deleteInfo = (id:number) => {
    const sql = `DELETE FROM strony WHERE id = ?`;
    return new Promise((resolve, reject) => {
        pool.query(sql,[id],(error, data) => {
            if(error){
                reject(error);
            }
            resolve(data);
        })
    })
}