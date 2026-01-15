-- retrieve all the information from the cd.facilities
SELECT * FROM cd.facilities

-- retrieve only facility names and costs
SELECT name, membercost FROM cd.facilities

-- A list of facilities that charge a fee to members?
SELECT * FROM cd.facilities
WHERE membercost > 0

-- A list of facilities that charge a fee to members, 
-- and that fee is less than 1/50th of the monthly maintenance cost.
-- return the facid, facility name, member cost, and monthly maintenance
SELECT facid, name, membercost, monthlymaintenance FROM cd.facilities
WHERE membercost > 0 AND membercost < monthlymaintenance / 50

-- produce a list of all facilities with the word 'Tennis'
SELECT * FROM cd.facilities
WHERE name LIKE '%Tennis%'

-- retrieve the details of facilities with ID 1 and 5? DO not use OR operator.
SELECT * FROM cd.facilities
WHERE facid in (1,5)

-- produce a list of members who joined after the start of September 2012?
SELECT memid, surname, firstname, joindate FROM cd.members
WHERE joindate >= '2012-09-01'

-- produce an ordered list of the first 10 surnames in the members table? Do not contain duplicates
SELECT DISTINCT(surname) FROM cd.members
ORDER BY surname
LIMIT 10

-- retrieve the signup date of your last member?
SELECT MAX(joindate) FROM cd.members

-- produce a count of the number of facilities that have a cost to guest of 10 or more.
SELECT COUNT(guestcost) FROM cd.facilities
WHERE guestcost >= 10

-- produce a list of the total number of slots booked per facility int he month of September 2012. produce an output table consisting of facility id and slots, sorted by the number of slots.
SELECT facid, SUM(slots) AS total_slots FROM cd.bookings
WHERE starttime >= '2012-09-01' AND starttime < '2012-10-01'
GROUP BY facid
ORDER BY SUM(slots)

-- produce a list of facilities with more than 1000 slots booked. Produce an output table consisting of facility id and total slots, sorted by facility id.
SELECT facid, SUM(slots) AS total_slots FROM cd.bookings
GROUP BY facid
HAVING SUM(slots) > 1000
ORDER BY facid

-- How can you produce a list of the start times for bookings for tennis courts, for the date '2012-09-21'? Return a list of start time and facility name pairings, ordered by the time.
SELECT starttime, name FROM cd.bookings b
JOIN cd.facilities f
ON b.facid = f.facid
WHERE name ILIKE '%tennis court%' AND starttime >= '2012-09-21' 
AND starttime < '2012-09-22'
ORDER BY starttime

-- How can you produce a list of the start times for bookings by members named 'David Farrell'?
SELECT * FROM cd.bookings b
JOIN cd.members m
ON b.memid = m.memid
WHERE surname ILIKE 'farrell' AND firstname ILIKE 'david'