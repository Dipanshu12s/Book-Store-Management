
show databases;

use project;
show tables;


drop table if exists Books;
drop table if exists Customers;
drop table if exists Orders;

create table Books(
Book_ID Serial primary key,
Title varchar(46),
Author varchar(23),
Genre varchar(23),
Published_Year date,
Price decimal(10,2),
Stock int
);

Create table Customers(
Customer_ID serial primary key,
Name varchar(18),
Email varchar(18),
Phone int,
City varchar(19),
Country Varchar(18)
);

create table Orders(
Order_ID serial primary key,
Custoner_ID int references Customers (customer_ID),
Book_ID int references Books (Book_ID),
Order_Date date,
Quantity int,
Total_Amount decimal(20,2)
);


select * from Books;
select * from Orders;
select * from Customers;


# Retrieve all books in the "fiction" genre
Select Book_Id,Title,Genre from Books
where Genre="Fiction";

# find books published after the year 1950
select Book_ID,Title from Books
where Published_year>1950;

# list all customers from the Canada
select Customer_Id,Name,Email,Phone,City,Country from Customers
Where country="Canada";

# show orders placed in november 2023
select Order_ID,Customer_ID,Book_ID,Order_Date,Quantity,Total_Amount
from Orders
where Year(Order_date)=2023;

# retrieve the total stock of books available
select sum(stock) as Total_Stock from Books;

# find the details of the most expensive book
select Book_ID,Title,Author,Genre,Published_Year,Price,Stock
from Books
order by price desc limit 1;

# show all customers who ordered more than 1 quantity of a book
select c.customer_ID,c.Name,c.phone,c.city,o.quantity
from customers as c left join orders as o on c.customer_ID= O.Customer_ID
where Quantity>1;

# list all genre available in the books table
select distinct genre
from books;

# find the book with the lowest stock 
select Book_ID, Title,Author,Published_Year,Price,Stock
from books
where stock=0
order by stock asc ;

# calculate the total revenue generated from orders
select sum(total_amount) as Total_Revenue from orders;


# retrieve the total no. of books sold for each group
select genre, count(title) as Total_Books
from books
group by genre
order by Total_Books;

# find the average price of books in the "Fiction" genre
select avg(price) Average_Price
from books
where genre="Fiction";


# list customers who haved placed at least 2 orders
select c.customer_id,c.Name,count(o.order_id)
from customers as c left join orders as o 
on c.customer_id=o.customer_id
group by customer_id
having count(O.order_id)>=2;



# find the most frequently ordered book
select B.book_id,B.Title ,sum(o.quantity) as Total_Number
from books as b join orders as o
on b.book_id=o.book_id
group by book_id,title
order by Total_Number desc limit 1 ;


#  show the top 3 most expesnive books of "Fantasy" genre
select Book_ID,Title,Author,Genre,Published_Year,Price
from books
where genre="Fantasy"
Order by price  desc limit 3;


# retrieve the total quantity of books sold by each author
select b.author,sum(o.quantity) as Total_Quantity
from books as b left join orders as o on b.Book_Id=o.Book_ID
where o.Quantity >=0
group by b.author;


# list the cities  where customers who spend over $30 are local
select c.City,o.Total_amount
from customers as a left join orders as o on c.customer_ID=o.Customer_ID
where total_amount>30
group by City;


# calculate the stock remaining afer fulfilling all orders
select sum(b.stock)-sum(o.quantity) as Remaining_Stock
from books as b inner join orders as o
on b.book_id=o.book_id;