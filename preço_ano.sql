--Objetivo de negócio: Identificar e monitorar as
--flutuações de preços dos celulares por fornecedor ao longo de 2023.

select product_id, model, supplier, date,
        price as current_price,
        LAG(price, 1) OVER(PARTITION BY product_id, supplier ORDER BY date) as
previous_price,
        (price - LAG(price, 1) OVER(PARTITION BY product_id, supplier ORDER BY date)) AS
price_diff
FROM cellphones
WHERE date BETWEEN '2023-01-01' AND '2023-12-31'; 
