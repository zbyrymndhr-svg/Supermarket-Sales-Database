# Supermarket Sales Database (My First SQL Milestone) 🛒

## Project Overview
This repository contains my very first hands-on project in Database Engineering. It marks the beginning of my SQL journey, where I designed and implemented a relational database from scratch using PostgreSQL to manage core supermarket operations, specifically tracking product inventory and processing daily sales transactions.

## Tech Stack & Core Skills Learnt 🛠️
* Database Management System: PostgreSQL
* SQL Foundations: Data Definition Language (DDL) & Data Manipulation Language (DML).
* Key Concepts Implemented: Primary keys, Foreign keys, Data normalization, and relational structuring.

## Database Schema & Core Architecture
The project establishes a solid relational link between store products and customer sales to prevent redundancy and maintain data integrity:
* Products Schema: Handles tracking of item identification, descriptive names, categorized departments, and unit pricing.
* Sales Transactions: Records structural details of sales events, quantifying bought items, linking them back to products via unique relational identifiers (product_id), and tracking transaction times.

## Hands-On Query Showcase 📊
To validate the architecture, I wrote analytical queries focused on measuring product performance and stock tracking:

### 1. Generating Total Sales Revenue per Product
`sql
SELECT 
    p.product_name,
    SUM(s.quantity) AS total_units_sold,
    SUM(s.quantity * s.unit_price) AS total_revenue
FROM sales s
JOIN products p ON s.product_id = p.id
GROUP BY p.product_name
ORDER BY total_revenue DESC;
