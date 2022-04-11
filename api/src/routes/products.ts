import express from "express";
import controllers from "../controllers/products";

const router = express.Router();

router.get('/products', controllers.getProductsController);

export default router;