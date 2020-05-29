/*
Kristofer Hughes
CSC 355 Section 402 
Assignment 3
October 4th, 2019 
*/

/*
Query 1
*/

SELECT NAME, CITY, STATE 
FROM LIBRARY 
WHERE STATE = 'NJ' OR STATE = 'PA'
Group by Name, City, State; 

/*
Query 2
*/

SELECT NAME
FROM LIBRARY 
WHERE NAME LIKE '%Main%'
ORDER BY NAME ASC;

/*
Query 3
*/

Select Title, Year, Price 
from BOOK 
WHERE Author = 'Allen Steele' AND Year <= 2010
ORDER BY Year DESC;

/*
Query 4
*/

Select Author, AVG(Price)
from BOOK 
GROUP BY Author
ORDER BY AVG(Price) ASC;

/*
Query 5
*/

Select Count(Title), Year
from BOOK 
GROUP BY Year
ORDER BY Year ASC;

/*
Query 6
*/

Select LIBRARYID, MIN(Copies)
from BOOKORDER
GROUP BY LIBRARYID;

/*
Query 7
*/

Select NAME
from LIBRARY INNER JOIN BOOKORDER ON LIBRARY.ID = BOOKORDER.LIBRARYID
WHERE BOOKORDER.ORDERDATE = '15-FEB-18';

/*
Query 8
*/

Select TITLE
from BOOK INNER JOIN BOOKORDER ON BOOK.ISBN = BOOKORDER.ISBN
join Library on Bookorder.libraryid = Library.id
WHERE Library.name = 'Main Library of Seminole'
order by Title ASC;

/*
Query 9
*/

Select bookorder.ISBN, TITLE, sum(copies) as Copies
from BOOK INNER JOIN BOOKORDER ON BOOK.ISBN = BOOKORDER.ISBN
WHERE Year = 2008
group by bookorder.isbn, title;


/*
Query 10
*/

Select id, SUM(copies) as Copies,  COUNT(ORDERID) as ORDERS
from LIBRARY inner JOIN BOOKORDER ON LIBRARY.ID = BOOKORDER.LIBRARYID
GROUP by id
order by ORDERS desc;