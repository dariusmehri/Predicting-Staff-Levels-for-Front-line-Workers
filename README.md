# Predicting Staff Levels for Front line Workers

Objective:

To study the correlation between the average wait time for DOB customers and the leave time of front line workers.

Predict the increase in staffing during busy months (i.e. summer) required to maintain a wait time of ½ hour.

Average wait and total leave steadily increases throughout the year and peaks in June and July:

![average wait time and total leave per month](https://cloud.githubusercontent.com/assets/11237613/24155351/feaa25ca-0e29-11e7-875f-8d751719a84b.png)


### Data and Methods

Data:

1. 52 weeks of average wait time from QMATIC.

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

Regression results shows that percent leave must be kept to 2.5 hours a week for an average wait time of 30 minutes:

![application processing](https://cloud.githubusercontent.com/assets/11237613/24154894/c689f6b2-0e28-11e7-9592-19333ca157b0.png)





