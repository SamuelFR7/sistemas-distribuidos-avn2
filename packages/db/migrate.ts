import "dotenv/config";
import { drizzle } from "drizzle-orm/postgres-js";
import postgres from "postgres";
import { migrate } from "drizzle-orm/postgres-js/migrator";

async function main() {
  const db = drizzle(postgres(process.env.DATABASE_URL!, { max: 1 }));

  console.log("Running migrations");

  await migrate(db, { migrationsFolder: "drizzle" });

  console.log("Migrated successfully");

  process.exit(0);
}

main().catch((e) => {
  console.error("Migration failed");
  console.error(e);
  process.exit(1);
});
