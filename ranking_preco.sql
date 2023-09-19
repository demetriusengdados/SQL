--Objetivo de negócio: Identificar e monitorar as
--flutuações de preços dos celulares por fornecedor ao longo de 2023.

SELECT product_id, model, supplier, price, date,
        RANK() OVER(PARTITIION BY product_id ORDER BY price) AS 
rank
FROM cellphones; 
