# IPL_Data_Analysis

This project is a comprehensive data analysis and visualization of Indian Premier League (IPL) data using **SQL** and **Python**

##  Project Structure

```
IPL-Analysis/
├── IPL_Analysis.sql           # SQL data cleaning and analysis queries
├── IPL_Analytics.ipynb        # Python data exploration and visualizations (Matplotlib/Seaborn)
└── README.md                  # Project overview and documentation
```

##  Objectives

- Clean and Preprocess IPL match and delivery data using SQL
- Perform detailed analysis to extract key performance insights
- Visualize trends, patterns, and top performers using:
  - Python (Jupyter Notebook)
 

## 🔍 SQL Analysis

Located in [`IPL_Analysis.sql`](IPL_Analysis.sql)

-  Data Cleaning (nulls, inconsistencies in team/venue names)
-  Match-wise and season-wise metrics
-  Top players by runs, wickets, sixes and player of the match award
-  Count of matches played in each venue, which team won the most tosses
-  Team wise average score in 1st inning
-  Which bowler has highest dot ball % min 1000 balls
-  Most consistent batsmen across seasons
-  Strike rate improvements over time
-  Top 3 scorers per season
-  Season-wise top wicket taker
-  Bowlers with best economy in each season
-  Players who improved strike rate over time
-  Dismissal analysis by player


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

(*IPL datasets publicly available on Kaggle*) -- https://www.kaggle.com/datasets/patrickb1912/ipl-complete-dataset-20082020


##  Project Highlights

- Performed **data wrangling & visualization** using **Python (pandas, matplotlib, seaborn)**
- Applied **SQL** to extract insights from structured datasets

## Key Insights
- Mumbai Indians and Chennai Super Kings have emerged as the most dominant IPL teams in terms of total match wins.

- Virat Kohli holds the record for scoring the most runs in IPL history, followed by Shikhar Dhawan and David Warner.

- Yuzvendra Chahal leads wicket taking chart and Piyush Chawla close behind.

- Toss-winners have only a slight advantage — winning about 52% of the matches.

- Wankhede Stadium, Chinnaswamy and Eden Gardens are among the top venues, hosting the highest number of matches.

- Average team scores around 167 to 180, top 5 teams.

- Year-wise Trends show an increase in total runs scored per match over the seasons, indicating more aggressive gameplay.

- Most Player of the Match awards goes to AB Devilliers.






