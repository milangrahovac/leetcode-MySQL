-- 180. Consecutive Numbers

-- Write a SQL query to find all numbers that appear at least three times consecutively.

-- +----+-----+
-- | Id | Num |
-- +----+-----+
-- | 1  |  1  |
-- | 2  |  1  |
-- | 3  |  1  |
-- | 4  |  2  |
-- | 5  |  1  |
-- | 6  |  2  |
-- | 7  |  2  |
-- +----+-----+

-- For example, given the above Logs table, 1 is the only number that appears consecutively for at least three times.

-- +-----------------+
-- | ConsecutiveNums |
-- +-----------------+
-- | 1               |
-- +-----------------+


SELECT DISTINCT(a.Num) AS ConsecutiveNums
FROM Logs a, Logs b, Logs c
WHERE a.Id = b.Id - 1 and a.Id = c.Id - 2
and a.Num = b.Num and a.Num = c.Num;
