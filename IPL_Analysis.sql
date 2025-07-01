/* Data Exploration */

-- To view the structure of tables --
select *from matches;
select *from deliveries;

-- Check data types and nulls --
describe matches;
describe deliveries;

-- Counting total Records --
select count(*) from matches;
select count(*) from deliveries;

-- Identifying Missing Data --
select 
	count(*) as Total_Rows,
    count(case when city is null then 1 end) as Null_City,
    count(case when winner is null then 1 end) as Null_Winner,
    count(case when player_of_match is null then 1 end) as Null_POM
from matches;

select 
	count(*) as Total_Rows,
    count(case when bowler is null then 1 end) as Null_Bowler,
    count(case when batter is null then 1 end) as Null_Batter,
    count(case when batsman_runs is null then 1 end) as Null_BR
from deliveries;
    
-- Identifying Anomalous Data --
/* checking for Negative Runs */
select *from deliveries where batsman_runs < 0 or total_runs < 0; 

/* Invalid Overs */
select * 
from deliveries 
where (ovr < 0 or ovr > 19) ;


/* Data Cleaning */
update matches
set season = 
case
	when season = '2007/08' then '2008'
	when season = '2009/10' then '2010'
	when season = '2020/21' then '2020'
else season
end;
---------------
update matches
set city = 
case
	when city = 'Bengaluru' then 'Bengalore'
else city
end;
---------------
update matches
set city = 
case
	when city = 'NA' then 'Dubai'
else city
end
where venue = 'Dubai International cricket Stadium';
---------------
update matches
set city = 
case
	when city = 'NA' then 'Dubai'
else city
end
where venue = 'Dubai International cricket Stadium';
---------------
update matches
set city = 
case
	when city = 'NA' then 'Sharjah'
else city
end
where venue = 'Sharjah Cricket Stadium';
---------------
update matches
set venue = 
case 
	when venue = 'Arun jaitley Stadium, Delhi' then 'Arun Jaitley Stadium'
    when venue = 'Brabourne Stadium, Mumbai' then 'Brabourne Stadium'
    when venue = 'Dr DY Patil Sports Academy, Mumbai' then 'Dr DY Patil Sports Academy'
    when venue = 'Dr. Y.S. Rajasekhara Reddy ACA-VDCA Cricket Stadium, Visakhapatnam' then 'Dr. Y.S. Rajasekhara Reddy ACA-VDCA Cricket Stadium'
    when venue = 'Eden Gardens, Kolkata' then 'Eden Gardens'
    when venue in ('Himachal Pradesh Cricket Association Stadium', 'Himachal Pradesh Cricket Association Stadium, Dharamsala') then 'Dharamsala'
    when venue in ('M Chinnaswamy Stadium, Bengaluru', 'M.Chinnaswamy Stadium') then 'M Chinnaswamy Stadium'
    when venue in ('MA Chidambaram Stadium, Chepauk, Chennai', 'MA Chidambaram Stadium, Chepauk') then 'MA Chidambaram Stadium'
    when venue = 'MA Chidambaram Stadium' then 'Maharashtra Cricket Association Stadium'
    when venue in ('Punjab Cricket Association IS Bindra Stadium, Mohali', 'Punjab Cricket Association IS Bindra Stadium, Mohali, Chandigarh', 'Punjab Cricket Association Stadium, Mohali') then 'Punjab Cricket Association IS Bindra Stadium'
    when venue in ('Rajiv Gandhi International Stadium, Uppal', 'Rajiv Gandhi International Stadium, Uppal, Hyderabad') then 'Rajiv Gandhi International Stadium'
    when venue = 'Sawai Mansingh Stadium, Jaipur' then 'Sawai Mansingh Stadium'
    when venue = 'Zayed Cricket Stadium, Abu Dhabi' then 'Sheikh Zayed Stadium'
    when venue = 'Wankhede Stadium, Mumbai' then 'Wankhede Stadium'
else venue
end;
---------------
update matches
set team1 =
case
	when team1 = 'Delhi Daredevils' then 'Delhi Capitals'
    when team1 = 'Kings XI Punjab' then 'Punjab Kings'
    when team1 = 'Rising Pune Supergiant' then 'Rising Pune Supergiants'
    when team1 = 'Royal Challengers Bengaluru' then 'Royal Challengers Bangalore'
else team1
end;
---------------
update matches
set team2 =
case
	when team2 = 'Delhi Daredevils' then 'Delhi Capitals'
    when team2 = 'Kings XI Punjab' then 'Punjab Kings'
    when team2 = 'Rising Pune Supergiant' then 'Rising Pune Supergiants'
    when team2 = 'Royal Challengers Bengaluru' then 'Royal Challengers Bangalore'
else team2
end;
---------------
update matches
set toss_winner =
case
	when toss_winner = 'Delhi Daredevils' then 'Delhi Capitals'
    when toss_winner = 'Kings XI Punjab' then 'Punjab Kings'
    when toss_winner = 'Rising Pune Supergiant' then 'Rising Pune Supergiants'
    when toss_winner = 'Royal Challengers Bengaluru' then 'Royal Challengers Bangalore'
else toss_winner
end;
---------------
update matches
set winner =
case
	when winner = 'Delhi Daredevils' then 'Delhi Capitals'
    when winner = 'Kings XI Punjab' then 'Punjab Kings'
    when winner = 'Rising Pune Supergiant' then 'Rising Pune Supergiants'
    when winner = 'Royal Challengers Bengaluru' then 'Royal Challengers Bangalore'
