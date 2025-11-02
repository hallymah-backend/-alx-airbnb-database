# Airbnb Database Schema

## Overview
This project defines the SQL schema for an Airbnb-like application.  
It includes tables for **User**, **Property**, **Booking**, **Payment**, **Review**, and **Message**, all designed in **Third Normal Form (3NF)** to ensure data integrity and avoid redundancy.

## Files
- `schema.sql` – Contains all `CREATE TABLE` statements, constraints, and indexes.  
- `normalization.md` – Explains how normalization to 3NF was achieved.  
- `airbnb_erd.png` – Visual representation of the database.  
- `requirements.md` – Lists entities and relationships.

## Usage
Run the schema file in your SQL environment:
```bash
psql -U <username> -d airbnb_db -f schema.sql
