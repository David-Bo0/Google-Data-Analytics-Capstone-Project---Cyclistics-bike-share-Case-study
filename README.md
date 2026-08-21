# **Google Data Analytics Capstone Project Cyclistic-Case study**


This repository houses the final capstone project for the "Google Data Analytics" professional certificate on Coursera. It features a comprehensive dashboard demonstrating the practical application of R and Tableau for data analysis and visualization respectively in a business context.

**Key Highlights:**
- **Dashboard**: Explore the interactive visualization created in Tableau, providing clear insights derived from complex data analyses.
-  [View Dashboard](https://public.tableau.com/shared/27X7YYZ5X?:display_count=n&:origin=viz_share_link)

**Table of Contents**


Why this project?

Case study introduction

Scenario

About the company

Step 1: Ask

Step 2: Prepare

Step 3: Process

Step 4: Analyze

Step 5:Share

Step 6:Act

**Why this project?**

This document was created as the final deliverable for the Google Data Analytics Capstone project. I started this certification program through Coursera in April 2026 and completed it in August 2026. After learning course after course in the Google Data Analytics program, I have developed skills such as structured thinking, storytelling, Excel, Tableau, SQL, and R. Through this project I will demonstrate skills needed to transition into a career in data analytics.

**Introduction**

In this case study, you work for a fictional company, Cyclistic, along with some key team members. In order to answer the business questions, follow the steps of the data analysis process: Ask, Prepare, Process, Analyze, Share, and Act. 

This markdown file structure is modeled on the Data analysis process presented as a part of the Google Data Analytics Certificate which is:

1.**Ask** : Business Challenge/Objective/Question

2.**Prepare** : Data generation, collection, storage and management

3.**Process** : Data cleaning and integrity 

4.**Analyze** : Data exploration, visualization, and analysis

5.**Share** : communicating findings and results

6.**Act** : putting your insights to work solve the problem and answer question

**Scenario**

You are a junior data analyst working on the marketing analyst team at Cyclistic, a bike-share company in Chicago. The director of marketing believes the company’s future success depends on maximizing the number of annual memberships. Therefore, your team wants to understand how casual riders and annual members use Cyclistic bikes differently. From these insights, your team will design a new marketing strategy to convert casual riders into annual members. But first, Cyclistic executives must approve your recommendations, so they must be backed up with compelling data insights and professional data visualizations. 

**About the company**

In 2016, Cyclistic launched a successful bike-share offering. Since then, the program has grown to a fleet of 5,824 bicycles that are geotracked and locked into a network of 692 stations across Chicago. The bikes can be unlocked from one station and returned to any other station in the system anytime. 

Cyclistic’s finance analysts have concluded that annual members are much more profitable than casual riders. Although the pricing flexibility helps Cyclitics attract more customers, the Director of Marketing Moreno believes that maximizing numbers of annual members will be critical to future success in the company’s growth.

Customers who purchase single-ride or full-day passes are called “Casual riders”. While customers who purchase the annual passes are called Cyclistics “members”.

**Step 1: Ask**

Three questions will guide the future marketing program:
How do annual members and casual riders use Cyclistic bikes differently?
Why would casual riders buy Cyclistic annual memberships?
How can Cyclistics use digital media to influence casual riders to become members ?

**Statement of the business task**

**GOAL** : Analyze how annual members and casual riders use Cyclistics bikes differently. The insights from this analysis would be shared with the marketing team which would help them design marketing strategies to convert casual riders to annual members.

**Stakeholders**

Primary Stakeholders: Director of Marketing (Lily Moreno), Cyclistics Executive team

Secondary Stakeholders: Cyclistics marketing analytics team

**Step 2**: Data Preparation

The data we are using is the Cyclistic historical trip data from April 2020 to May 2021. The dataset used has been made available by Motivate International Inc. through this link under this license. It consists of 12 different CSV files (each file contains one month). Each CSV file has 13 columns with the corresponding number of observations

Due to the sheer volume of the trip data across all 12 monthly files, spreadsheet tools like Microsoft Excel will be inefficient for processing and performing calculations on the combined dataset. Instead, we will use SQL to efficiently clean, transform, and aggregate the entire dataset. Then the processed summary of the tables will be exported into Tableau to create interactive, and dynamic data visualizations.

Filename | number of rows

202508-divvy-tripdata | 1580354

202509-divvy-tripdata | 714759

202510-divvy-tripdata | 646039

202511-divvy-tripdata | 356628

202512-divvy-tripdata | 140534

202601-divvy-tripdata | 137787

202602-divvy-tripdata | 201450

202603-divvy-tripdata | 317037

202604-divvy-tripdata | 448252

202605-divvy-tripdata | 653704

202606-divvy-tripdata | 762550

202607-divvy-tripdata | 869051

Total numbers of row in all 12 files: 6828145

The ROCCC approach was to check for issues with bias or credibility in this data.

**R** eliability : The data is complete and accurate, which represents all bike rides taken in the city of Chicago for the selected duration of our analysis

**O** riginal : The data from Motivate International Inc, which operates the city of Chicago’s Divvy bicycle-sharing service.

**C** omprehensive : The data includes all relevant info about the ride including the type of bike, ride_id, rideable_type, started_at, ended_at, start_station_name, end_station_name, start_station_id, end_station_id.

**C** urrent: The data are made available on the site are up to date until July 2026

**C** ited : ensure that the datasets or resources are given credit to the author or organization

**Data Limitations**

Taking a quick look at the datasets, there seems to be data missing from the start_station_name, start_station_id, end_station_name, end_station_id for some of the recorded rides. After looking into the datasets for further observation, this problem often occurs when the bike type is an electrical bike which concludes that the bikes that are missing data in the field above are mostly electrical

**Step 3** : process.

**Steps taken**

Imported all the data into SQL workbench

Check for duplicates and missing values

Add null value to blanks 

Check for invalid timestamps(between started_at and ended_at)

Transformed data format types

Removed the rows where duration is negative

Created new column names for an easier read of the data

**Tools used in process**

All of this has been done in only SQL without any other tools. Many queries have been used to clean and manipulate the data to correct mistakes and provide better and easier data to analyze.

**Step 4** : Analyze

Summary of the steps performed to identify trends or relationships found in the data. Exported a summed up file for further analysis.

Reviewed the distribution of the numerical variables
Reviewed categorical variables
Checked the cardinality of the categorical variables
Checked for outliers
Review the relationships between independent variables and dependent variables
Perform descriptive statistical analytics



**Step 5** : Share

Tableau Public was used to create visualizations for the given data. While Canva is used to create a slide presentation to share the insights.

Cyclistics bike share visualization
Tableau viz link

**Step 6** : Act

Prepare the deliverables the director of marketing was asking for, including the top 3 recommendations based on my analysis.

**Final conclusion**

**Top 3 recommendations** : 
1.

2.

3.


