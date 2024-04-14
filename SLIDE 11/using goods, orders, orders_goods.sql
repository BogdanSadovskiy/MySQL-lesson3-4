
-- first ex
-- select distinct goods.name as ordered_goods
-- from orders_goods
-- join goods on orders_goods.good_id = goods.id
-- join orders on orders_goods.order_id = orders.id
-- order by goods.name;

-- second ex
-- SELECT goods.name, sum(orders_goods.quantity) AS total_quantity_ordered
-- FROM orders_goods
-- join goods on orders_goods.good_id = goods.id
-- GROUP BY goods.name
-- HAVING SUM(quantity) >=10;


-- ex three
-- DELETE orders
-- FROM orders
-- JOIN orders_goods ON orders.id = orders_goods.order_id
-- WHERE orders_goods.good_id = 5;

-- select order_id, good_id
-- from orders_goods

