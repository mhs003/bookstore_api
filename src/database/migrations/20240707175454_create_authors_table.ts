import type { Knex } from "knex";

const tableName: string = "authors";

export async function up(knex: Knex): Promise<void> {
    await knex.schema.createTable(
        tableName,
        (table: Knex.CreateTableBuilder) => {
            table.increments("id").primary();
            table.string("name").notNullable();
            table.text("bio").nullable();
            table.date("birthdate").notNullable();
            table.timestamps(true, true);
        }
    );
}

export async function down(knex: Knex): Promise<void> {
    await knex.schema.dropTable(tableName);
}
