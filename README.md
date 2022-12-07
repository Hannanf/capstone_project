# Life Insurance Analysis Project


Life insurance is a valuable tool for Canadians to protect themselves from financial difficulties in the case of an unfortunate event, but many people are turned away from the cost. It would be beneficial to understand the components making up life insurance premiums, and help people plan the purchases.


## Project Overview

The purpose of this project is to perform an analysis on different demographic data to determine the cost of life insurance. This would be an insightful project for both insurance companies and people who are looking to plan their insurances.


## Process

**Initial Phase - Data Preparation**
* The data was collected from Stats Canada and Kaggle. We collected demographic data including age, sex, bmi, number of children, smoker, and charges. As well as average income data from Stats Canada.

**Second Phase - Data Processing**
* We will be consolidating the data into a SQL databse, and connect to a Machine learning model to apply supervised machine learning to determine correlations in determining cost of life insurance.

**Final Phase - Data Presentation**
* The analysis will be transformed into a webpage for visualization, a slide will be provided for final presentation.


## Technology

* Data is collected and preprocessed in Jupyter Notebook, using Pandas and Python
* Preprocessed data is imported into Postgres database using pgAdmin 
* Then using Jupyter Notebook, a Machine Learning model is created and connected to the database
* The data visualization will be presented in a webpage that is coded using HTML, CSS, and Javascript; the presentation slides is displayed using Google slides


## Database

The database was created in PostgreSQL which includes two tables. The data was collected from real clients data for life insurance demographics and cost. The database is stored on Amazon Web Services RDS (free tier).

ER Diagram
![ErD](https://github.com/Hannanf/capstone_project/blob/e47cb12db72d3c0838cfa02986004bceb58e8ff6/resources/queries/Capstone_Project_ER%20Diagram.jpeg)

The database meets all of the requirements of this project:

* Database interfaces with the project in some format: the database interfaces with the machine learning model, and it is stored on AWS.
* Includes at least two tables: the database includes 2 tables, we used PostgresSQL to create the tables and processed the joining for our machine learning model.
* Includes at least one join using the database language:  inner join.
* Includes at least one connection string: SQLalchemy is used for connecting data to the machine learning model.

## Machine Learning Model


Goal: For the machine learning analysis, we used supervised machine learning model to explore if we can predict the cost of life insurance by testing different demographics variables.

Implications: By finding key elements that had strong correlations to the cost, such as age and income, we can provide a strong tool for customers who are considering purchasing life insurance.

Data explored:
* Age
* Gender
* BMI
* Income
* Number of children
* Smoker or Non smoker
* Region
 

### Preliminary Data Preprocessing

The exploratory data analysis was conducted by consolidating 2 datasets of demographics and income information and read into a dataframe in Jupyter Notebook Using Python Pandas.

Data Source:
1. [Kaggle](https://www.kaggle.com/code/mariapushkareva/medical-insurance-cost-with-linear-regression/data)
2. [DQYDJ](https://dqydj.com/income-percentile-by-age-calculator/)
3. [Wikipedia](https://en.wikipedia.org/wiki/List_of_U.S._states_and_territories_by_life_expectancy)

ETL Process:
* Reformat and load in the raw data into a dataframe in Jupyter Notebook using Python Pandas Library
* CSV files are connected to PostgreSQL Database, data is consolidated and stored on AWS
* 2 tables are created in SQL, inner join applied
* Data is scaled and normalized in the model ?

Preliminary feature engineering and preliminary feature selection, including the decision-making process
* Target: identify which variable is highly correlated to the insurance cost
* Features: degmographics data inclusing age, bmi, number of children, average income, etc.
* Feature Engineering: use pandas to perform exploratory data analysis for identification
* Decision making: determine which column is in high correlations and continue with training and testing

### Training and testing sets
* We splitted the dataset into training and testing sets. The model used the training dataset to learn from, and then uses the testing dataset to assess its performance.
(Description of how data was split into training and testing sets) ?

![train](https://github.com/Hannanf/capstone_project/blob/85c4599005b0800f44a74e40e5b9fb9f9ed341a8/images/train.png)

### Machine Learning Model Choice: Limitations & Benefits
We utilized a supervised machine learning model - Polynomial Regression. Supervised Machine Learning deals with labeled dataset, which is perfect for demographics data.

* Benefits ?

* Limitations
Using the Polynomial Regression model, we have to be very precise in choosing levels of degree. In this case we chose 2 as the degree, if we input 1 or 3 as defree, the accuracy will be decreased.

### Machine Learning Model results
Description of how the model was trained ?
* Dropped ones doesn't have correlation - sex and region, leaving the rest variables. Smoker had big impact on charges.
?

Description and explanation of model's confusion matrix (last table showing predicted and actual values, will make a table)

* Accuracy Score: 0.81
* Precision: ?
* Sensitivity: ?

## Application of this project

The project introduces a real world tool for determining life insurance premiums, which could be used in medical industry to benefit clients, or either could be a powerful tool for companies to analyze clients data and determine premiums.
Although we are only working with 1300+ rows of data in this project, however, the same methodolody could easily be utilized by insurance companies to perform more in-depth analysis.

By applying this model, we could determine which clients may be at risk, and which clients could be offered premium rates:

Input: age, gender, bmi, number of children, whether smoker or not, region, average income, and average life span.
Output: The charge for the premium.

How does this benefit clients:
* Quick calculation of quote
* Find the right coverage for each individual's unique situation
* Plan ahead and protect loved ones

How does this benefit companies:
* Ready to use machine learning model for application
* Identify premium rates for clients by only a few client data inputs



## Visualization

[Google Slides Deck](https://docs.google.com/presentation/d/1whnuTL6ZM5WVz83VrgLC6633P-9DmyqtbOEfLG1-kRU/edit?usp=share_link)

(snapshot of webpage) 

The snapshot of the visualizations is incorporated into a Google Slides Deck for the final presentation. 

The webpage is an interative tool where an input box is available for users to enter their demographics info to calculate the insurance premiums.

Charts Displayed:
* Scatter Plot: showing relationships of the cost of life insurance vs. Age and BMI
* Bar Chart: showing the difference between Smoker and Non Smokers vs. Charge





## Project Team Members
* Fayyaz Hannan 
* Moataz Yaakoub
* Siqi Ou
* Junior Vantuil

