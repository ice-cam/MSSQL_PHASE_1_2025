-- Retrieve all books along with their authors and categories
SELECT b.Title, a.AuthorName, c.CategoryName
FROM Books b
JOIN Authors a ON b.AuthorID = a.AuthorID
JOIN Categories c ON b.CategoryID = c.CategoryID;

-- Find books that are out of stock
SELECT Title FROM Books WHERE StockQuantity = 0;

-- Total revenue from all orders
SELECT SUM(od.Quantity * b.Price) AS TotalRevenue
FROM OrderDetails od
JOIN Books b ON od.BookID = b.BookID;

-- Number of books available in each category
SELECT c.CategoryName, SUM(b.StockQuantity) AS TotalBooks
FROM Books b
JOIN Categories c ON b.CategoryID = c.CategoryID
GROUP BY c.CategoryName;

-- List all orders along with customer name, order date, book titles, and quantity ordered
SELECT o.CustomerName, o.OrderDate, b.Title, od.Quantity
FROM Orders o
JOIN OrderDetails od ON o.OrderID = od.OrderID
JOIN Books b ON od.BookID = b.BookID;