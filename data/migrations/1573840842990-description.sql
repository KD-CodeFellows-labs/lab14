
-- * Query 1: Creates bookshelves table in database with an column set to be 'id' and primary key, and a column set to be 'name' and a VARCHAR.
`CREATE TABLE BOOKSHELVES (id SERIAL PRIMARY KEY, name VARCHAR(255));`
-- * Verify with: `\d bookshelves`


-- * Query 2: Get the values from books for bookshelf column and inserts into the bookshelves tables name column.
`INSERT INTO bookshelves(name) SELECT DISTINCT bookshelf FROM books;`
-- * Verify with: `SELECT COUNT(*) FROM bookshelves;`


-- * Query 3: Add bookshelf_id to books, this will connect the two tables.
`ALTER TABLE books ADD COLUMN bookshelf_id INT;`
-- * Verify with: `\d books`


-- * Query 4: Sets the bookshelf_id in books to equal the id from the bookshelves table where books and bookshelves are equal for name and bookshelf columns.
`UPDATE books SET bookshelf_id=shelf.id FROM (SELECT * FROM bookshelves) AS shelf WHERE books.bookshelf = shelf.name;`
-- * Verify with: `SELECT bookshelf_id FROM books;`
-- `SELECT COUNT(*) FROM bookshelves;`


-- * Query 5: Removes the column bookshelf from the books table.
`ALTER TABLE books DROP COLUMN bookshelf;`
-- * Verify with: `\d books`


-- * Query 6: Sets the bookshelf_id in books as a foreign key to the bookshelves table, connecting the two tables together.
`ALTER TABLE books ADD CONSTRAINT fk_bookshelves FOREIGN KEY (bookshelf_id) REFERENCES bookshelves(id);`
-- * Verify with: `\d books`

-- SELECT id,bookshelf_id FROM books;