else winner
end;
---------------
update deliveries
set batting_team =
case
	when batting_team = 'Delhi Daredevils' then 'Delhi Capitals'
    when batting_team = 'Kings XI Punjab' then 'Punjab Kings'
    when batting_team = 'Rising Pune Supergiant' then 'Rising Pune Supergiants'
    when batting_team = 'Royal Challengers Bengaluru' then 'Royal Challengers Bangalore'
else batting_team
end;
---------------
update deliveries
set bowling_team =
case
	when bowling_team = 'Delhi Daredevils' then 'Delhi Capitals'
    when bowling_team = 'Kings XI Punjab' then 'Punjab Kings'
    when bowling_team = 'Rising Pune Supergiant' then 'Rising Pune Supergiants'
    when bowling_team = 'Royal Challengers Bengaluru' then 'Royal Challengers Bangalore'
else bowling_team
end;


/* Data Analysis */

-- 1. Total Matches Played Per Season --
select season, count(*) as total_matches from matches group by season order by total_matches desc;

-- 2. Most Matches Won by Each Team --
select winner, count(*) as matches_won from matches group by winner order by matches_won desc;

-- 3. Top 5 players with most Player of the match Awards --
select player_of_match as player_name, count(*) as count_pom from matches
group by player_name
order by count_pom desc limit 5;

-- 4. Count of matches played in each venue --
select venue, count(*) as matches_played from matches
group by venue
order by matches_played desc;

-- 5. which team won the most tosses --
select toss_winner as team, count(*) as toss_won
from matches group by toss_winner
order by toss_won desc limit 1;

-- 6. Top 5 run Scorers --
select batter, sum(batsman_runs) as run_scored
from deliveries
group by batter
order by run_scored desc limit 5;

-- 7. Top 5 bowlers with most wickets --
select bowler, count(*) as wickets
from deliveries
where is_wicket = 1 and dismissal_kind not in ('run out', 'retired hurt')
group by bowler
order by wickets desc limit 5;

-- 8. Team wise average Score in 1st inning --
select batting_team as team, avg(total_score) as avg_score
from(
		select match_id, batting_team, sum(total_runs) as total_score
        from deliveries
        where inning = 1
        group by match_id, batting_team
) as match_scores
group by team
order by avg_score desc;

-- 9. which bowler has highest dot ball % min 1000 balls --
select bowler, count(case when total_runs = 0 then 1 end) * 100 / count(*) as dot_perc
from deliveries
group by bowler
having count(*) > 1000
order by dot_perc desc;

-- 10. which player has hit most sixes --
select batter as player, count(*) as most_six
from deliveries
where batsman_runs = 6 
group by player
order by most_six desc
limit 1;

-- 11. Most Consistent Batsmen Across Seasons --
select batter,
       count(*) as seasons_played,
       round(avg(total_runs), 2) as avg_runs,
       round(stddev_pop(total_runs), 2) as std_dev
from (
    select m.season, d.batter, sum(d.batsman_runs) as total_runs
    from deliveries d
    join matches m on d.match_id = m.id
    group by m.season, d.batter
) as season_runs
group by batter
having seasons_played >= 7 and sum(total_runs) > 2000
order by  std_dev asc, avg_runs desc
limit 10;

-- 12. Top 3 Scorers per Season --
with player_runs as (
  select m.season, d.batter, sum(d.batsman_runs) as total_runs
  from deliveries d
  join matches m on d.match_id = m.id
  group by m.season, d.batter
),
ranked_players as (
  select *, rank() over (partition by season order by total_runs desc) as rnk
  from player_runs
)
select * from ranked_players
where rnk <= 3
order by season, rnk;

-- 13. Season-wise Top Wicket Taker --
with season_wickets as (
  select m.season, d.bowler, count(*) as wickets
  from deliveries d
  join matches m on d.match_id = m.id
  where d.is_wicket = 1 
  and d.dismissal_kind not in('run out', 'retired hurt','obstructing the field')
  group by m.season, d.bowler
),
ranked_wickets as(
	select *, rank() over(partition by season order by wickets desc) as rnk
    from season_wickets
)
select * from ranked_wickets
where rnk = 1
order by season;

-- 14. Bowlers with Best Economy in Each Season --
with season_eco as (
  select m.season, d.bowler,  count(*) as total_delivery, 
  sum(case when d.extras_type not in ('wides', 'noballs') or 
  d.extras_type is null
  then 1 else 0 end) as legal_balls,
  sum(case when d.extras_type in('byes', 'legbyes') then 0 else d.total_runs end) as runs
  from deliveries d
  join matches m on d.match_id = m.id
  group by m.season, d.bowler
 having legal_balls > 120
),
ranked_bowler as(
	select *, round(runs * 6 / legal_balls, 2) as economy, 
    row_number() over(partition by season order by runs * 6 / legal_balls asc) as rnk
    from season_eco
)
select * from ranked_bowler
where rnk = 1
order by season;

-- 15. Players Who Improved Strike Rate Over Time --
with season_sr as(
		select m.season, d.batter, count(*) as ball_faced,
        sum(d.batsman_runs) as runs,
        round(sum(d.batsman_runs) * 100 / count(*),2) as strike_rate
        from deliveries d join matches m
        on d.match_id = m.id
        group by m.season, d.batter
        ),
        with_lag as(
        select *, lag(strike_rate) over(partition by batter order by season) as prev_sr
        from season_sr
        )
        select * from with_lag
        where prev_sr is not null and strike_rate > prev_sr;
        
-- 16. Dismissal Trends of a Batter --
with dismissal as(
	select batter, dismissal_kind,
    count(*) as dismissals
    from deliveries
    where dismissal_kind is not null 
    group by batter, dismissal_kind
),
trend as(
	select *, rank() over(partition by batter order by dismissal_kind) as rnk
    from dismissal
)
select * from trend
where rnk <= 3 and dismissal_kind != 'NA';



