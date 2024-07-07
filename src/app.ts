import express, { Request, Response } from "express";
import bodyParser from "body-parser";
import cors from "cors";

const app = express();

app.use(bodyParser.json());
app.use(cors());

const PORT: number = Number(process.env.PORT) || 3001;

app.get("/", (req: Request, res: Response) => {
    res.send("Hello, TypeScript + Node.js + Express!");
});

app.listen(PORT, () => {
    console.log(`Server is running on http://localhost:${PORT}`);
});
