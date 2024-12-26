# Social Media Platform Data Analysis

This project explores user engagement and content performance on a social media platform using SQL and data analysis techniques. The goal is to provide insights that can inform platform development, content strategy, and marketing efforts.

## Project Overview

This analysis utilizes a dataset containing information on users, posts, comments, and categories to understand how users interact with a social media platform. It focuses on answering key questions such as:

- What are the most engaging content categories?
- Which users are the most active and influential?
- What devices and operating systems are most commonly used by users?
- What is the daily pattern of user activity in different countries?

## Key Findings

### 1. User Analysis Report
This report analyzes user engagement levels and patterns. Key findings include:
- Identified a few high engagement users like `FoodExplorer, TechPro, CulinaryAdventurer`, showing that these users were high in both posts and comments.
- Differentiated between user engagement levels, classifying users into `High`, `Moderate`, and `Low` engagement categories, allowing the platform to personalize user engagement.
  * High engagement users were the ones who both post and comment frequently.
  * Moderate Engagement users were the ones who either posted or commented frequently.
  * Low engagement users were those who neither posted nor commented frequently.

### 2. Post Performance Analysis
This report analyzes post engagement based on comment scores and activity over time to understand which posts perform best. Some of the key findings from this analysis are:
- Posts within the `Tech Support`, `Solo Travel`, and `Gadget Reviews` categories have the highest scores, indicating a high interest from users.
- The highest number of comments for posts were on the categories `Tech Troubleshooting` which was related to `Tech Support` and `Fitness Challenges`, which was related to `Fit Challenges`
- Posts related to `Fitness tips` and `Food Recipes` have higher comment count, showing that these posts encourage user interaction
- The analysis shows that the category `Gaming Strategies` has lower post scores and comments.

### 3. Device Popularity Report
This report identifies the most popular devices and operating systems used by users in different countries. Key findings:
- `Windows` and `Android` are the most popular operating systems used in the platform, particularly in India and Norway.
- A variety of other operating systems are also used, such as `macOS`, `iOS`, `Tizen OS`, `Garmin OS`, `Nintendo OS`, `Bluetooth`, and `PlayStation OS`, indicating the need for cross-platform support.
- The report also shows a low number of devices using `Fitbit OS` and `Xbox OS`.

### 4. User Activity Analysis by Country and Hour
This report shows user activity patterns and peak hours by country:
- Brazil has the highest average peak activity hour of `14.5`, indicating that the users in Brazil have the highest engagement on the platform in general.
- Users in Spain and Sweden have higher average peak comment hours of `12.75` and `13.5` respectively.
- Users in UAE have a very low peak average activity hour of `8.8`.

### 5. Category Popularity Across Subreddits
This report explores which subreddits within which content categories are most popular:
- The `Tech Support` category has the highest total engagement, with `TechnologyEnthusiasts` being the most popular subreddit within this category.
- High engagement subreddits can be observed in other categories such as `Fit Challenges`, `GamingWorld`, `TravelExplorers`, `FoodLovers` and `FitnessFanatics`
- A few subreddits from different categories had lower or no engagement.

## Files

* `post_data.csv`: Contains data about posts, including titles, text, scores, and timestamps.
* `Category.csv`: Lists different categories of content on the platform.
* `comments.csv`: Stores information on user comments, including associated posts, scores, and timestamps.
* `topic_data.csv`: Contains information about various discussion topics.
* `Region.csv`: Contains information on different regions and countries.
* `device_data.csv`: Contains data about user devices.
* `Subreddit.csv`: Contains information about various subreddits.
* `users_data.csv`: Data on platform users, including IDs and impression scores.
* `sql_queries/`: Folder containing all SQL queries used for analysis.

## Technologies Used

*   SQL (for querying the database)
*   Data analysis techniques

## How to Use

1.  Download all the files from this repository.
2.  Import the data files into a database system.
3.  Run the SQL queries provided in the `sql_queries` directory to reproduce the analysis.

## Notes

Due to the nature of an academic project, please note that the data creation scripts or original database setup scripts might not be included in this repository. The data files here reflect the state of the database from which the analysis was performed.
