# IPL_Data_Analysis

This project is a comprehensive data analysis and visualization of Indian Premier League (IPL) data using **SQL**, **Python**, and **Power BI**.

##  Project Structure

```
IPL-Analysis/
├── IPL_Analysis.sql           # SQL data cleaning and analysis queries
├── IPL_Analytics.ipynb        # Python data exploration and visualizations (Matplotlib/Seaborn)
├── IPL_Dashboard.pbix         # Power BI dashboard for interactive reporting
└── README.md                  # Project overview and documentation
```

##  Objectives

- Clean and preprocess IPL match and delivery data using SQL
- Perform detailed analysis to extract key performance insights
- Visualize trends, patterns, and top performers using:
  - Python (Jupyter Notebook)
  - Power BI (interactive dashboard)

## 🔍 SQL Analysis

Located in [`IPL_Analysis.sql`](IPL_Analysis.sql)

-  Data Cleaning (nulls, inconsistencies in team/venue names)
-  Match-wise and season-wise metrics
-  Top players by runs, wickets, sixes and player of the match award
-  Count of matches played in each venue, which team won the most tosses
-  Team wise average Score in 1st inning
-  which bowler has highest dot ball % min 1000 balls
-  Most Consistent Batsmen Across Seasons
-  Strike rate improvements over time
-  Top 3 Scorers per Season
-  Season-wise Top Wicket Taker
-  Bowlers with Best Economy in Each Season
-  Players Who Improved Strike Rate Over Time
-  Dismissal analysis by player

##  Power BI Dashboard

File: [`IPL_Dashboard.pbix`](IPL_Dashboard.pbix)

## Key Features:

### IPL Overview

The "IPL Overview" page presents a high-level summary of the tournament over the years. It includes:

- **Total Matches Played**
- **Total Runs Scored**
- **Total Wickets Taken**
- **Total Boundaries Hit**
- **Tournament Winner**
- **Matches Played by Season**
- **Matches Won by Team**
- **Top 10 Player of the Match** where matches were played
- **Toss Decision** across teams
- Filters to choose specific **Season**, **Match** and **Team**

  <img width="628" alt="overview" src="https://github.com/user-attachments/assets/603380bb-fb67-4f2e-86a6-45305327b578" />

This page serves as a starting point to understand the tournament scale and team performance at a glance.

---

## Batting Insights

The "Batting Insights" page dives deep into individual Season Wise batting performances. It includes:

- **Total Runs, Strike Rate and Total Balls Faced**
- **Total Sixes and Fours**
- **Top Run Scorers, Most Sixes and Dissmissals Type**
- **Strike Rate by Season**
- Filters to choose specific **Season** and **Batsman**
- Drill-down visuals for player-wise and season-wise insights

  <img width="622" alt="Batting Insights" src="https://github.com/user-attachments/assets/a6d7bd3b-3ae1-459f-abe4-d9bbfe7df323" />

Useful for understanding who the most impactful batsmen were and how they performed across seasons

---

## Bowling Insights

This section focuses on individual and Season Wise bowling performance. It includes:

- **Total Wickets, Dot Balls Bowled, Total Balls Bowled, Runs Conceded and Economy Rate**
- **Top Wicket Takers and Bowler with Most Dot Balls**
- **Wickets per Season**
- **Best Economy Rate**
- Filters to choose specific **Season** and **Bowler**
- Drill-down visuals for player-wise and season-wise insights

  <img width="626" alt="Bowling Insights" src="https://github.com/user-attachments/assets/01054212-d2cd-464a-b51d-0042e6663192" />

This helps identify top-performing bowlers and how they performed across seasons

---

## Match Summary

The "Match Summary" page allows users to explore specific match-level data with filters. It contains:

- **Match Header Details** (teams, venue, date, toss winner, toss decisions, winner, player of the match)
- **Total Match Runs, Wickets, Sixes, Fours**
- **Top Run Scorers and Wicket Takers in the Match**
- **Team Score Comparison**
- Filter to choose specific **Match**

  <img width="628" alt="Match Summary" src="https://github.com/user-attachments/assets/53319c85-5cea-4323-9042-ee42f235aec9" />

 Ideal for post-match analysis and reviewing player contributions in a single match.

 The dashboard provides a user-friendly way to explore IPL data and answer specific questions through slicers and charts.

