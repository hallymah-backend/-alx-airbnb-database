
# README – How to Seed the Database

This project uses **SQLite**.
We use two SQL files:

* **schema.sql** → creates the tables
* **seed.sql** → adds sample data into the tables

---

## 🚀 How to Set Up the Database

### 1. Open the database in VS Code

1. Create a file named **database.db** in your project folder.
2. Install the **SQLite** extension in VS Code.
3. Press **Ctrl + Shift + P** → choose **SQLite: Open Database** → select `database.db`.

---

## 📄 Run the Schema (create tables)

1. Open **schema.sql**
2. Select all the text
3. Right-click → **Run Query**

This creates the tables inside the database.

---

## 📄 Run the Seed (insert sample data)

1. Open **seed.sql**
2. Select all the text
3. Right-click → **Run Query**

This adds sample users, properties, bookings, payments, and reviews.

---

## 🧪 Test the Data

Try running:

```sql
SELECT * FROM users;
```

Or:

```sql
SELECT * FROM properties;
```

If you see rows, your database is seeded successfully.

---

## ♻️ To Reset the Database

Just run **schema.sql** and **seed.sql** again.

---

