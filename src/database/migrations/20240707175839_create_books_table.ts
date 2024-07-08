import type { Knex } from "knex";

const tableName = "books";

export async function up(knex: Knex): Promise<void> {
    await knex.schema.createTable(tableName, (table) => {
        table.increments("id").primary();
        table.string("title").notNullable();
        table.text("description").nullable();
        table.date("published_date").notNullable();
        table.integer("author_id").unsigned().notNullable();
        table.timestamps(true, true);

        // foreign keys
        table.foreign("author_id").references("id").inTable("authors");
    });
}

export async function down(knex: Knex): Promise<void> {
    await knex.schema.dropTable(tableName);
}
