USE HoopsLinkDB;
-- Report on inventory status and supplier information
SELECT i.itemCode, i.itemName, inv.stockQuantity, s.supplierID, s.supplierName
FROM Inventory inv
JOIN Items i ON inv.itemCode = i.itemCode
JOIN Suppliers s ON i.supplierID = s.supplierID;
