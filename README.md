# Predicting-Staff-Levels-for-Front-line-Workers

Objective:

To study the correlation between the average wait time for DOB customers and the leave time of front line workers.

Predict the increase in staffing during busy months (i.e. summer) required to maintain a wait time of ½ hour.

Average wait and total leave steadily increases throughout the year and peaks in June and July:

![average wait time and total leave per month](https://cloud.githubusercontent.com/assets/11237613/22993750/24c2030c-f392-11e6-810e-9d9dbcad259f.png)

### Data and Methods

Data:

1. 10 months of average wait time from QMATIC.

2. Leave time for each worker from City Time.

3. Data aggregated to the unit level (work group).

4. Each group categorized according to job function - Application processing, certificate of occupancy, records.


Methods:

Correlation analysis, linear regression

### Software
R, Python, Teableau

### Results

Correlation between average wait time and percent hours of leave per group:

![correlation analysis results](https://cloud.githubusercontent.com/assets/11237613/22994030/3a61a798-f393-11e6-8506-4b54e89161bf.PNG)

#### Regression Analysis

Regression analysis is used to predict the average wait time with increased leave time.

More specifically, when leave increases we want to know the increase in the number of workers required to maintain an average wait time at or below ½ hour.

The dependent variable in our analysis is the average wait time and the independent variable is average hours of leave.

We focus on application processing only (low correlation for records and certificate of occupancy)

Regression results shows that percent leave must be kept to 10% for each work group to maintain an average wait time of 1/2 hour:

![application processing](https://cloud.githubusercontent.com/assets/11237613/22994234/2fb06e64-f394-11e6-96f2-9a2c077b73dc.png)


For further discussion, see powerpoint discussion file.



