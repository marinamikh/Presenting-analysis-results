SELECT ea.EmployeeID, a.City, sp.StateProvinceCode, sp.CountryRegionCode, sp.Name, st.Name AS TerritoryName, st.Group
FROM `tc-da-1.adwentureworks_db.employeeaddress` ea
JOIN `tc-da-1.adwentureworks_db.address` a
ON ea.AddressID=a.AddressID
JOIN `tc-da-1.adwentureworks_db.stateprovince` sp
ON a.StateProvinceID=sp.StateProvinceID
JOIN `tc-da-1.adwentureworks_db.salesterritory` st
ON sp.TerritoryID=st.TerritoryID