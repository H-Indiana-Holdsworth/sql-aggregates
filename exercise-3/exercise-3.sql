-- the average rental amount by country
-- include the country name and avg amount
-- use AVG to average the amount
SELECT
    country,
    AVG (amount) as avg
FROM
    country
RIGHT JOIN
    city
ON
    city.country_id = country.country_id
RIGHT JOIN
    address
ON
    address.city_id = city.city_id
RIGHT JOIN
    customer
ON
    customer.address_id = address.address_id
RIGHT JOIN
    rental
ON  
    rental.customer_id = customer.customer_id
RIGHT JOIN
    payment
ON
    payment.rental_id = rental.rental_id
GROUP BY
    country
ORDER BY
    avg DESC
LIMIT
    10;