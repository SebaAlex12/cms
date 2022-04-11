import { Request, Response } from "express";

import { getProducts } from '../models/products';

const getProductsController = async (req:Request, res:Response) => {
    try{
        const products = await getProducts();
        if(products){
            res.json(products);
        }
    }catch(error){
        console.log('error',error);
    }
}

export default{
    getProductsController
};