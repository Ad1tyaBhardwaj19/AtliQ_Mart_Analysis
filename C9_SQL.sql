#1
DELIMITER $$
USE `retail_events_db`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetHighValuePromoProducts`(
	in min_base_price int,
    in promo_code varchar(25)
    )
BEGIN
select p.product_name, e.base_price
		from dim_products p 
		join fact_events e 
		using (product_code)
		where base_price>min_base_price and promo_type=promo_code;
END$$

DELIMITER ;
;

#2
select city,count(store_id) as store_count
from dim_stores
group by city
order by store_count desc;

#3
with revn_table as (
		select campaign_name,quantity_sold_after_promo,base_price,quantity_sold_before_promo, 
		case
        when promo_type="50% OFF" then base_price*0.5
        when promo_type="25% OFF" then base_price*(1-0.25)
		when promo_type="33% OFF" then base_price*(1-0.33)
        when promo_type="BOGOF" then base_price*0.5
        when promo_type="500 Cashback" then base_price-500
        end as promo_price 
from fact_events
join dim_campaigns
using (campaign_id)
)
		select campaign_name,
        concat(round(sum(base_price*quantity_sold_before_promo)/1000000)," M") as total_revenue_before_promotion,
        concat(round(Sum(promo_price*quantity_sold_after_promo)/1000000)," M")
        from revn_table
        group by campaign_name;

#4
select 
rank() over( order by round(((sum(quantity_sold_after_promo)-sum(quantity_sold_before_promo))/
sum(quantity_sold_before_promo))*100) desc) as rank_order,
category,
concat(round(((sum(quantity_sold_after_promo)-sum(quantity_sold_before_promo))/
sum(quantity_sold_before_promo))*100, 2), " %") as "ISU%"
from fact_events
join dim_products
using (product_code)
join dim_campaigns
using (campaign_id)
where campaign_name = "Diwali"
group by category;


#5

with revenue_table AS(
		select product_name, quantity_sold_after_promo,quantity_sold_before_promo,base_price,
        case
        when promo_type="50% OFF" then base_price*0.5
        when promo_type="25% OFF" then base_price*(1-0.25)
		when promo_type="33% OFF" then base_price*(1-0.33)
        when promo_type="BOGOF" then base_price*0.5
        when promo_type="500 Cashback" then base_price-500
        end as promo_price 
        from fact_events
        join dim_products
        using (product_code)
        )
	
    select product_name, round(((sum(promo_price*quantity_sold_after_promo)-sum(base_price*quantity_sold_before_promo))/
    sum(base_price*quantity_sold_before_promo))*100, 2) as IR_pct
    from revenue_table
    group by product_name
    order by IR_pct desc
    limit 5;
        
			

