SELECT
    p.PostID,
    p.PostTitle,
    ca.Category_Name,
    p.PostScore,
    COUNT(c.CommentID) AS CommentCount,
    avg(c.CommentScore) as AvgCommentScore,
    p.Timestamp AS Post_Time,
    MAX(c.Timestamp) AS LastCommentTimestamp,
    DATEDIFF(MAX(c.Timestamp),p.Timestamp) AS PostActivityDurationDays
FROM Post p
LEFT JOIN Comments c ON p.PostID = c.PostID
LEFT JOIN category ca ON p.CategoryID = ca.CategoryID
GROUP BY p.PostID, p.PostTitle, p.PostScore, ca.Category_Name
ORDER BY PostScore DESC;
