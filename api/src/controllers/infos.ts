import { Request, Response } from "express";

import { getInfos, getInfoById, updateInfoById, insertInfo, deleteInfo } from '../models/infos';
import { upload, resize } from '../utils/filesManager';

const getInfosController = async (req:Request, res:Response) => {
    try{
        const infos = await getInfos();
        if(infos){
            res.json(infos);
        }
    }catch(error){
        console.log('error',error);
    }
}

const getInfoByIdController = async (req:Request, res:Response) => {
    const { id } = req.body;
    try{
        const info = await getInfoById(id);
        if(info){
            res.json(info);
        }
    }catch(error){
        console.log('error',error);
    }
}

const updateInfoByIdController = async (req:Request, res:Response) => {
    const { data:{ id }, data } = req.body;
    try{
        const info = await updateInfoById(id, data);
        if(info){
            const info = await getInfoById(id);
            res.json(info);
        }
    }catch(error){
        console.log('error',error);
    }
}

const insertInfoController = async (req:Request, res:Response) => {
    const { data } = req.body;
    try{
        const info:any = await insertInfo(data);
        if(info){
            const insertedInfo = await getInfoById(info.insertId);
            res.json(insertedInfo);
        }
    }catch(error){
        console.log('error',error);
    }
}

const deleteInfoController = async(req:Request, res:Response) => {
    const { id } = req.body;
    try{
        const info:any = await deleteInfo(id);
        if(info){
            res.json({id:id});
        }

    }catch(error){
        console.log('error',error);
    }
}

export default { 
    getInfosController, 
    getInfoByIdController, 
    updateInfoByIdController, 
    insertInfoController,
    deleteInfoController
};