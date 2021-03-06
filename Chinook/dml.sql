USE chinook;
# 1. How many songs are there in the playlist “Grunge”?
SELECT COUNT(*) AS numberOfSongs FROM playlisttrack WHERE PlaylistId = (SELECT playlist.PlaylistId FROM playlist WHERE Name = 'Grunge');

# 2. Show information about artists whose name includes the text “Jack”
# and about artists whose name includes the text “John”, but not the text “Martin”.


# 3. For each country where some invoice has been issued, show the total invoice monetary amount,
# but only for countries where at least $100 have been invoiced. Sort the information from higher to lower monetary amount.

# 4. Get the phone number of the boss of those employees who have given support to clients
# who have bought some song composed by “Miles Davis” in “MPEG Audio File” format.

# 5. Show the information, without repeated records, of all albums that feature songs of the “Bossa Nova” genre
# whose title starts by the word “Samba”.

# 6. For each genre, show the average length of its songs in minutes (without indicating seconds).
# Use the headers “Genre” and “Minutes”, and include only genres that have any song longer than half an hour.

# 7. How many client companies have no state?

# 8. For each employee with clients in the “USA”, “Canada” and “Mexico”
# show the number of clients from these countries s/he has given support,
# only when this number is higher than 6. Sort the query by number of clients.
# Regarding the employee, show his/her first name and surname separated by a space.
# Use “Employee” and “Clients” as headers.


# 9. For each client from the “USA”, show his/her surname and name (concatenated and separated by a comma)
# and their fax number. If they do not have a fax number, show the text “S/he has no fax”. Sort by surname and first name.

SELECT CONCAT(LastName, ' ', FirstName) AS Name, IFNULL(Fax, 'S/he has no fax') 'fax' FROM customer WHERE country = 'USA' ORDER BY Name;

# 10. For each employee, show his/her first name, last name, and their age at the time they were hired.