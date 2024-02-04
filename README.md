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
 - 1 
![Screenshot 2024-02-04 191616](https://github.com/Ad1tyaBhardwaj19/AtliQ_Mart_Analysis_PowerBi_SQL/assets/158819480/32ed0115-a660-4ee7-9045-44aeab145c94)
- 2
![Screenshot 2024-02-04 191732](https://github.com/Ad1tyaBhardwaj19/AtliQ_Mart_Analysis_PowerBi_SQL/assets/158819480/2aedd14c-feaa-4257-91cd-3977901f616b)
- 3
![Screenshot 2024-02-04 191838](https://github.com/Ad1tyaBhardwaj19/AtliQ_Mart_Analysis_PowerBi_SQL/assets/158819480/72cd2dc3-dc9f-416f-bacd-06d43888a2f9)
- Result of 3
![Screenshot 2024-02-04 191900](https://github.com/Ad1tyaBhardwaj19/AtliQ_Mart_Analysis_PowerBi_SQL/assets/158819480/ccbc5afd-9129-4c00-b3f5-fe2545b2970b)
- 4
![Screenshot 2024-02-04 192013](https://github.com/Ad1tyaBhardwaj19/AtliQ_Mart_Analysis_PowerBi_SQL/assets/158819480/e14e0b07-8322-42f8-a445-ae6b8e45490f)
- 5
![Screenshot 2024-02-04 192054](https://github.com/Ad1tyaBhardwaj19/AtliQ_Mart_Analysis_PowerBi_SQL/assets/158819480/bcfd1c45-6763-4d31-9a65-2e3489a66fc0)
- Result of 5
![Screenshot 2024-02-04 192104](https://github.com/Ad1tyaBhardwaj19/AtliQ_Mart_Analysis_PowerBi_SQL/assets/158819480/ca268c39-85b5-4841-b796-961742ff9dc4)

#SQL Query
For the first query i have created the store procedure because we might want to check products with different promo types.



# Insights From the Dashboard 

Report was created on Power BI Desktop & it was then published to Power BI Service.

Following inferences can be drawn from the dashboard;

###  Store Performance
 - Most of Revenue by City was directly linked with the no of stores presemt their, but the highest Incremental Revenue % was seen in Madura which has only 4 stores as compared to Bengaluru which has 10 stores. Even for Vijaywada City Incremental Revenue % was higher which has only 2 stores
 - Stores in Vishakhapatnam and Hydrabad didn't do that well in terms of Incremental Revenue %

### Promotion Type
- Most of the revenue was generated on Diwali Campaign.
- The Incremental Sold Quantity during Campaigns were "226k" .
- Promo Type "500 Cashback" did the best in terms of generating Incremental Revenue % and maintain the healthy balance between Incremental Revenue and Incremental Sold Quantity, for Promo Type "BOGOF" there is a huge difference between Incremental Revenue and Incremental Sold Quantity.
- There is a Negetive Decline in Promo Types: "33% OFF", "50 % OFF" , "25% OFF".
- Promo Type "25% OFF" didn't go well neither with Incremental Revenue nor with Incremental Sold Quantity . 
- Even though Promo Type "500 Casgback" has the lower Average Discount % (16.67%) still it has generated the highest Revenue amongst other Promo Types which has the higher Discount %.

### Product and Category
- Total Sales during campaigns were (247.98 M) and Sold Quantity were (435K).
- Category Combo1 has generated the highest Revenue and has also maintained the balance between both Incremental(Revenue and Sold Units).
- There is a Negetive Trend in Category Personal Care for the both Incremental(Revenue and Sold Units).
- The Discount based Promo Types has not performed well as compared to "500 Cashback" and "BOGOF" Promo Type.  
- In products where we have given discount based products the Incremental Revenue % is Negetive.

