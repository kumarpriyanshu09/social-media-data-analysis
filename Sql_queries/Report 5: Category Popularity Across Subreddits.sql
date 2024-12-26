SELECT
    c.Category_Name,
    s.SubredditName,
    SUM(subquery.TotalEngagement) AS TotalEngagement
FROM
    category c
LEFT JOIN (
    SELECT
        p.CategoryID,
        p.SubredditID,
        SUM(p.PostScore) + SUM(c.CommentScore) AS TotalEngagement
    FROM
        Post p
    LEFT JOIN
        Comments c ON p.PostID = c.PostID
    GROUP BY
        p.CategoryID,
        p.SubredditID
) AS subquery ON c.CategoryID = subquery.CategoryID
LEFT JOIN
    Subreddit s ON subquery.SubredditID = s.SubredditID
GROUP BY
    c.Category_Name,
    s.SubredditName
ORDER BY
    TotalEngagement DESC;
