# AtliQ Mart -Dashboard

### Dashboard Link : https://app.powerbi.com/view?r=eyJrIjoiNWI1NDVkZTYtY2FkZC00NTVkLTkzMWEtYmQ3Y2NkM2Y5Nzc3IiwidCI6IjZjZDQxMTc3LThmMzgtNGE5ZS04NWY5LWI5OGRjMjA3NTYyMyJ9

## Problem Statement

AtliQ Mart is a retail giant with over 50 supermarkets in the southern region of India. All
their 50 stores ran a massive promotion during the Diwali 2023 and Sankranti 2024
(festive time in India) on their AtliQ branded products. Now the sales director wants to
understand which promotions did well and which did not so that they can make
informed decisions for their next promotional period.

Sales director Bruce Haryali wanted this immediately but the analytics manager Tony is
engaged on another critical project. Tony decided to give this work to Peter Pandey who
is the curious data analyst of AtliQ Mart. Since these insights will be directly reported to
the sales director, Tony also provided some notes to Peter to support his work.


## Task List
- Work on the insights in Power BI given in the recommended insights pdf
- Work on the SQL on the task given in ad-hoc-requests.pdf


# Data Model

![Screenshot 2024-02-04 190117](https://github.com/Ad1tyaBhardwaj19/AtliQ_Mart_Analysis_PowerBi_SQL/assets/158819480/057647e9-c771-4611-b7db-a15e7a12fb77)


 
 # Store Analysis View

 
![Screenshot 2024-02-04 190128](https://github.com/Ad1tyaBhardwaj19/AtliQ_Mart_Analysis_PowerBi_SQL/assets/158819480/02d0e562-426f-4663-904a-7800e4767d04)



# Promotion Analysis View

![Screenshot 2024-02-04 190138](https://github.com/Ad1tyaBhardwaj19/AtliQ_Mart_Analysis_PowerBi_SQL/assets/158819480/4b9ccba6-1ced-4269-b8ba-47595e8e475e)

# Product and Category View

![Screenshot 2024-02-04 190147](https://github.com/Ad1tyaBhardwaj19/AtliQ_Mart_Analysis_PowerBi_SQL/assets/158819480/f3bafefd-139f-449b-a8dd-0c9a1217c556)


# SQL Queries 
 - 1 For the first query I have created the store procedure because we might want to check products with different promo types.
![Screenshot 2024-02-04 191616](https://github.com/Ad1tyaBhardwaj19/AtliQ_Mart_Analysis_PowerBi_SQL/assets/158819480/32ed0115-a660-4ee7-9045-44aeab145c94)
- 2
![Screenshot 2024-02-04 191732](https://github.com/Ad1tyaBhardwaj19/AtliQ_Mart_Analysis_PowerBi_SQL/assets/158819480/2aedd14c-feaa-4257-91cd-3977901f616b)
- Created view for further calculation because we need promo_price again and again instead of writing big code again and again i created views for the promo_price
![image](https://github.com/Ad1tyaBhardwaj19/AtliQ_Mart_Analysis_PowerBi_SQL/assets/158819480/f68df933-b12f-46e7-901b-e375c69e155a)

- 3
![Screenshot 2024-02-05 200305](https://github.com/Ad1tyaBhardwaj19/AtliQ_Mart_Analysis_PowerBi_SQL/assets/158819480/9f00face-dd5c-4526-9433-deee6f344679)
- 4
![Screenshot 2024-02-04 192013](https://github.com/Ad1tyaBhardwaj19/AtliQ_Mart_Analysis_PowerBi_SQL/assets/158819480/e14e0b07-8322-42f8-a445-ae6b8e45490f)
- 5
![Screenshot 2024-02-05 200415](https://github.com/Ad1tyaBhardwaj19/AtliQ_Mart_Analysis_PowerBi_SQL/assets/158819480/e39a4197-da73-4a53-bb06-9836b417474a)



# Insights From the Dashboard 

The report was created on Power BI Desktop & it was then published to Power BI Service.

The following inferences can be drawn from the dashboard;

###  Store Performance
 - Most of the Revenue by City was directly linked with the no of stores present their, but the highest Incremental Revenue % was seen in Madura which has only 4 stores as compared to Bengaluru which has 10 stores. Even for Vijaywada City Incremental Revenue % was higher which has only 2 stores
 - Stores in Vishakhapatnam and Hyderabad didn't do that well in terms of Incremental Revenue %

### Promotion Type
- Most of the revenue was generated on the Diwali Campaign.
- The Incremental Sold Quantity during Campaigns was "226k".
- Promo Type "500 Cashback" did the best in terms of generating Incremental Revenue % and maintaining the healthy balance between Incremental Revenue and Incremental Sold Quantity, for Promo Type "BOGOF" there is a huge difference between Incremental Revenue and Incremental Sold Quantity.
- There is a Negative Decline in Promo Types: "33% OFF", "50 % OFF", "25% OFF".
- Promo Type "25% OFF" didn't go well either with Incremental Revenue or with Incremental Sold Quantity. 
- Even though Promo Type "500 Cashback" has a lower Average Discount % (16.67%) still it has generated the highest Revenue amongst other Promo Types which has a higher Discount %.

### Product and Category
- Total Sales during campaigns were (247.98 M) and Sold Quantity was (435K).
- Category Combo1 has generated the highest Revenue and has also maintained the balance between both Incremental(Revenue and Sold Units).
- There is a Negative Trend in the Category of Personal Care for both Incremental(Revenue and Sold Units).
- The Discount based Promo Types have not performed well as compared to the "500 Cashback" and "BOGOF" Promo Types.  
- In products where we have given discount-based products the Incremental Revenue % is Negative.

# Recommendations

### Store Distribution Optimization:
- Considering the correlation between the number of stores and revenue, evaluate the performance of cities with a higher number of stores like Bengaluru. Assess if the market saturation is affecting incremental revenue and consider optimizing the store count in such cities.
- Explore the potential for expanding in cities with fewer stores, especially in Trivandrum and Vijayawada, where the store count is low.

### Focus on Madura City's Success Model:
- Investigate the factors contributing to the high Incremental Revenue % in Madura City with only 4 stores. Identify successful strategies implemented in this city and consider replicating them in other cities, especially those with a similar store count.

### Promotional Strategy:
- Focus on optimizing the promotional strategy by leveraging the success of the "500 Cashback" promo type. Consider expanding and fine-tuning this type of promotion to maintain a healthy balance between Incremental Revenue and Incremental Sold Quantity.
- Reevaluate and potentially adjust or discontinue promo types with negative trends, such as "33% OFF," "50% OFF," and "25% OFF." Analyze the reasons behind the decline and make data-driven decisions on whether to revamp or replace these promotions

### Discount Strategy:
- Reevaluate the discount strategy, especially for products where discount-based promotions are resulting in negative Incremental Revenue %. Assess whether the discounts are aligning with customer preferences or if adjustments are needed.
- Given the success of the "500 Cashback" promo type with a lower average discount percentage, consider experimenting with lower discounts in other promotions to test their impact on revenue.

### Continuous Monitoring:
- Implement a system for continuous monitoring and evaluation of store performance, campaign effectiveness, and product/category trends. This will allow for quick adjustments based on evolving market dynamics.
