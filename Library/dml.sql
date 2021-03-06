USE library;

# 1. Show the members under the name "Jens S." who were born before 1970 that became members of the library in 2013.
SELECT * FROM tmember WHERE cName = 'Jens S.' AND dBirth < '1970-01-01' AND dNewMember LIKE '2013%';

## 2. Show those books that have not been published by the publishing companies with ID 15 and 32, except if they were published before 2000.
SELECT * FROM tbook WHERE nPublishingCompanyID NOT IN (15,32);

# 3. Show the name and surname of the members who have a phone number, but no address.
SELECT tmember.cName, tmember.cSurname FROM tmember WHERE cPhoneNo IS NOT NULL AND cAddress IS NULL;

# 4. Show the authors with surname "Byatt" whose name starts by an "A" (uppercase) and contains an "S" (uppercase).
SELECT * FROM tauthor WHERE cSurname LIKE 'Byatt' AND cName LIKE 'A%S%';

# 5. Show the number of books published in 2007 by the publishing company with ID 32.
SELECT Count(*) AS 'Number of books' FROM tbook WHERE nPublishingYear = 2007 AND nPublishingCompanyID = 32;

# 6. For each day of the year 2014, show the number of books loaned by the member with CPR "0305393207";
SELECT dLoan, COUNT(dLoan) AS Loans FROM tloan WHERE cCPR = '0305393207' AND dLoan LIKE '2014%' GROUP BY dLoan ORDER BY dLoan;

## 7. Modify the previous clause so that only those days where the member was loaned more than one book appear.
SELECT dLoan, COUNT(dLoan) AS Loans FROM tloan WHERE cCPR = '0305393207' AND dLoan LIKE '2014%' GROUP BY dLoan ORDER BY dLoan;

# 8. Show all library members from the newest to the oldest. Those who became members on the same day will be sorted alphabetically (by surname and name) within that day.
SELECT * FROM tmember ORDER BY dNewMember DESC, cSurname,cName;

#9.	Show the title of all books published by the publishing company with ID 32 along with their theme or themes.
SELECT tbook.ctitle, ttheme.cName FROM tbook, tbooktheme, ttheme WHERE nPublishingCompanyID = 32 AND tbook.nBookID = tbooktheme.nBookID AND tbooktheme.nThemeID = ttheme.nThemeID;

#10.	Show the name and surname of every author along with the number of books authored by them, but only for authors who have registered books on the database.

#11.	Show the name and surname of all the authors with published books along with the lowest publishing year for their books.

#12.	For each signature and loan date, show the title of the corresponding books and the name and surname of the member who had them loaned.

#13.	Repeat exercises 9 to 12 using the modern JOIN notation.

#14.	Show all theme names along with the titles of their associated books. All themes must appear (even if there are no books for some particular themes). Sort by theme name.

#15.	Show the name and surname of all members who joined the library in 2013 along with the title of the books they took on loan during that same year. All members must be shown, even if they did not take any book on loan during 2013. Sort by member surname and name.

#16.	Show the name and surname of all authors along with their nationality or nationalities and the titles of their books. Every author must be shown, even though s/he has no registered books. Sort by author name and surname.

#17.	Show the title of those books which have had different editions published in both 1970 and 1989.

#18.	Show the surname and name of all members who joined the library in December 2013 followed by the surname and name of those authors whose name is ???William???.

#19.	Show the name and surname of the first chronological member of the library using subqueries.

#20.	For each publishing year, show the number of book titles published by publishing companies from countries that constitute the nationality for at least three authors. Use subqueries.

#21.	Show the name and country of all publishing companies with the headings "Name" and "Country".

#22.	Show the titles of the books published between 1926 and 1978 that were not published by the publishing company with ID 32.

#23.	Show the name and surname of the members who joined the library after 2016 and have no address.

#24.	Show the country codes for countries with publishing companies. Exclude repeated values.

#25.	Show the titles of books whose title starts by "The Tale" and that are not published by "Lynch Inc".

#26.	Show the list of themes for which the publishing company "Lynch Inc" has published books, excluding repeated values.

#27.	Show the titles of those books which have never been loaned.

#28.	For each publishing company, show its number of existing books under the heading "No. of Books".

#29.	Show the number of members who took some book on a loan during 2013.

#30.	For each book that has at least two authors, show its title and number of authors under the heading "No. of Authors".




