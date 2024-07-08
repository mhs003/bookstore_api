import { Knex } from "knex";
import IBook from "../interfaces/books.interface";
import { faker } from "@faker-js/faker";

const tableName: string = "books";

export async function seed(knex: Knex): Promise<void> {
    // Deletes ALL existing entries
    await knex(tableName).del();

    const authors = await knex("authors").select("id");

    const faker_books: Array<IBook> = authors.map((author, index: number) => {
        return {
            id: index + 1,
            title: faker.lorem.paragraph(1),
            description: faker.lorem.paragraph(5),
            published_date: faker.date.past(),
            author_id: author.id,
        };
    });

    // Inserts seed entries
    await knex(tableName).insert(faker_books);
}
