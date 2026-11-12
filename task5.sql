-- Задача 5: все самые дешёвые заказы дороже 10 000 рублей.
SELECT item, price
FROM orders
WHERE price > 10000
  AND price = (
      SELECT MIN(price)
      FROM orders
      WHERE price > 10000
  )
ORDER BY item ASC;
