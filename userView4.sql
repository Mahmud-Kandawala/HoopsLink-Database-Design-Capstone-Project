USE HoopsLinkDB;
-- Report on payments linked to orders
SELECT p.paymentID, p.orderID, p.paymentDate, p.amount, p.paymentMethod
FROM Payments p;
