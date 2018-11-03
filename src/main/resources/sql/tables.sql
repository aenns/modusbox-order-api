CREATE SCHEMA OrdersDb;

CREATE TABLE OrdersDb.Orders
(
OrderID bigint PRIMARY KEY NOT NULL,
CustomerName varchar(100) NOT NULL,
PlacementDate TIMESTAMP NOT NULL
);

INSERT INTO OrdersDb.Orders (OrderID,CustomerName,PlacementDate) values (1,'ModusBox',CURRENT_TIMESTAMP);
INSERT INTO OrdersDb.Orders (OrderID,CustomerName,PlacementDate) values (2,'Adrian Enns Company',CURRENT_TIMESTAMP);
INSERT INTO OrdersDb.Orders (OrderID,CustomerName,PlacementDate) values (3,'Real Important Client',CURRENT_TIMESTAMP);

CREATE TABLE OrdersDb.OrderItems
(
OrderItemID bigint PRIMARY KEY NOT NULL,
OrderID bigint NOT NULL,
ItemID bigint NOT NULL,
ItemCount bigint NOT NULL,
);

CREATE TABLE OrdersDb.Items
(
ItemID bigint PRIMARY KEY NOT NULL,
ItemName varchar(100) NOT NULL,
ItemCost DECIMAL(8,2) NOT NULL
);

INSERT INTO OrdersDb.Items (ItemID,ItemName,ItemCost) values (1,'Item 1 Name',29.99);
INSERT INTO OrdersDb.Items (ItemID,ItemName,ItemCost) values (2,'Item 2 Name',39.99);
INSERT INTO OrdersDb.Items (ItemID,ItemName,ItemCost) values (3,'Item 3 Name',49.99);
INSERT INTO OrdersDb.Items (ItemID,ItemName,ItemCost) values (4,'Item 4 Name',59.99);
INSERT INTO OrdersDb.Items (ItemID,ItemName,ItemCost) values (5,'Item 5 Name',69.99);

INSERT INTO OrdersDb.OrderItems (OrderItemID,OrderID,ItemID,ItemCount) values (1,1,1,3);
INSERT INTO OrdersDb.OrderItems (OrderItemID,OrderID,ItemID,ItemCount) values (2,1,3,3);
INSERT INTO OrdersDb.OrderItems (OrderItemID,OrderID,ItemID,ItemCount) values (3,1,5,3);

INSERT INTO OrdersDb.OrderItems (OrderItemID,OrderID,ItemID,ItemCount) values (4,2,2,2);
INSERT INTO OrdersDb.OrderItems (OrderItemID,OrderID,ItemID,ItemCount) values (5,2,4,2);

INSERT INTO OrdersDb.OrderItems (OrderItemID,OrderID,ItemID,ItemCount) values (7,3,1,5);
INSERT INTO OrdersDb.OrderItems (OrderItemID,OrderID,ItemID,ItemCount) values (8,3,2,5);
INSERT INTO OrdersDb.OrderItems (OrderItemID,OrderID,ItemID,ItemCount) values (9,3,3,5);
INSERT INTO OrdersDb.OrderItems (OrderItemID,OrderID,ItemID,ItemCount) values (10,3,4,5);
INSERT INTO OrdersDb.OrderItems (OrderItemID,OrderID,ItemID,ItemCount) values (11,3,5,5);