import "dotenv/config";
import { db } from "./index";
import { hotels, reservations, rooms } from "./schema";
import chalk from "chalk";
import { faker } from "@faker-js/faker";

/**
 * Reset database
 */
await db.delete(hotels);
await db.delete(rooms);
await db.delete(reservations);

console.log(chalk.yellow("✔ Database reset"));

/**
 * Create hotels
 */
const hotelsToInsert: (typeof hotels.$inferInsert)[] = [];
function createHotels(i: number) {
  if (i > 100) {
    return;
  }

  hotelsToInsert.push({
    city: faker.location.city().toUpperCase(),
    name: faker.company.name().toUpperCase(),
    createdAt: faker.date.past(),
  });

  createHotels(i + 1);
}
createHotels(0);

const insertedHotels = await db
  .insert(hotels)
  .values(hotelsToInsert)
  .returning();

console.log(chalk.yellow("✔ Hotels created"));

/**
 * Create rooms
 */
const roomsToInsert: (typeof rooms.$inferInsert)[] = [];

function createRooms(i: number) {
  if (i > 50) {
    return;
  }

  roomsToInsert.push({
    hotelId: faker.helpers.arrayElement(insertedHotels).id,
  });

  createRooms(i + 1);
}
createRooms(0);

const insertedRooms = await db.insert(rooms).values(roomsToInsert).returning();

console.log(chalk.yellow("✔ Rooms created"));

/**
 * Create reservations
 */
const reservationsToInsert: (typeof reservations.$inferInsert)[] = [];
function createReservations(i: number) {
  if (i > 100) {
    return;
  }

  const startDate = faker.date.past();
  const endDate = faker.date.soon({ refDate: startDate });
  reservationsToInsert.push({
    endDate,
    startDate,
    roomId: faker.helpers.arrayElement(insertedRooms).id,
  });

  createReservations(i + 1);
}
createReservations(0);

await db.insert(reservations).values(reservationsToInsert);

console.log(chalk.yellow("✔ Reservations created"));

console.log(chalk.green("✔ Database seeded"));

process.exit(0);
