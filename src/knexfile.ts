import dotenv from "dotenv";
dotenv.config();

import { Knex } from "knex";

const environments: string[] = ["development", "staging", "production"];

const connection: Knex.ConnectionConfig = {
    host: process.env.DB_HOST as string,
    database: process.env.DB_NAME as string,
    user: process.env.DB_USER as string,
    password: process.env.DB_PASS as string,
};

const commonConfig: Knex.Config = {
    client: "mysql",
    connection,
    pool: {
        min: 2,
        max: 10,
    },
    migrations: {
        tableName: "_migrations",
        directory: "database/migrations",
        loadExtensions: [".ts", ".js"],
    },
    seeds: {
        directory: "database/seeds",
        loadExtensions: [".ts", ".js"],
    },
};

export default Object.fromEntries(
    environments.map((env: string) => [env, commonConfig])
);
