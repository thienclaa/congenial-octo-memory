## SQL

### [Descriptive Analytics - Market Basket](https://github.com/thienclaa/congenial-octo-projects/tree/main/SQL/Market%20Basket%20Analysis)

  -  Define Problem: Create a data model and build a physical relational database for data storage and management in MySQL. Perform SQL queries for data preparation and data exploratory. Visualize key insights using dashboards in Tableau.
 
  - Data Collection: Datasets are obtained from Instacart, an electronic commerce grocery ordering and delivery organization. Datasets contains over 3 million grocery orders from more than 200,000 users consist details about the orders placed by various users, the sequence of products purchased in each order and also the aisle and department for the sold products.

  - Data Preparation: Datasets are well structured but required some data manipulation to remove empty strings, unnecessary values and assign necessary format for variables.

  - Data Exploratory: Product Analysis, Customer Segmentation Analysis and Trends Analysis.
      
  - Communication of insights: Tableau dashboards.
    
### [Descriptive Analytics - Superstore Sales](https://github.com/thienclaa/congenial-octo-projects/tree/main/SQL/Superstore%20Sales%20Analysis)

  -  Define Problem: Create a data model and build a relational database for data management in MySQL. Perform SQL queries for data exploratory.
 
  - Data Collection: Dataset is available on Kaggle. Dataset contains 1000 rows and 15 columns of supercenter sales performance from 3 different cites in Q1 of 2019.

  - Data Preparation: Format of the dataset is correctly identified when creating a data model and there's also no missing values or duplicates to be removed or replaced.

  - Data Exploratory: Sales Analysis, Customer Behavior Analysis and Product Analysis.
    
#### Others
- ##### [Descriptive Analytics - School Scheduling](https://github.com/thienclaa/congenial-octo-projects/tree/main/SQL/School%20Scheduling%20Analysis)
- ##### [Descriptive Analytics - Entertainment Agency](https://github.com/thienclaa/congenial-octo-projects/tree/main/SQL/Entertainment%20Agency%20Analysis)
    
## Python

### [Descriptive Analytics - Employee Performance Analysis](https://github.com/thienclaa/congenial-octo-projects/blob/main/Python/Data%20Preparation%20%26%20Exploratory/Employee%20Performance%20Analytics/HelpDesk.ipynb)

  -  Define Problem: ZTCS, a technology company specializes in providing computer solution. ZTCS wants to improve and expand it's IT Helpdesk department capabilites by analyzing how well an employee is contributing to an organization's projects. It can also help identify areas for improvement, support data-driven decisions, and align individual performance with organizational success.
 
  - Data Collection: Datasets are extracted from both on-premise and cloud data warehouse. Datasets contains over 500,000 tickets from more than 100 employees consist details about tickets created by various employees from 2019 - 2024.
    
  - Data Preparation: Datasets aren't well structured and the format of some variables aren't correctly identified. There're many missing values that need to be replaced or cleaned. All of the datasets are following the ELT process which is a data integration process that involves extracting, loading, and then transforming.

  - Data Exploratory: Response Time Analysis, Resolution Time Analysis, Time Serise Analysis and Category Analysis.
  
  - Communication of insights: Python viz libraries (Matplotlib, Plotly.express, Plotly.graph_objects, Plotly.subplots).
    
### [Descriptive Analytics - Portfolio Analysis](https://github.com/thienclaa/congenial-octo-projects/tree/main/Python/Data%20Preparation%20%26%20Exploratory/Taproot%20Foundation)

  -  Define Problem: Taproot Foundation connects nonprofits and social change organizations with passionate professionals who share their expertise pro bono. Datasets are used to evaluate the results of projects to identify the outcomes, match rates, duration of projects and other relevant statistics. For example, identifying a project type that is chronically underperforming or undermatched compared to other project types in order to signify a need to broaden the pool of volunteer talent to other areas.
 
  - Data Collection: Datasets are collected from Taproot's interal sources and they are called terradata files.

  - Data Preparation: Datasets are already fairly well structured but required some manipulation to get the necessary format.

  - Data Exploratory: Insights are most pertinent to the organization when deciding where to focus potential volunteer efforts.
    
    - Percentage of volunteer inquiries that failed to be selected.
    - Percentage of projects that succeeded.
    - Average days to project completion (could be due to cancellation or actual matching and completion of project).
    - Average days to volunteer match to project.
    - Number of volunteer inquiries by project type.
      
  - Communication of insights: Tableau dashboard.

