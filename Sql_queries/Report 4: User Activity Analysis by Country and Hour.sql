SELECT
    r.country,
    COUNT(u.UserID) TotalUser,
    AVG(HOUR(p.Timestamp)) PeakPostHour,
    AVG(HOUR(c.Timestamp)) AS PeakCommentHour,
    (AVG(HOUR(p.Timestamp)) + AVG(HOUR(c.Timestamp))) / 2 AS peakActivityHour
FROM
    Region r
JOIN USER u ON r.RegionID = u.RegionID
JOIN Post p ON u.UserID = p.UserID
JOIN Comments c ON c.PostID = p.PostID
GROUP BY
    r.country;