## Python Analysis (Jupyter Notebook)

Notebook: [`IPL_Analytics.ipynb`](IPL_Analytics.ipynb)

- Loaded match and delivery datasets
- Performed data wrangling using Pandas
- Created visualizations with Matplotlib and Seaborn:
  - **Total Matches Played Per Season**

  <img width="673" alt="Screenshot 2025-07-01 111341" src="https://github.com/user-attachments/assets/1ec6a85f-f697-4e67-839e-613893496d52" />

---
  - **Most Matches Won by Each Team**
 
  <img width="782" alt="Screenshot 2025-07-01 112446" src="https://github.com/user-attachments/assets/ceec0c71-701f-43e7-92f1-58b88908e7a7" />

---
  - **Top 5 Players with Most Player of the Match Awards**
 
  <img width="550" alt="Screenshot 2025-07-01 112632" src="https://github.com/user-attachments/assets/3c492ffb-175e-4a62-8596-3a1adf6656e5" />

---
  - **Count of Matches Played in Top 10 Venue**

  <img width="715" alt="Screenshot 2025-07-01 112827" src="https://github.com/user-attachments/assets/9c77fae4-7d9c-4e4a-b35b-1a760c20e432" />

---
  - **Which Team Won the Most Tosses**

  <img width="742" alt="image" src="https://github.com/user-attachments/assets/2ebfda30-99b0-4122-be97-8ba33b72adb2" />

---
  - **Top 5 Run Scorers**

  <img width="578" alt="image" src="https://github.com/user-attachments/assets/e15cef02-d662-4441-a835-2bced68f2bb0" />

---
  - **Top 5 Bowlers with Most Wickets**

  <img width="581" alt="image" src="https://github.com/user-attachments/assets/ce58edb4-e11f-4cc6-826f-4fb83209c395" />

---
  - **Team-wise Average Score in 1st Inning**
 
  <img width="694" alt="image" src="https://github.com/user-attachments/assets/ca6f4752-c842-4fb4-b710-62f4ee17bcd6" />

---
  - **Bowler with Highest Dot Ball % (min 1000 balls)**
 
  <img width="470" alt="image" src="https://github.com/user-attachments/assets/e7a6f7ab-6597-417f-b45d-518d42fc5979" />

---
  - **Player with Most Sixes (Top 10)**
 
    <img width="738" alt="image" src="https://github.com/user-attachments/assets/9e3c326a-b538-485d-9509-635f452db9dc" />

---
  - **Most Consistent Batsmen Across Seasons (Top 10)**
 
    <img width="695" alt="image" src="https://github.com/user-attachments/assets/04279c55-362b-435c-9b6d-62aa59263b16" />

---
  - **Top 3 Scorers per Season**
 
    <img width="718" alt="image" src="https://github.com/user-attachments/assets/def768c4-a04d-4356-83c1-a5b53a4aaf17" />

---
  - **Season-wise Top Wicket Taker**
 
    <img width="734" alt="image" src="https://github.com/user-attachments/assets/e5f68e16-5616-4813-8512-9ccc6e32156f" />

---
  - **Bowlers with Best Economy in Each Season**
 
    <img width="746" alt="image" src="https://github.com/user-attachments/assets/3556f9ef-fa3c-47e1-91fa-609b16331fee" />

---
  - **Players Who Improved Strike Rate Over Time**
 
    <img width="736" alt="image" src="https://github.com/user-attachments/assets/95ebdaf7-065e-462a-a3a9-5189b37f95b7" />

---
  - **Dismissal Trends of a Batter**
 
    <img width="736" alt="image" src="https://github.com/user-attachments/assets/7cdc79b9-7b51-4a38-9a5b-5df1f2526990" />

---







##  Datasets Used

- `matches.csv`
- `deliveries.csv`

(*IPL datasets publicly available on Kaggle*)


##  Project Highlights

- Performed **data wrangling & visualization** using **Python (pandas, matplotlib, seaborn)**
- Applied **SQL** to extract insights from structured datasets
- Built interactive BI reports in **Power BI**, showcasing IPL insights

