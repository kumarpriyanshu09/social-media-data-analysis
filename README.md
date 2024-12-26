# Social Media Platform Data Analysis

This project explores user engagement and content performance on a social media platform using SQL and data analysis techniques. The goal is to provide insights that can inform platform development, content strategy, and marketing efforts.

## Project Overview

This analysis utilizes a dataset containing information on users, posts, comments, and categories. It focuses on answering key questions such as:
- What are the most engaging content categories?
- Which users are the most active and influential?
- What devices and operating systems are most commonly used by users?
- What is the daily pattern of user activity in different countries?
  
## Key Features
   * **User Analysis Report**:  Identifies highly engaged users and their patterns.
  * **Post Performance Analysis**:  Analyzes post engagement, including comment scores and activity over time, to understand which posts perform best.
   * **Device Popularity Report**:   Identifies the most popular devices and operating systems used in different countries.
  * **User Activity Analysis by Country and Hour:** Shows user activity patterns and peak hours by country.
   * **Category Popularity Across Subreddits:** Explores which subreddits within which content categories are most popular.

## Files

* `post_data.csv`: Contains data about posts, including titles, text, scores, and timestamps.
* `Category.csv`: Lists different categories of content on the platform.
* `comments.csv`: Stores information on user comments, including associated posts, scores, and timestamps.
* `topic_data.csv`: Contains information about various discussion topics.
*   `Region.csv`: Contains information on different regions and countries.
*  `device_data.csv`: Contains data about user devices.
*  `Subreddit.csv`: Contains information about various subreddits.
*   `users_data.csv`: Data on platform users, including IDs and impression scores.
*   `sql_queries/`: Folder containing all SQL queries used for analysis.

## Technologies Used

*   SQL (for querying the database)
*   Data analysis techniques

## How to Use

1.  Download all the files from this repository.
2.  Import the data files into a database system.
3.  Run the SQL queries provided in the `sql_queries` directory to reproduce the analysis.

## Notes
Missing Files: Due to the nature of an academic project, please note that the data creation scripts or original database setup scripts might not be included in this repository. The data files here reflect the state of the database from which the analysis was performed.
