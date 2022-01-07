import express,{ Application, Request, Response } from "express";
import http from "http";
import cors from 'cors';

/* routes */
import infosRoutes from "./routes/infos";

const app: Application = express();
const port: number | string = process.env.PORT || 5000;

app.use(cors());

app.use(express.json()); 
app.use(express.urlencoded()); //Parse URL-encoded bodies

app.get('/',(req: Request, res: Response) => {
    res.send("root");
});

app.use(infosRoutes);

const server = http
  .createServer(app)
  .listen(port, () => console.log(`server running on port ${port}`));