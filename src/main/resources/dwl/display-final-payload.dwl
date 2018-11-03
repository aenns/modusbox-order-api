%dw 2.0
output application/json
---
{
	OrderID: vars.orderQueryResult[0].OrderID,
	CustomerName: vars.orderQueryResult[0].CustomerName,
	PlacementDate: vars.orderQueryResult[0].PlacementDate,
	ItemCount: sizeOf(vars.itemsResult),
	TotalCost: sum(vars.itemsResult.ItemCost),
	Items: vars.itemsResult
}