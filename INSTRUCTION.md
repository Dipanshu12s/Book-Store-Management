# Bookstore Management Project - Instructions

## Introduction

This document provides step-by-step instructions to set up and run the Bookstore Management Project, which consists of SQL scripts to create and manage a bookstore database.


## Setup Instructions

1. **Create Database**
   - Create a database named `project`.
   - Example SQL command:
     ```
     CREATE DATABASE project;
     USE project;
     ```

2. **Run the SQL Script**
   - Execute the `Book Store Management ` script provided in this repository.
   - This script will:
     - Drop existing tables `Books`, `Customers`, and `Orders` if they exist.
     - Create new tables with appropriate columns and foreign key relationships.
     - Include sample queries for data retrieval and analysis.

3. **Verify Tables**
   - Check if the tables are created successfully:
     ```
     SHOW TABLES;
     ```
   - Verify tables: `Books`, `Customers`, and `Orders` should be listed.

## Using the Queries

The script contains various example SELECT queries to perform common operations and extract insights:

- Retrieve all books in the "Fiction" genre.
- Find books published after 1950.
- List customers from Canada.
- Show orders placed in a given year.
- Identify the most expensive and lowest stock books.
- Find customers who ordered more than one quantity.
- Calculate total stock and total revenue.
- Find average book prices within a genre.
- Identify the most frequently ordered book.

You can run these queries individually in your database client to explore the data.

## Important Notes

- **Foreign Key Correction**  
  The column `Custoner_ID` in the `Orders` table has a typo. Please rename it to `Customer_ID` to match the foreign key constraint correctly.

- **Data Insertion**  
  Add INSERT statements as needed to populate data for testing.But in this project after creating table i inserted data via Table Data Import Wizrad.


## Extending the Project

- Add more detailed reporting queries.
- Include stored procedures or triggers for automated tasks.
- Develop views for common data summaries.




