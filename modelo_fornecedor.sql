-- Objetivo de negócio: Comparar e identificar as
--diferenças de preços entre SupplierA e SupplierB para
--cada modelo de celular na data '2023-01-01'.

with SupplierA_Prices as (
    select model, price as SupplierA_price
    from cellphones
    where suplier = 'SuplierA' and date = '2023-01-01'
),
SupplierB_Prices as (
    select model, price as SupplierB_price
    from cellphones
    where supplier = 'SupplierB' and date = '2023-01-01'
)

select a.model, a.SupplierA_price, b.SupplierB_price, 
        (a.SupplierA_price - b.SupplierB_price) as 
price_difference
from SupplierA_Prices a
join SupplierB_Prices b on a.model = b.model;