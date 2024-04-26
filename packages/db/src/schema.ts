import { date, pgTable, timestamp, varchar } from "drizzle-orm/pg-core";
import { createId } from "@paralleldrive/cuid2";
import { relations } from "drizzle-orm";

export const hotels = pgTable("hotels", {
  id: varchar("id", { length: 255 })
    .notNull()
    .primaryKey()
    .$defaultFn(() => createId()),
  name: varchar("name", { length: 100 }).notNull(),
  city: varchar("city", { length: 100 }).notNull(),
  createdAt: timestamp("created_at").notNull().defaultNow(),
  updatedAt: timestamp("updated_at"),
});

export const hotelsRelations = relations(hotels, ({ many }) => ({
  rooms: many(rooms),
}));

export const rooms = pgTable("rooms", {
  id: varchar("id", { length: 255 })
    .notNull()
    .primaryKey()
    .$defaultFn(() => createId()),
  hotelId: varchar("hotel_id", { length: 255 })
    .notNull()
    .references(() => hotels.id, {
      onDelete: "cascade",
      onUpdate: "cascade",
    }),
});

export const roomsRelations = relations(rooms, ({ many, one }) => ({
  hotel: one(hotels, {
    fields: [rooms.hotelId],
    references: [hotels.id],
  }),
  reservations: many(reservations),
}));

export const reservations = pgTable("reservations", {
  id: varchar("id", { length: 255 })
    .notNull()
    .primaryKey()
    .$defaultFn(() => createId()),
  roomId: varchar("room_id", { length: 255 })
    .notNull()
    .references(() => rooms.id, {
      onDelete: "cascade",
      onUpdate: "cascade",
    }),
  email: varchar("email", { length: 255 }),
  startDate: date("start_date").notNull(),
  endDate: date("end_date").notNull(),
});

export const reservationsRelations = relations(reservations, ({ one }) => ({
  room: one(rooms, {
    fields: [reservations.roomId],
    references: [rooms.id],
  }),
}));
