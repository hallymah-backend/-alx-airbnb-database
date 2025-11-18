-- seed.sql
PRAGMA foreign_keys = ON;
BEGIN TRANSACTION;

-- Clear existing data (useful while re-seeding)
DELETE FROM reviews;
DELETE FROM payments;
DELETE FROM bookings;
DELETE FROM properties;
DELETE FROM users;

-- Insert users
INSERT INTO users (first_name, last_name, email, phone) VALUES
  ('Halimat', 'Olakitan', 'halimat@example.com', '+2347012345678'),
  ('John', 'Doe', 'john.doe@example.com', '+12025550123'),
  ('Aisha', 'Bello', 'aisha.bello@example.com', '+2348098765432'),
  ('Liam', 'Smith', 'liam.smith@example.com', NULL),
  ('Chen', 'Wang', 'chen.wang@example.com', '+8613012345678');

-- Insert properties
INSERT INTO properties (owner_id, title, description, city, price_per_night, max_guests) VALUES
  (1, 'Cozy Lagos Apartment', '1BR apartment near the beach', 'Lagos', 45.00, 2),
  (2, 'Downtown Loft', 'Spacious loft in downtown with fast Wi-Fi', 'Abuja', 80.00, 3),
  (1, 'Family House with Garden', '3BR house perfect for families', 'Lagos', 120.00, 6),
  (4, 'Mountain Cabin', 'Small wooden cabin with scenic views', 'Jos', 70.00, 4);

-- Insert bookings
-- booking 1: John books the Cozy Lagos Appartment for 3 nights
INSERT INTO bookings (property_id, user_id, start_date, end_date, total_amount, status) VALUES
  (1, 2, '2025-12-01', '2025-12-04', 45.00 * 3, 'confirmed'),
  (3, 3, '2025-11-20', '2025-11-23', 120.00 * 3, 'pending'),
  (2, 5, '2025-12-10', '2025-12-12', 80.00 * 2, 'confirmed'),
  (4, 2, '2025-12-20', '2025-12-22', 70.00 * 2, 'cancelled'),
  (1, 4, '2026-01-05', '2026-01-08', 45.00 * 3, 'pending');

-- Insert payments for confirmed bookings
INSERT INTO payments (booking_id, amount, method, status) VALUES
  (1, 135.00, 'card', 'completed'),
  (3, 160.00, 'paypal', 'completed'),
  -- booking 2 is pending, payment not made yet
  (4, 140.00, 'card', 'refunded'); -- cancelled then refunded

-- Insert reviews
INSERT INTO reviews (property_id, user_id, rating, comment) VALUES
  (1, 2, 5, 'Clean, great location and friendly host.'),
  (2, 5, 4, 'Nice loft, a little noisy at night but overall good.'),
  (3, 3, 5, 'Excellent house for our family - kids loved the garden.');

COMMIT;
