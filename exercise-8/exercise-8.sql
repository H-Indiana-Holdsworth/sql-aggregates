-- rank of film category by times rented
-- include the name, count, and rank
SELECT
    name,
    COUNT (*),
    RANK () OVER (ORDER BY COUNT (*) DESC)
FROM
    category
RIGHT JOIN
    film_category
ON
    film_category.category_id = category.category_id
RIGHT JOIN
    inventory
ON
    inventory.film_id = film_category.film_id
RIGHT JOIN
    rental
ON
    rental.inventory_id = inventory.inventory_id
GROUP BY
    name
ORDER BY
    rank;


