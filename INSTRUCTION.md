# Bookstore Management Project - Instructions

## Introduction

This document provides step-by-step instructions to set up and run the Bookstore Management Project, which consists of SQL scripts to create and manage a bookstore database.

## Prerequisites

- A running SQL server (MySQL, PostgreSQL, or compatible)
- Basic knowledge of SQL commands and database management
- Access to a database client or interface to run SQL scripts

## Setup Instructions

1. **Create Database**
   - Create a database named `project`.
   - Example SQL command:
     ```
     CREATE DATABASE project;
     USE project;
     ```

2. **Run the SQL Script**
   - Execute the `Project-file-1.sql` script provided in this repository.
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
  Current scripts do not include sample data. Add INSERT statements as needed to populate data for testing.

- **Performance**  
  Consider adding indexes on frequently queried columns like `Book_ID`, `Customer_ID`, and `Genre` for improved query speed.

## Extending the Project

- Add more detailed reporting queries.
- Include stored procedures or triggers for automated tasks.
- Develop views for common data summaries.
- Integrate with frontend applications or BI tools like Power BI.




