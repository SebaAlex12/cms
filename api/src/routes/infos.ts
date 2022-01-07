import express from "express";
import controllers from "../controllers/infos";

const router = express.Router();

router.get('/infos', controllers.getInfosController);
router.post('/info/insert', controllers.insertInfoController);
router.post('/info/id', controllers.getInfoByIdController);
router.post('/info/update/id', controllers.updateInfoByIdController);
router.post('/info/delete/id', controllers.deleteInfoController);

export default router;