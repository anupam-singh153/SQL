CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE offset_val INT;
    SET offset_val = N-1;

    RETURN (
      # Write your MySQL query statement below.
        SELECT DISTINCT SALARY
        FROM EMPLOYEE
        ORDER BY SALARY DESC
        LIMIT offset_val, 1
  );
END