#### Others
- ##### [Data Preparation - Crowd Sourced Grocery Prices Analysis](https://github.com/thienclaa/congenial-octo-projects/tree/main/Python/Data%20Preparation%20%26%20Exploratory/Crowd%20Sourced%20Grocery%20Prices)
    
- ##### [Data Preparation - U.S.Largest Cities Analysis](https://github.com/thienclaa/congenial-octo-projects/tree/main/Python/Data%20Preparation%20%26%20Exploratory/Largest%20U.S%20Cities)

## Machine Learning

### [Predictive Analytics - Fraudulent Transactions](https://github.com/thienclaa/congenial-octo-projects/tree/main/Python/Data%20Preparation%20%26%20Exploratory/Taproot%20Foundation)

  -  Define Problem: ABC Bank has recently experienced an increase in fraudulent online transactions. The bank is seeking to implement a more robust fraud detection system to mitigate financial losses and protect its customers. They have collected a dataset of online transactions containing both legitimate and fraudulent transactions. The dataset is split into three separate tables: customers, transactions, and merchants.
  - Objective: Build a predictive model to identify potentially fraudulent transactions. Provide recommendations on how to improve the fraud detection system based on findings.
  - Data Collection: Datasets are collected from interal sources.
    - **Customers table:** Contains customer_id, account_age and customer_demographics.
    - **Transactions table:** Records of online transactions including transaction_id, customer_id, transaction_timestamp, transaction_amount, transaction_type, payment_method, account_balance_before, account_balance_after, transaction_device, ip_address, user_agent, and is_fraud.
    - **Merchants table:** Information about the merchants involved merchan_id, merchan_category.

  - Data Preparation: Datasets are well structured but still require some manipulation to ensure the completeness and validity of data.

  - Data Exploratory: Key insights are gathered through Exploratory Data Analysis.
    
    - 95% of transactions are Non-Fraudulent and 5% of transactions are Fraudulent.
    - Fraudulent transactions were highest with mobile transaction device and transfer transaction type.
    - Fraudulent transactions were highest with credit card payment method and grocery category.
    - Fraudulent Transactions were happened highest on Sunday and Thursday.
    - Fraudulent transaction amount falls between -$5000 and $10,0000, and 50% of the transactions is greater than $5000.
    - 50% of the frauduent transactions were happened to accounts that opened more than 1000 days.
      
  - Communication of insights: Python visualization libraries.

#### Others
##### [Predictive Analytics - User and Entity Behaviors](https://github.com/thienclaa/congenial-octo-projects/tree/main/Python/Machine%20Learning/User%20and%20Entity%20Behaviors%20Analytics)

##### [Predictive Analytics - Small Business Administration Loan Approval](https://github.com/thienclaa/congenial-octo-projects/tree/main/Python/Machine%20Learning/U.S.%20Small%20Business%20Administration)

##### [Predictive Analytics - Car Prices Prediction](https://github.com/thienclaa/congenial-octo-projects/tree/main/Python/Machine%20Learning/Linear%20Models%20Car%20Prices)

##### [Predictive Analytics - Hyper-Parameters Optimization](https://github.com/thienclaa/congenial-octo-projects/tree/main/Python/Machine%20Learning/Diabetes%20Binary%20Health%20Indicators)

## R
 
#### [Statistical Methods - ANNOVA, Log Transformation, T-Test](https://github.com/thienclaa/congenial-octo-projects/blob/main/R/Statistical%20Methods/)

#### [Statistical Analytics - Panel Data Analysis](https://github.com/thienclaa/congenial-octo-projects/blob/main/R/Applied%20Econometrics/Panel%20Analysis.pdf)

#### [Predictive Analytics - Car Prices Prediction](https://github.com/thienclaa/congenial-octo-projects/blob/main/R/Business%20Intelligence/Predict%20Car%20Prices%20Linear.pdf)

#### [Predictive Analytics - Loan Offer](https://github.com/thienclaa/congenial-octo-projects/blob/main/R/Business%20Intelligence/Predict%20Loan%20Offer%20Logistic.pdf)

## Tableau

#### [Descriptive Analytics - Supercenter](https://github.com/thienclaa/congenial-octo-projects/tree/main/Tableau/Supercenter%20Performance)

  -  Define Problem: Perform SQL queries in MySQL Relational Database Management System for data preparation and data retrieval. Visualize key insights using dashboards in Tableau with many types of function such as Aggregation, Table Calculation, Logical, Date, and LOD Expression.

  - Data Preparation: Dataset are well structured but require some data manipulation to check for empty strings, missing values and assign correct format for variables.

  - Data Exploratory: Sales By Customer, Sales By Product, Sales By Category and others.
      
  - Communication of insights: Tableau dashboards.
