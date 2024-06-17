SELECT d.Name AS Department,d.GroupName, ed.EmployeeID,sh.Name AS Shift , ed.StartDate, ed.EndDate
FROM `tc-da-1.adwentureworks_db.EmployeeDepartmentHistory` ed
JOIN `tc-da-1.adwentureworks_db.department` d
ON ed.DepartmentID=d.DepartmentID
JOIN `tc-da-1.adwentureworks_db.shift` sh
ON ed.ShiftID=sh.ShiftID