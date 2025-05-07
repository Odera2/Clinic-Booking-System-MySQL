# Clinic Booking System (MySQL Project)

## Project Overview

This is a complete relational database system designed for managing a small clinic's operations. The system handles patient records, doctor schedules, appointment bookings, treatment records, and billing details. It uses only MySQL and demonstrates the use of constraints, normalization, and real-world relationships between tables.

## Features

- Register patients and doctors
- Book appointments between patients and doctors
- Record treatments and costs
- Generate bills with payment status
- Ensures data integrity through foreign keys, constraints, and ENUMs

## Database Structure

- `patients`: Stores patient details
- `doctors`: Stores doctor profiles and specialties
- `appointments`: Links patients with doctors
- `treatments`: Stores treatment details linked to appointments
- `bills`: Billing and payment information per appointment

## Relationships

- A **patient** can have many **appointments**
- A **doctor** can attend many **appointments**
- Each **appointment** can have one **treatment**
- Each **appointment** generates one **bill**

## How to Run This Project

1. Clone this repository
2. Import the `clinic_system.sql` file into your MySQL database:
   ```bash
   mysql -u your_user -p < clinic_system.sql
   ```
3. Use the `clinic_db` database:
   ```sql
   USE clinic_db;
   ```
4. You're ready to query the system!

## Entity Relationship Diagram (ERD)

You can view the ERD via diagrams.net or download the PNG and `.drawio` files here:

- ![ERD Diagram](./ERD.png)
- [Open with diagrams.net](https://www.diagrams.net)

## Author

**Stanly Odera**  
University of Nairobi | BSc Economics  
2025 PLP Program | SQL & Web Dev Track

