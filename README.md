# Bike-Store-Analysis

The purpose of this project is to utilize postgreSQL in tandem with DataGrip
to analyze business performance across multiple bike stores in a chain.
This initial analysis using SQL will then be visualized with Tableau.
The data comes from Kaggle at https://www.kaggle.com/datasets/dillonmyrick/bike-store-sample-database/data.

Analysis Questions:
- How do the total sales compare between stores each month?
  - How are sales at each store changing between months?
- How does order fulfillment time compare between stores?
- Which stores find themselves with the most repeat customers?

Initial analysis of these questions can be found in the [initialAnalysis.sql](initialAnalysis.sql)
file. To see this analysis visualized you can look at the Tableau [dashboard](Bike-Store-Dashboard.twbx).
To get a more in-depth analysis please see below:

## Conclusions
#### How do total sales compare between stores each month?
Baldwin Bikes has significantly greater sales each month 
compared to the other stores (Often more than 4x greater).
This is likely due to their larger customer base of 1019 
compared to 142 and 284 for Rowlett Bikes and Santa Cruz Bikes
respectively.

The stores appear to share high profit months and low profit months
for the most part. However, Baldwin Bikes appears to have greater 
improvement in its sales as time progresses.

#### How does order fulfillment time compare between stores?
Rowlett Bikes maintains the fastest average fulfillment time for orders
at 1.9225 days. Baldwin Bikes, however, holds the lowest modal fulfillment
time of 1 day. This suggests that Rowlett Bikes may be more consistent
with their fulfillment times, while Baldwin Bikes has periods of very
efficient order fulfillments and periods of quite slow fulfillments.
It could also reflect how Baldwin bikes prioritizes their orders. It could
be that they are taking a long time on some orders because they are
prioritizing others. Santa Cruz Bikes has the worst average fulfillment time
at 2.045 days as well as the worst modal fulfillment time at 3 days.
This data suggests that the methods used by Rowlett Bikes should be
investigated and potentially replicated at the other stores.

#### Which stores find themselves with the most repeat customers?
Baldwin Bikes has the most repeat customers at 60, but as we mentioned before,
this is most likely due to their much larger customer base. Santa Cruz Bikes
and Rowlett Bikes actually have a much higher percentage of their customer base
that complete multiple orders. Rowlett Bikes has 29.31% of their customers
come back to place another order and Santa Cruz Bikes has the highest percentage
at 33.33%. This is interesting considering their poor order fulfillment times.
It may be worth investigating the customer service practices of both Santa Cruz Bikes
and Rowlett Bikes to see how they can be applied to Baldwin Bikes as their
repeat customer percentage is only 12.26%.

### Summary
**Baldwin Bikes**
- Large customer base and high sales
- Potentially inconsistent order fulfillment times
- Lacking customer retention

**Rowlett Bikes**
- Small customer base and low sales
- Consistent and efficient order fulfillment
- Good customer retention

**Santa Cruz Bikes**
- Medium customer base and medium sales
- Very poor order fulfillment times
- Best customer retention
