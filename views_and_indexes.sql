-- Create a view for top-selling books
CREATE VIEW TopSellingBooks AS
SELECT b.Title, SUM(od.Quantity) AS TotalQuantitySold
FROM OrderDetails od
JOIN Books b ON od.BookID = b.BookID
GROUP BY b.Title
ORDER BY TotalQuantitySold DESC
LIMIT 5;

-- Stored procedure to get books by a specific author
DELIMITER $$
CREATE PROCEDURE GetBooksByAuthor(IN AuthorID INT)
BEGIN
    SELECT Title FROM Books WHERE AuthorID = AuthorID;
END $$
DELIMITER ;

-- Create an index on the Title column for optimized search
CREATE INDEX idx_book_title ON Books (Title);