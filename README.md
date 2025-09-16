# Bookstore Management Project

## Overview

This project contains SQL scripts for managing a bookstore database. It includes the creation and management of three main tables: **Books**, **Customers**, and **Orders**. The script demonstrates basic database operations such as table creation, data querying, and business reporting.

## Database Structure

- **Books**: Contains details about books including Book ID, Title, Author, Genre, Published Year, Price, and Stock.
- **Customers**: Records customer information such as Customer ID, Name, Email, Phone, City, and Country.
- **Orders**: Tracks book orders made by customers including Order ID, Customer ID, Book ID, Order Date, Quantity, and Total Amount.

## Features

- Creation of tables with foreign key constraints to ensure data integrity.
- Sample SQL queries to:
  - Retrieve all fiction books.
  - List books published after 1950.
  - Find customers from specific countries.
  - Display orders from a specific year.
  - Identify the most expensive and lowest stock books.
  - List customers who have placed multiple orders.
- Aggregate queries for total stock, total revenue, average prices by genre, and total quantity sold by each author.
- Use of JOIN operations to derive meaningful business insights.

## Usage

1. Clone or download this repository.
2. Set up an SQL server with a database named `project`.
3. Run the `Project-file-1.sql` script to create the database tables and apply structure changes.
4. Execute the provided SELECT queries to analyze the bookstore data.






