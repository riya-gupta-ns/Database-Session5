--TRIGGER FOR DELETION
CREATE TRIGGER AfterDELETETriggers on [EmployeeDetail]
FOR DELETE 
AS DECLARE @EmployeeDetailId BIGINT,
			@Salary INT,
           @JoiningDate DATE,
	   @EmployeeId BIGINT,
	   @DateOfBirth VARCHAR(60),
	   @Position INT ;
PRINT 'We Successfully Fired the AFTER DELETE Triggers in SQL Server.'
GO


SELECT * FROM EmployeeDetail

DELETE FROM EmployeeDetail WHERE EmployeeId=14


--TRIGGER FOR INSERTION
CREATE TRIGGER AfterInsertEmployee
ON [EmployeeDetail]
FOR INSERT
 AS DECLARE @EmployeeDetailId BIGINT,
			@Salary INT,
           @JoiningDate DATE,
	   @EmployeeId BIGINT,
	   @DateOfBirth VARCHAR(60),
	   @Position INT ;
 PRINT 'Successfully Fired the the After insert Trigger'
 GO

 SELECT * FROM EmployeeDetail

 INSERT INTO EmployeeDetail VALUES(11000,'1998-12-12',14,'Ad@gmail.com',3)



--CREATE INDEX
 CREATE INDEX EmployeeIndex on EmployeeDetail(Salary , JoiningDate) 



--CURSOR
DECLARE @emp_id int ,@emp_joiningdate varchar(20),
    @message varchar(max);

DECLARE emp_cursor CURSOR FOR
SELECT EmployeeId, JoiningDate
FROM EmployeeDetail
order by EmployeeId;

OPEN emp_cursor

