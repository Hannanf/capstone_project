# Life Insurance Analysis Project


Life insurance is a valuable tool for Canadians to protect themselves from financial difficulties in the case of an unfortunate event, but many people are turned away from the cost. It would be beneficial to understand the components making up life insurance premiums, and help people plan the purchases.


## Project Overview

The purpose of this project is to perform an analysis on different demographic data to determine the cost of life insurance. This would be an insightful project for both insurance companies and people who are looking to plan their insurances.


## Process

**Initial Phase - Data Preparation**
* The data was collected from Kaggle and dqydj.com. We collected demographic data including age, sex, bmi, number of children, smoker, and charges. As well as average income data from Stats Canada.

**Second Phase - Data Processing**
* We will be consolidating the data into a SQL databse, and connect to a Machine learning model to apply supervised machine learning to determine correlations in determining cost of life insurance.

**Final Phase - Data Presentation**
* The analysis will be transformed into a webpage for visualization, a slide will be provided for final presentation.


## Technology

* Data is collected and preprocessed in Python - Jupyter Notebook, using Pandas
* Preprocessed data is imported into Postgres using pgAdmin
* The databse will then connect to Machine Learning model, and will be processed using Jupyter Notebook
* The data visualization will be presented in a webpage that is coded using HTML, CSS, and Javascript; the presentation slides will be created using Google slides


## Database

The database was created in PostgresSQL, in which the data was collected from real datasets for life insurance demographics and cost. The includes all the tables, and the data is consists of total 1300 real customers.

ERD:

The database meets all of the requirements of this project:

* 

## Machine Learning Model

Goal: For the machine learning analysis, we used supervised machine learning model to explore if we can predict the cost of life insurance by demographics information.

Implications: By finding key elements that had strong correlations to the cost, such as age and income, we can perform the model and provide a strong tool for customers who are considering purchasing life insurance.

Data explored:
* Age
* Gender
* BMI
* Income
* Number of children
* Smoker or Non smoker
* Region
 

Preliminary data preprocessing

* The exploratory data analysis was conducted by consolidating 2 datasets of demographics and income information and read into a dataframe in Jupyter Notebook Using Python Pandas.
* 

Description of preliminary feature engineering and preliminary feature selection, including the decision-making process
* Target: define relationship between the indicators vs. cost
* Features: degmographics data inclusing age, bmi, number of children, and etc
* Feature Engineering: used SQL to construct tables and transform responses into 1 or 0 (example)
* Decision making: determine which column is in high correlations and continue with training and testing

Description of how data was split into training and testing sets
* We splitted the dataset into training and testing sets. The model used the training dataset to learn from, and then uses the testing dataset to assess its performance.
* SciKit Learn Library is used to split, train, and test the data
* Training and testing snapshot

Explanation of model choice, including limitations and benefits
* Which model used
* Benefits
* Limitations

## Visualization

[Google Slides Deck](https://docs.google.com/presentation/d/1whnuTL6ZM5WVz83VrgLC6633P-9DmyqtbOEfLG1-kRU/edit?usp=share_link)

A Tableau dashboard will be used for presenting the analysis, it will contain a few pages and a storyboard. We will upload the dashboard on the free server Tableau Public 2022.
The snapshot of the worksheet visualizations will be incorporated into a Google Slides Deck for the final presentation. 
The Tableau Dashboard will be interactive, users are able to click on different charts:

Interactive Elements:
* Bar chart: to show relationships of the cost of life insurance vs. age, users will be able to click on a specific age group to see details
* 
* 

## resources

## Project Team Members
* Fayyaz Hannan 
* Moataz Yaakoub
* Siqi Ou
* Junior Vantuil
