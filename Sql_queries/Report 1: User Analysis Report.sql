SELECT
    sub.UserID,
    sub.UserName,
    sub.TotalPosts,
    sub.TotalComments,
    sub.TotalCommentScore,
    sub.totalPostScore,
    sub.UserKarma,
    CASE
        WHEN sub.TotalPosts > 1 AND sub.TotalComments > 1 THEN 'High Engagement'
        WHEN sub.TotalPosts > 0 OR sub.TotalComments > 0 THEN 'Moderate Engagement'
        ELSE 'Low Engagement'
    END AS EngagementType
FROM (
    SELECT
        u.UserID,
        u.UserName,
        COUNT(DISTINCT p.PostID) AS TotalPosts,
        COUNT(DISTINCT c.CommentID) AS TotalComments,
        SUM(c.CommentScore) AS TotalCommentScore,
        SUM(p.PostScore) as TotalPostScore,
        u.UserKarma
    FROM USER u
    LEFT JOIN Post p ON u.UserID = p.UserID
    LEFT JOIN Comments c ON u.UserID = c.UserID
    GROUP BY u.UserID, u.UserName
) sub
ORDER BY sub.UserKarma DESC;
