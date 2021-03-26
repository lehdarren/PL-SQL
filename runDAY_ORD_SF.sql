SELECT      day_ord_sf(dtcreated), COUNT(idBasket)
FROM        BB_Basket
GROUP BY    day_ord_sf(dtcreated)
ORDER BY    COUNT(idBasket) DESC;