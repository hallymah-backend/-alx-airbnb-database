# Database Normalization (Airbnb Database)

## Objective
To ensure the Airbnb database follows **Third Normal Form (3NF)** by eliminating redundancy and improving data integrity.

---

## Normalization Summary

### **1NF**
- All tables have atomic values (no repeating groups).
- Each record is unique (identified by a primary key).

### **2NF**
- Every non-key attribute fully depends on its table’s primary key.
- No partial dependencies in any table.

### **3NF**
- No transitive dependencies (non-key attributes depend only on the primary key).

---

## Table Review

| Table | Primary Key | Normalization Status |
|--------|--------------|----------------------|
| **User** | user_id | ✅ In 3NF |
| **Property** | property_id | ✅ In 3NF *(optional: move location to a separate table)* |
| **Booking** | booking_id | ✅ In 3NF |
| **Payment** | payment_id | ✅ In 3NF |
| **Review** | review_id | ✅ In 3NF |
| **Message** | message_id | ✅ In 3NF |

---

## Notes
- ENUM fields (like `role`, `status`, `payment_method`) can be stored in lookup tables for flexibility.
- Consider a separate **Location** table to avoid repeating city/country data.
- The database now meets **Third Normal Form (3NF)** standards.

✅ **Result:**  
A clean, efficient, and non-redundant Airbnb database design.
