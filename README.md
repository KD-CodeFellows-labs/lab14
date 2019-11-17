# lab14
Lab 14: Database Normalization

Number and name of feature: ____Database Setup______

Estimate of time needed to complete: __15 min__

Start time: _9:05_

Finish time: _9:30____

Actual time needed to complete: __25 min___

- `CREATE DATABASE lab14;`
- `psql -f /data/schema.sql -d lab14`
- `SELECT COUNT(*) FROM books;`
- `CREATE DATABASE lab14_normal WITH TEMPLATE lab14;`

Number and name of feature: ____Database Migration______

Estimate of time needed to complete: __30 min__

Start time: _9:32_

Finish time: _9:57____

Actual time needed to complete: __25 min ___

## See 1573840842990-description.sql for information

Number and name of feature: ____Addition of a migrations folder______

Estimate of time needed to complete: __30 min__

Start time: _9:57_

Finish time: _10:27 ____

Actual time needed to complete: __30 min ___


SELECT title, author, name FROM books JOIN bookshelves ON bookshelves.id = books.bookshelf_id;

           title            |          author           |     name      
----------------------------+---------------------------+---------------
|Dune                       | Frank Herbert             | Fantasy
|The Fellowship of the Ring | John Ronald Reuel Tolkien | Fantasy
|The Boys in the Boat       | Daniel James Brown        | Inspirational
|The New Jim Crow           | Michelle Alexander        | Culture
|The Stand                  | Stephen King              | Drama
|Unsouled                   | Will Wight                | SciFi
|Sweet Thursday             | John Steinbeck            | Classics
|The Great Gatsby           | Francis Scott Fitzgerald  | Classics
|Animal Farm                | George Orwell             | Satire
|What Alice Forgot          | Liane Moriarty            | Fiction
----------------------------+---------------------------+---------------
(10 rows)

