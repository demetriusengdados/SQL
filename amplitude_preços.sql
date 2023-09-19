select product_id, model,
        MIN(price) as lowest_price,
        MAX(price) as highest_price,
        Round(AVG(price),2) as average_price
from cellphones
group by product_id, model
order by product_id


