USE HoopsLinkDB;
-- Performance reviews for coaches
SELECT r.reviewID, c.coachName, r.reviewDate, r.performanceScore, r.comments
FROM Reviews r
JOIN Coaches c ON r.coachID = c.coachID;
