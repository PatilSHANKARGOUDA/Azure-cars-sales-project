Create table source_cars_data
(	
	Branch_ID varchar(2000),
	Dealer_ID varchar(2000),
	Model_ID varchar(2000),
	Revenue varchar(2000),
	Units_Sold INT,
	Date_ID varchar(2000),
	Day INT,
	Month INT,
	Year INT,
	BranchName varchar(2000),
	DealerName varchar(2000),
	Product_Name varchar(2000)
)

create table water_mark_table
(
	last_date_flag varchar(2000)
)

insert into water_mark_table(last_date_flag) values ('DT00000')

--SP
CREATE PROCEDURE updateWaterMarkTable
	@last_date_flag VARCHAR(2000)
AS 
BEGIN
	BEGIN TRANSACTION;

	UPDATE water_mark_table SET last_date_flag = @last_date_flag;

	COMMIT TRANSACTION;
END

