SELECT *
FROM readonly.Cheeses
WHERE Cheeses.seller_name = 'Tesco' OR Cheeses.seller_name = 'Cheese r us'
;

-- SELECT * 
-- FROM readonly.Cheeses
-- WHERE Cheeses.seller_name IN ('Tesco', 'Cheeses are us')
;