SELECT count(Cheeses.name), Cheeses.seller_name
FROM readonly.Cheeses
GROUP BY Cheeses.seller_name