USE HoopsLinkDB;
-- Report on gear orders including item details
SELECT o.orderID, o.customerID, o.orderDate, oi.itemCode, i.itemName, oi.quantity, i.itemPrice
FROM Orders o
JOIN OrderItems oi ON o.orderID = oi.orderID
JOIN Items i ON oi.itemCode = i.itemCode;
