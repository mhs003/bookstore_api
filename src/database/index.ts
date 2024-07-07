/* eslint-disable import/first */
// eslint-disable-next-line
const configs = require("../knexfile");

import Knex from "knex";

export const database = Knex(configs[process.env.NODE_ENV || "development"]);
