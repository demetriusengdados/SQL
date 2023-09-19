--Objetivo de negócio: Identificar variações de preço por
--produto e fornecedor ao longo de 2023 para tomar
--decisões informadas sobre compras ou negociações.

SELECT product_id, model, supplier, date, 
        price AS current_price,
        LAG(price, 1) OVER(PARTITION BY product_id, supplier ORDER BY date) AS
previous_price,
        ROUND(price - LAG(price,1) OVER(PARTITION BY product_id, supplier ORDER BY 
        date), 2) AS price_difference
FROM cellphones
WHERE date BETWEEN '2023-01-01' AND '2023-12-31'; 

