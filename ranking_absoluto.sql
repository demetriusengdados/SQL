-- Objetivo de negócio: Bem semelhante ao anterior,
--identificar e monitorar as flutuações de preços dos
--celulares por fornecedor ao longo de 2023.

SELECT product_id, model, supplier, price, date, 
        ROW_NUMBER() OVER(PARTITION BY product_id ORDER BY price)
AS row_num
FROM cellphones
WHERE model = 'iPhone13'; 
