USE HoopsLinkDB;
-- List all coaching sessions along with coach and customer details
SELECT s.sessionID, c.coachName, cust.customerName, s.sessionDate, s.sessionTime, s.sessionType, s.sessionFee
FROM Sessions s
JOIN Coaches c ON s.coachID = c.coachID
JOIN Customers cust ON s.customerID = cust.customerID;
