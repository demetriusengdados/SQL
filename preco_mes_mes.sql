--Objetivo de negócio: Identificar variações percentuais
--de preços por produto e fornecedor ao longo do tempo.

SELECT product_id, model, supplier, date, price,
        ROUND(
            ((price -LAG(price) OVER( PARTITION BY product_id, supplier ORDER BY date))
            / LAG(price) OVER(PARTITION BY product_id, supplier ORDER BY date))
            * 100, 2) AS price_difference_percentage
FROM cellphones;