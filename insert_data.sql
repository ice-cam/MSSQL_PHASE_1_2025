-- Authors
INSERT INTO Authors VALUES (1, 'Author A'), (2, 'Author B'), (3, 'Author C'), (4, 'Author D'), (5, 'Author E');

-- Categories
INSERT INTO Categories VALUES (1, 'Science'), (2, 'Fiction'), (3, 'Non-Fiction'), (4, 'Biography'), (5, 'Technology');

-- Books
INSERT INTO Books VALUES 
(1, 'Book 1', 1, 1, 15.99, 10),
(2, 'Book 2', 2, 2, 12.50, 0),
(3, 'Book 3', 3, 3, 20.00, 5),
(4, 'Book 4', 4, 4, 25.00, 2),
(5, 'Book 5', 5, 5, 18.75, 7);

-- Orders
INSERT INTO Orders VALUES 
(1, 'Customer 1', '2024-01-01'),
(2, 'Customer 2', '2024-01-02'),
(3, 'Customer 3', '2024-01-03');

-- Order Details
INSERT INTO OrderDetails VALUES 
(1, 1, 1, 2),
(2, 2, 3, 1),
(3, 3, 4, 3);