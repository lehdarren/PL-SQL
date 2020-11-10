-- Display a list of all items ordered (product name), and how many of each were sold. Order by greatest to least amount

Select productName, SUM(BB_BasketItem.quantity) as AmtSold
FROM BB_Product INNER JOIN BB_BasketItem USING(idProduct)
                INNER JOIN BB_Basket USING(idBasket)
WHERE orderPlaced = 1
GROUP BY productName
ORDER BY AmtSold DESC;

--Display the last name and first name of the customers who ordered 'Espresso' (do not use idproduct = 10). 
--Be sure to have the total number of orders and there are no repeating values

SELECT firstName, lastName, COUNT(firstName) as totalOrders
FROM BB_Shopper INNER JOIN BB_Basket USING(idShopper)
                INNER JOIN BB_BasketItem USING (idBasket)
                INNER JOIN BB_Product USING (idProduct)
WHERE orderPlaced = 1 AND productName = 'Espresso'
GROUP BY firstName, lastName;

--Display a list of all 'SciFi' (not using movie_cat_id = 1) movies and how many times each was rented. 
--Order by rental amount ascending

SELECT Movie_Title, COUNT(Movie_ID) as TimesRented
FROM MM_Movie INNER JOIN MM_Rental USING(Movie_ID)
              INNER JOIN MM_Movie_Type USING(Movie_CAT_ID)
WHERE Movie_Category = 'SciFi'
GROUP BY Movie_Title
ORDER BY TimesRented ASC;