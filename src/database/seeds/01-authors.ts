import { Knex } from "knex";
import { faker } from "@faker-js/faker";
import IAuthor from "../interfaces/author.interface";

const tableName: string = "authors";

export async function seed(knex: Knex): Promise<void> {
    // Deletes ALL existing entries
    await knex(tableName).del();

    const authors: Array<IAuthor> = Array(10)
        .fill(null)
        .map((_, index: number) => {
            return {
                id: index + 1,
                name: faker.person.firstName() + " " + faker.person.lastName(),
                bio: faker.lorem.paragraph(5),
                birthdate: faker.date.past(),
            };
        });

    // Inserts seed entries
    await knex(tableName).insert(authors);
}
