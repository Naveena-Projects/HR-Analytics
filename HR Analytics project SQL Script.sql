-- SQL PROJECT - HR Analytics

-- SOURCE DATA -> hrdata table
CREATE TABLE hrdata(EmployeeID INT, Age INT ,Gender TEXT, Department TEXT, Position TEXT, 
			 YearsOfService INT, Salary INT, PerformanceRating INT, WorkHours INT, Attrition TEXT, 
             Promotion TEXT, TrainingHours INT, SatisfactionScore INT, LastPromotionDate TEXT);
INSERT INTO hrdata (EmployeeID, Age, Gender, Department, Position, YearsOfService, Salary, PerformanceRating, 
					WorkHours, Attrition, Promotion, TrainingHours, SatisfactionScore, LastPromotionDate)
			VALUES	(1, 35, 'M', 'IT', 'DataScientist', 7, 75000, 4, 39, 'No', 'No', 30, 2, '2021-11-18'),
					(2, 29,'M', 'IT', 'DataScientist', 5, 60000, 4, 43, 'No', 'No', 15, 2, '2022-03-08'),
					(3, 29, 'F', 'IT', 'DataScientist', 5, 70000, 5, 45, 'No', 'No', 20, 4, '2022-02-25'),
					(4, 32, 'Male', 'IT', 'DataScientist', 4, 60000, 4, 39, 'No', 'No', 25, 3, '2022-01-28'),
					(5, 31, 'M', 'IT', 'DataScientist', 5, 60000, 4, 44, 'Yes', 'No', 10, 4, '2022-01-20'),
					(6, 29, 'M', 'IT', 'DataScientist', 5, 60000, 4, 44, 'Yes', 'No', 10, 3, '2021-09-28'),
					(7, 35, 'M', 'IT', 'Data Scientist', 7, 60000, 4, 40, 'Yes', 'Yes', 25, 3, '2022-01-15'),
					(8, 30, 'Male', 'IT', 'Data Scientist', 4, 60000, 4, 39, 'No', 'No', 15, 3, '2022-01-05'),
					(9, 33, 'M', 'IT', 'Data Scientist', 4, 60000, 4, 44, 'No', 'No', 15, 4, '2021-11-20'),
					(10, 27, 'Male', 'IT', 'Data Scientist', 3, 60000, 5, 38, 'No', 'No', 10, 5, '2022-03-08'),
					(11, 33, 'M', 'IT', 'Data Scientist', 5, 60000, 4, 41, 'No', 'No', 15, 3, '2022-01-10'),
					(12, 32, 'Male', 'IT', 'Data Scientist', 4, 75000, 4, 37, 'No', 'No', 20, 2, '2022-02-28'),
					(13, 26, 'F', 'IT', 'Data Scientist', 2, 50000, 5, 45, 'No', 'No', 15, 5, '2022-02-10'),
					(14, 28, 'M', 'IT', 'DataScientist', 5, 60000, 5, 38, 'No', 'Yes', 25, 5, '2022-02-22'),
					(15, 31, 'M', 'IT', 'DataScientist', 4, 60000, 5, 45, 'Yes', 'No', 10, 5, '2022-01-05'),
					(16, 33, 'Male', 'IT', 'DataScientist', 7, 75000, 4, 42, 'Yes', 'No', 15, 4, '2021-11-18'),
					(17, 30, 'M', 'IT', 'DataScientist', 5, 60000, 5, 45, 'No', 'No', 15, 5, '2022-03-08'),
					(18, 29, 'F', 'IT', 'Data Scientist', 5, 70000, 5, 38, 'No', 'No', 15, 5, '2022-02-25'),
					(19, 27, 'F', 'IT', 'Data Scientist', 3 , 55000, 5, 45, 'Yes', 'Yes', 20, 4, '2022-03-15'),
					(20, 32, 'M', 'IT', 'Data Scientist', 4, 60000, 5, 45, 'No', 'No', 20, 5, '2022-01-28'),
					(21, 31, 'Male', 'IT', 'Data Scientist', 5, 60000, 5, 45, 'No', 'No', 30, 5, '2022-01-20'),
					(22, 29, 'M', 'IT', 'Data Scientist', 5, 60000, 5, 39, 'No', 'No', 15, 4, '2021-09-28'),
					(23, 35, 'M', 'IT', 'Data Scientist', 8, 60000, 5, 45, 'Yes', 'No', 20, 2, '2022-01-15'),
					(24, 30, 'M', 'IT', 'Data Scientist', 5, 60000, 5, 45, 'Yes', 'No', 10, 3, '2022-01-20'),
					(25, 30, 'M', 'IT', 'Data Scientist', 6, 60000, 5, 45, 'No', 'No', 20, 4, '2022-01-05'),
					(26, 33, 'Male', 'IT', 'Data Scientist', 9, 60000, 5, 39, 'No', 'No', 15, 5, '2021-11-20'),
					(27, 33, 'M', 'IT', 'Data Scientist', 8, 60000, 5, 45, 'No', 'No', 15, 5, '2022-01-10'),
					(28, 32, 'M', 'IT', 'Data Scientist', 7, 75000, 4, 43, 'Yes', 'No', 20, 2, '2022-02-28'),
					(29, 30, 'M', 'IT', 'Data Scientist', 5, 60000, 4, 40, 'No', 'No', 15, 2, '2022-01-20'),
					(30, 28, 'Female', 'Finance', 'Financial Analyst', 3, 80000, 4, 42, 'No', 'Yes', 30, 5, '2022-01-15'),
					(31, 32, 'F', 'Finance', 'Financial Analyst', 4, 80000, 3, 37, 'No', 'No', 15, 3, '2021-12-05'),
					(32, 28, 'Female', 'Finance', 'Financial Analyst', 3, 80000, 4, 43, 'No', 'No', 20, 3, '05-03-2022'),
					(33, 27, 'F', 'Finance', 'Financial Analyst', 3, 80000, 4, 43, 'Yes', 'No', 20, 3, '05-03-2022'),
					(34, 30, 'Female', 'Finance', 'Financial Analyst', 4, 80000, 4, 38, 'No', 'Yes', 30, 4, '05-03-2022'),
					(35, 28, 'F', 'Finance', 'Financial Analyst', 3, 80000, 4, 39, 'Yes', 'No', 20, 4, '28-02-2022'),
					(36, 32, 'Female', 'Finance', 'Financial Analyst', 8, 80000, 4, 42, 'Yes', 'No', 25, 4, '20-11-2021'),
					(37, 29, 'F', 'Finance', 'Financial Analyst', 3, 80000, 4, 44, 'Yes', 'No', 15, 3, '28-01-2022'),  
					(38, 29, 'F', 'Finance', 'Financial Analyst', 3, 80000, 4, 39, 'No', 'No', 25, 3, '15-09-2021'),
					(39, 28, 'F', 'Finance', 'Financial Analyst', 3, 80000, 4, 39, 'Yes', 'No', 25, 4, '15-01-2022'),
					(40, 28,'M', 'Finance', 'Financial Analyst', 3, 80000, 4, 40, 'Yes', 'Yes', 30, 3, '10-11-2021'),
					(41, 33, 'F', 'Finance', 'Financial Analyst', 8, 80000, 4, 41, 'Yes', 'No', 20, 3, '12-12-2021'),
					(42, 33, 'F', 'Finance', 'Financial Analyst', 6, 80000, 4, 41, 'No', 'Yes', 20, 4, '20-11-2021'),
					(43, 28, 'F', 'Finance', 'Financial Analyst', 3, 80000, 4, 40, 'No', 'No', 30, 4, '05-12-2021'),
					(44, 40, 'Male', 'Finance', 'Financial Analyst', 10, 80000, 4, 40, 'No', 'Yes', 30, 3, '28-11-2021'),
					(45, 32, 'Female', 'Finance', 'Financial Analyst', 6, 80000, 4, 42, 'Yes', 'No', 20, 5, '15-09-2021'),
					(46, 27, 'F', 'Finance', 'Financial Analyst', 3, 80000, 4, 43, 'Yes', 'No', 15, 4, '05-03-2022'),
					(47, 30, 'F', 'Finance', 'Financial Analyst', 6, 80000, 4, 42, 'No', 'Yes', 30, 4, '05-03-2022'),
					(48, 28, 'F', 'Finance', 'Financial Analyst', 4, 80000, 4, 40, 'No', 'No', 15, 5, '28-02-2022'),
					(49, 29, 'Female', 'Finance', 'Financial Analyst', 5, 80000, 4, 41, 'No', 'No', 15, 5, '28-01-2022'),
					(50, 29, 'F', 'Finance', 'Financial Analyst', 6, 80000, 4, 42, 'No', 'No', 20, 3, '15-09-2021'),
					(51, 31, 'F', 'Finance', 'Financial Manager', 11, 90000, 5, 42, 'No', 'No', 20, 5, '28-02-2022'),
					(52, 27, 'F', 'Finance', 'Financial Manager', 5, 90000, 4, 39, 'Yes', 'No', 20, 4, '28-09-2021'),
					(53, 35, 'M', 'Finance', 'Financial Manager', 8, 90000, 4, 42, 'Yes', 'No', 10, 3, '10-12-2021'),
					(54, 27, 'F', 'Finance', 'Financial Manager', 3, 90000, 5, 45, 'Yes', 'No', 20, 5, '10-01-2022'),
					(55, 34, 'M', 'Finance', 'Financial Manager', 8, 90000, 5, 45, 'Yes', 'Yes', 15, 5, '15-09-2021'),
					(56, 30, 'M', 'Finance', 'Financial Manager', 7, 90000, 5, 45, 'Yes', 'No', 25, 5, '28-09-2021'),
					(57, 35, 'M', 'Finance', 'Financial Manager', 9, 90000, 5, 45, 'Yes', 'No', 20, 4, '10-12-2021'),
					(58, 33, 'F', 'HR', 'HR Coordinator', 6, 55000, 3, 37, 'No', 'No', 15, 4, '25-01-2022'),
					(59, 28, 'F', 'HR', 'HR Coordinator', 3, 55000, 3, 43, 'No', 'No', 30, 3, '15-04-2022'),
					(60, 30, 'F', 'HR', 'HR Coordinator', 5, 55000, 3, 43, 'No', 'No', 30, 2, '12-04-2022'),
					(61, 31, 'Female', 'HR', 'HR Coordinator', 4, 55000, 3, 45, 'Yes', 'No', 20, 3, '10-12-2021'),
					(62, 35, 'F', 'HR', 'HR Coordinator', 6, 55000, 3, 38, 'No', 'Yes', 25, 4, '28-02-2022'),
					(63, 28, 'F', 'HR', 'HR Coordinator', 2, 55000, 3, 44, 'Yes', 'No', 15, 3, '18-04-2022'),
					(64, 36, 'F', 'HR', 'HR Coordinator', 7, 55000, 3, 37, 'No', 'No', 30, 4, '25-01-2022'),
					(65, 28, 'F', 'HR', 'HR Coordinator', 2, 55000, 3, 44, 'Yes', 'No', 20, 4, '15-04-2022'),
					(66, 30, 'F', 'HR', 'HR Coordinator', 6, 55000, 3, 37, 'No', 'No', 10, 3, '12-04-2022'),
					(67, 30, 'Female', 'HR', 'HR Coordinator', 6, 55000, 3, 44, 'Yes', 'No', 10, 3, '20-05-2022'),
					(68, 31, 'F', 'HR', 'HR Coordinator', 6, 55000, 3, 44, 'Yes', 'No', 20, 4, '10-12-2021'),
					(69, 35, 'F', 'HR', 'HR Coordinator', 9, 55000, 3, 37, 'No', 'Yes', 20, 4, '28-02-2022'),
					(70, 29, 'F', 'HR', 'HR Manager', 6, 65000, 3, 38, 'No', 'No', 20, 3, '15-02-2022'),
					(71, 33, 'F', 'HR', 'HR Manager', 6, 65000, 4, 41, 'No', 'No', 20, 4, '10-12-2021'),
					(72, 28, 'F', 'HR', 'HR Manager', 3, 65000, 3, 39, 'No', 'No', 25, 3, '28-12-2021'),
					(73, 29, 'F', 'HR', 'HR Manager', 3, 65000, 3, 38, 'No', 'No', 20, 3, '05-04-2022'),
					(74, 35, 'Female', 'HR', 'HR Manager', 9, 65000, 5, 45, 'No', 'No', 30, 5, '25-01-2022'),
					(75, 28, 'F', 'HR', 'HR Manager', 7, 65000, 5, 39, 'No', 'No', 30, 5, '10-12-2021'),
					(76, 30, 'F', 'HR', 'HR Manager', 7, 65000, 5, 45, 'No', 'No', 30, 5, '15-01-2022'),
					(77, 29, 'F', 'HR', 'HR Manager', 5, 65000, 5, 45, 'No', 'Yes', 20, 5, '20-01-2022'),
					(78, 29, 'F', 'HR', 'HR Manager', 6, 65000, 4, 41, 'No', 'No', 30, 5, '15-02-2022'),
					(79, 33, 'F', 'HR', 'HR Manager', 7, 65000, 5, 39, 'No', 'No', 15, 5, '10-12-2021'),
					(80, 28, 'F', 'HR', 'HR Manager', 4, 65000, 5, 39, 'No', 'No', 10, 4, '28-12-2021'),
					(81, 29, 'F', 'HR', 'HR Manager', 4, 65000, 5, 45, 'Yes', 'No', 15, 3, '05-04-2022'),
					(82, 28, 'F', 'Marketing', 'Marketing Analyst', 3, 52000, 3, 44, 'No', 'No', 25, 2, '10-02-2022'),
					(83, 28, 'F', 'Marketing', 'Marketing Analyst', 3, 52000, 3, 38, 'No', 'No', 15, 2, '02-09-2021'),
					(84, 26, 'F', 'Marketing', 'Marketing Analyst', 3, 52000, 3, 38, 'No', 'Yes', 30, 3, '05-12-2021'),
					(85, 29, 'F', 'Marketing', 'MarketingAnalyst', 3, 52000, 3, 42, 'No', 'No', 20, 3, '15-09-2021'),
					(86, 27, 'F', 'Marketing', 'MarketingAnalyst', 3, 52000, 3, 42, 'Yes', 'No', 25, 2, '15-02-2022'),
					(87, 33, 'F', 'Marketing', 'MarketingAnalyst', 6, 52000, 3, 39, 'No', 'No', 15, 4, '02-11-2021'),
					(88, 28, 'F', 'Marketing', 'MarketingAnalyst', 3, 52000, 3, 37, 'No', 'Yes', 25, 2, '05-03-2022'),
					(89, 31, 'F', 'Marketing', 'MarketingAnalyst', 5, 52000, 3, 40, 'No', 'No', 30, 4, '02-03-2022'),
					(90, 28, 'F', 'Marketing', 'MarketingAnalyst', 3, 70000, 4, 39, 'Yes', 'No', 15, 2, '25-02-2022'),
					(91, 31, 'F', 'Marketing', 'MarketingAnalyst', 4, 52000, 3, 38, 'No', 'No', 20, 4, '01-03-2022'),
					(92, 29, 'M', 'Marketing', 'Marketing Analyst', 6, 52000, 3, 38, 'No', 'No', 15, 4, '20-03-2022'),
					(93, 29, 'F', 'Marketing', 'Marketing Analyst', 5, 52000, 3, 38, 'No', 'Yes', 25, 4, '28-12-2021'),
					(94, 27, 'F', 'Marketing', 'Marketing Analyst', 4, 52000, 3, 38, 'No', 'No', 10, 4, '10-10-2021'),
					(95, 29, 'F', 'Marketing', 'MarketingAnalyst', 4, 52000, 3, 38, 'No', 'No', 15, 4, '05-04-2022'),
					(96, 32, 'F', 'Marketing', 'MarketingAnalyst', 6, 52000, 3, 38, 'No', 'No', 20, 3, '10-02-2022'),
					(97, 27, 'F', 'Marketing', 'MarketingAnalyst', 3, 52000, 3, 38, 'No', 'No', 30, 4, '02-09-2021'),
					(98, 29, 'F', 'Marketing', 'Marketing Analyst', 3, 52000, 3, 38, 'No', 'No', 15, 3, '15-09-2021'),
					(99, 27, 'F', 'Marketing', 'Marketing Analyst', 4, 52000, 3, 38, 'No', 'No', 20, 3, '15-02-2022'),
					(100, 33, 'F', 'Marketing', 'Marketing Analyst', 7, 52000, 3, 38, 'No', 'No', 30, 4, '02-11-2021'),
					(101, 28, 'F', 'Marketing', 'Marketing Analyst', 3, 52000, 3, 44, 'Yes', 'Yes', 25, 3, '05-03-2022'),
					(102, 31, 'F', 'Marketing', 'Marketing Analyst', 8, 52000, 3, 38, 'No', 'No', 30, 4, '02-03-2022'),
					(103, 28, 'F', 'Marketing', 'Marketing Analyst', 4, 60000,4, 42, 'Yes', 'No', 25, 4, '25-02-2022'),
					(104, 31, 'F', 'Marketing', 'Marketing Manager', 7, 70000,3, 44, 'Yes', 'No', 15, 4, '12-10-2021'),
					(105, 28, 'Male', 'Marketing', 'Marketing Manager', 4, 60000, 3, 39, 'Yes', 'No', 15, 3, '18-12-2021'),
					(106, 32, 'F', 'Marketing', 'Marketing Manager', 6, 70000, 3, 40, 'No', 'No', 25, 3, '12-11-2021'),
					(107, 31, 'F', 'Marketing', 'Marketing Manager', 5, 70000, 4, 43, 'Yes', 'No', 25, 4, '10-03-2022'),
					(108, 32, 'F', 'Marketing', 'Marketing Manager', 8, 70000, 4, 40, 'No', 'No', 30, 4, '15-11-2021'),
					(109, 29, 'M', 'Marketing', 'Marketing Manager', 5, 70000, 4, 42, 'Yes', 'No', 25, 4, '15-12-2021'),
					(110, 34, 'F', 'Marketing', 'Marketing Manager', 8,70000, 4, 40, 'Yes', 'No', 10, 4, '12-10-2021'),
					(111, 28, 'M', 'Marketing', 'Marketing Manager', 4, 70000, 4, 40, 'No', 'No', 30, 3, '18-12-2021'),
					(112, 32, 'F', 'Marketing', 'Marketing Manager', 7, 70000, 4, 40, 'No', 'No', 20, 4, '12-11-2021'),
					(113, 31, 'F', 'Marketing', 'Marketing Manager', 7, 70000, 4, 42, 'Yes', 'No', 30, 3, '10-03-2022'),
					(114, 36, 'M', 'Marketing', 'Marketing Manager', 7, 70000, 4, 39, 'No', 'No', 25, 4, '12-10-2021'),
					(115, 32, 'M', 'Sales', 'Sales Associate', 5, 50000, 4, 40, 'No', 'Yes', 20, 4, '15-02-2022'),
					(116, 30, 'M', 'Sales', 'Sales Associate', 4, 50000, 4, 45, 'No', 'No', 30, 2, '10-03-2022'),
					(117, 27, 'Male', 'Sales', 'Sales Associate', 3, 50000, 4, 37, 'No', 'No', 10, 3, '05-04-2022'),
					(118, 30, 'M', 'Sales', 'Sales Associate', 4, 50000, 4, 40, 'No', 'Yes', 20, 2, '20-03-2022'),
					(119, 36, 'M', 'Sales', 'Sales Associate', 7, 50000, 4, 40, 'Yes', 'No', 30, 3, '10-03-2022'),
					(120, 30, 'M', 'Sales', 'Sales Associate', 5, 50000, 4, 40, 'No', 'No', 10, 4, '10-03-2022'),
					(121, 27, 'M', 'Sales', 'Sales Associate', 5, 50000, 4, 41, 'No', 'No', 15, 4, '05-04-2022'),
					(122, 30, 'M', 'Sales', 'Sales Associate', 5, 50000, 4, 41, 'No', 'Yes', 30, 3, '20-03-2022'),
					(123, 32, 'M', 'Sales', 'Sales Manager', 4, 85000, 4, 38, 'No', 'Yes', 20, 2, '28-11-2021'),
					(124, 33, 'F', 'Sales', 'Sales Manager', 5, 85000, 4, 41, 'Yes', 'No', 30, 2, '28-02-2022'),
					(125, 34, 'Male', 'Sales', 'Sales Manager', 6, 85000, 4, 44, 'No', 'No', 20, 3, '25-03-2022'),
					(126, 38, 'M', 'Sales', 'Sales Manager', 12, 85000, 4, 41, 'No', 'No', 20, 4, '15-09-2021'),
					(127, 27, 'M', 'Sales', 'Sales Manager', 3, 85000, 4, 43, 'No', 'Yes', 30, 2, '02-03-2022'),
					(128, 32, 'M', 'Sales', 'Sales Manager', 4, 85000, 4, 40, 'No', 'No', 15, 3, '15-02-2022'),
					(129, 27, 'Male', 'Sales', 'Sales Manager', 3, 85000, 4, 39, 'No', 'No', 25, 3, '15-01-2022'),
					(130, 34, 'M', 'Sales', 'Sales Manager', 9, 85000, 4, 41, 'Yes', 'No', 10, 4, '02-09-2021'),
					(131, 31, 'Male', 'Sales', 'Sales Manager', 6, 85000, 4, 41, 'No', 'No', 25, 3, '02-04-2022'),
					(132, 27, 'Male', 'Sales', 'Sales Manager', 5, 85000, 4, 41, 'No', 'Yes', 25, 3, '28-11-2021'),
					(133, 33, 'F', 'Sales', 'Sales Manager', 6, 85000, 4, 41, 'No', 'No', 10, 4, '28-02-2022'),
					(134, 34, 'Male', 'Sales', 'Sales Manager', 8, 85000, 4, 41, 'No', 'No', 10, 3, '25-03-2022'),
					(135, 34, 'M', 'Sales', 'Sales Manager', 9, 85000, 4, 41, 'Yes', 'No', 10, 4, '08-01-2022'),
					(136, 27, 'M', 'Sales', 'Sales Manager', 4, 85000, 4, 41, 'No', 'Yes', 25, 3, '02-03-2022'),
					(137, 32, 'M', 'Sales', 'Sales Manager', 6, 85000, 4, 43, 'Yes', 'No', 10, 5, '15-02-2022'),
					(138, 27, 'M', 'Sales', 'Sales Manager', 3, 85000, 4, 40, 'No', 'No', 10, 4, '15-01-2022'),
					(139, 30, 'M', 'IT', 'Software Engineer', 8, 60000, 4, 40, 'No', 'No', 30, 3, '15-03-2022'),
					(140, 34, 'M', 'IT', 'Software Engineer', 9, 75000, 4, 39, 'No', 'No', 20, 3, '20-09-2021'),
					(141, 29, 'M', 'IT', 'Software Engineer', 5, 75000, 4, 40, 'No', 'No', 15, 4, '12-04-2022'),
					(142, 30, 'M', 'IT', 'Software Engineer', 7, 75000, 4, 44, 'Yes', 'Yes', 30, 3, '08-01-2022'),
					(143, 30, 'M', 'IT', 'Software Engineer', 6, 75000, 4, 42, 'No', 'No', 15, 4, '15-01-2022'),
					(144, 36, 'M', 'IT', 'Software Engineer', 7, 75000, 4, 44, 'No', 'Yes', 25, 3, '28-11-2021'),
					(145, 29, 'M', 'IT', 'Software Engineer', 4, 75000, 4, 38, 'No', 'Yes', 15, 4, '25-01-2022'),
					(146, 32, 'M', 'IT', 'Software Engineer', 6, 75000, 4, 42, 'Yes', 'Yes', 15, 3, '15-01-2022'),
					(147, 30, 'M', 'IT', 'Software Engineer', 4, 75000, 4, 40, 'No', 'Yes', 30, 4, '10-10-2021'),
					(148, 33, 'M', 'IT', 'Software Engineer', 6, 75000, 4, 41, 'No', 'No', 15, 4, '18-12-2021'),
					(149, 37, 'M', 'IT', 'Software Engineer', 10, 75000, 4, 42, 'Yes', 'No', 25, 4, '28-09-2021'),
					(150, 30, 'M', 'IT', 'Software Engineer', 6, 75000, 4, 42, 'No', 'No', 15, 4, '05-04-2022'),
					(151, 35, 'M', 'IT', 'Software Engineer', 8, 65000, 4, 42, 'Yes', 'No', 25, 3, '20-09-2021'),
					(152, 26, 'F', 'IT', 'Software Engineer', 3, 75000, 4, 40, 'No', 'No', 30, 3, '28-02-2022'),
					(153, 35, 'M', 'IT','Software Engineer', 9, 60000, 5, 45, 'Yes', 'No', 10, 5, '15-03-2022'),
					(154, 31, 'M', 'IT','Software Engineer', 7, 75000, 4, 42, 'Yes', 'No', 15, 4, '20-09-2021'),
					(155, 31, 'M', 'IT', 'Software Engineer', 6, 75000, 4, 41, 'Yes', 'Yes', 10, 4, '08-01-2022'),
					(156, 31, 'M', 'IT','Software Engineer', 7, 75000, 4, 42, 'No', 'No', 25, 5, '15-01-2022'),
					(157, 36, 'M', 'IT', 'Software Engineer', 8, 75000, 4, 42, 'No', 'Yes', 25, 4, '28-11-2021'),
					(158, 29, 'M', 'IT', 'Software Engineer', 5, 65000, 4, 42, 'Yes', 'No', 10, 5, '25-01-2022'),
					(159, 32, 'M', 'IT', 'Software Engineer', 8,75000, 4, 40, 'No', 'Yes', 25, 4, '15-01-2022'),
					(160, 30, 'M', 'IT', 'Software Engineer', 7,65000, 4, 41, 'Yes', 'Yes', 25, 3, '10-10-2021');

SELECT * FROM hrdata;

/* 
Data inconsistencies in these columns need to be fixed
	Gender -> M, Male, Female, F
	Position -> DataScientist and MarketingAnalyst
	LastPromotionDate -> Dates in 2 formats
*/

-- Grouping based on age
SELECT MIN(Age), MAX(Age) FROM hrdata; -- Minimum-26 Maximum-40

SELECT AgeGroup, COUNT(*) 
FROM (
	SELECT *,
		CASE
			WHEN Age <=30 THEN '<= 30 Years'
			ELSE '> 30 years'
		END AS AgeGroup
	FROM hrdata) A
GROUP BY AgeGroup;

-- Grouping based on salary
SELECT MIN(Salary), MAX(Salary) FROM hrdata; 	-- Minimum- 50k Maximum-90k

SELECT Salary, COUNT(*)
	FROM hrdata
    GROUP BY Salary;
    
SELECT SalaryBucket, COUNT(*)
FROM (
	SELECT *, CASE 
        WHEN Salary >= 80000 THEN 'Above 80K' 
        WHEN Salary >= 70000 THEN '70K - 80K'
        WHEN Salary >= 60000 THEN '60K - 70K'
        ELSE '50K - 60K'
	END AS SalaryBucket 
FROM hrdata) A 
GROUP BY SalaryBucket;

-- formatting date column
SELECT LastPromotionDate, DATE_FORMAT(Date_modified, '%Y-%m-%d') 
FROM (
	SELECT *,
		CASE 
			WHEN LastPromotionDate LIKE '__-%' THEN STR_TO_DATE(LastPromotionDate,'%d-%m-"%Y') 
			ELSE LastPromotionDate 
		END AS Date_modified
	FROM hrdata) A;

SELECT LastPromotionDate, 
	CASE 
		WHEN LastPromotionDate LIKE '__-%' THEN STR_TO_DATE(LastPromotionDate,'%d-%m-%Y')
		ELSE  STR_TO_DATE(LastPromotionDate, '%Y-%m-%d')  
	END AS UpdatedDate
FROM hrdata;

CREATE TABLE DUMMY_DATA AS
SELECT EmployeeID, LastPromotionDate, 
	CASE 
		WHEN LastPromotionDate LIKE '__-%' THEN STR_TO_DATE(LastPromotionDate,'%d-%m-%Y') 
		ELSE STR_TO_DATE(LastPromotionDate, '%Y-%m-%d') 
	END AS UpdatedDate
FROM hrdata; 

/* Creating a new table hr_database from the hrdata table 
	-> cleaning and fixing data inconsistencies in Gender and Position columns
	-> creating a new AgeGroup column with 2 groups (above and below 30 years of age)
	-> craeating a salary bucket with 3 different salary ranges 
	-> converting the date column in text type with 2 date formats into a column with single date format of date type
*/
-- DROP TABLE IF EXISTS hr_database;

-- Creating new table with modified data
CREATE TABLE hr_database AS
SELECT EmployeeID, 
	REPLACE(REPLACE(Gender,'Female','F'),'Male','M') AS Gender,
    Age,
	CASE
		WHEN Age <=30 THEN '<= 30 Years'
		ELSE '> 30 years'
		END AS AgeGroup,
	Department, 
	REPLACE(REPLACE(Position,'DataScientist','Data Scientist'),'MarketingAnalyst','Marketing Analyst') AS Position,
    YearsOfService,
    Salary,
    CASE
		WHEN Salary >=80000 THEN 'Above 80K'
		WHEN Salary >=70000 THEN '70K - 80K'
		WHEN Salary >=60000 THEN '60K - 70K'
		ELSE '50K- 60K' 
        END AS SalaryBucket,
    PerformanceRating, 
    WorkHours, 
    Attrition, 
    Promotion, 
    TrainingHours,
    SatisfactionScore,
    LastPromotionDate,
    CASE 
		WHEN LastPromotionDate LIKE '__-%' THEN STR_TO_DATE(LastPromotionDate,'%d-%m-%Y') 
		ELSE  STR_TO_DATE(LastPromotionDate, '%Y-%m-%d')         
        END AS UpdatedLastPromotionDate  
FROM hrdata;

SELECT * FROM hr_database;

-- Analysis on attrition
-- overall attrition count and attrion rate
SELECT 
	COUNT(*) AS Total_Employee,
	SUM(CASE WHEN Attrition='No' THEN 1 ELSE 0 END) AS Active_employees,
	SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END) AS Attrition_count,
	CONCAT(ROUND((SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END)/COUNT(*)) *100, 2),'%' )AS Attrition_yes_rate,
	CONCAT(ROUND((SUM(CASE WHEN Attrition='No' THEN 1 ELSE 0 END)/COUNT(*)) *100, 2),'%' )AS Attrition_no_rate    
FROM hr_database;

-- average stats for all the employees  
SELECT 
ROUND(AVG(Age),2) AS Average_age,
	ROUND(AVG(Salary),2) AS Average_salary,
	ROUND(AVG(YearsOfService),2) AS Average_YearsOfService,
    ROUND(AVG(SatisfactionScore),2) AS Average_SatisfactionScore,
	ROUND(AVG(WorkHours),2) AS Average_WorkHours,
	ROUND(AVG(TrainingHours),2) AS Average_TrainingHours
FROM hr_database;

-- average stats for employees attrition 
SELECT
	ROUND(AVG(Age),2) AS Average_age,
	ROUND(AVG(Salary),2) AS Average_salary,
	ROUND(AVG(YearsOfService),2) AS Average_YearsOfService,
    ROUND(AVG(SatisfactionScore),2) AS Average_SatisfactionScore,
	ROUND(AVG(WorkHours),2) AS Average_WorkHours
FROM hr_database
WHERE Attrition = 'Yes';

-- average stats for active employees  
SELECT
	ROUND(AVG(Age),2) AS Average_age,
	ROUND(AVG(Salary),2) AS Average_salary,
	ROUND(AVG(YearsOfService),2) AS Average_YearsOfService,
    ROUND(AVG(SatisfactionScore),2) AS Average_SatisfactionScore,
	ROUND(AVG(WorkHours),2) AS Average_WorkHours
FROM hr_database
WHERE Attrition = 'No';

-- Genderwise attrition	
SELECT Gender,
	SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END) AS Attrition_yes,
	SUM(CASE WHEN Attrition='No' THEN 1 ELSE 0 END) AS Attrition_No,
	ROUND((SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END)/COUNT(*)), 2) *100 AS Attrition_yes_Rate,
	ROUND((SUM(CASE WHEN Attrition='No' THEN 1 ELSE 0 END)/COUNT(*)), 2) *100 AS Attrition_no_Rate
FROM hr_database
GROUP BY Gender;

-- comparing attrition and non attrtion  
SELECT Attrition, 
	ROUND(AVG(WorkHours),2) AS Average_WorkHours,
    ROUND(AVG(YearsOfService),2) AS Average_YearsOfService,
	ROUND(AVG(Salary),2) AS Average_salary,
	ROUND(AVG(SatisfactionScore),2) AS Average_SatisfactionScore,
	ROUND(AVG(TrainingHours),2) AS Average_TrainingHours
FROM hr_database
GROUP BY Attrition;

-- relation between salary and attrition
SELECT SalaryBucket, COUNT(*) AS Attrition_count
FROM hr_database
WHERE Attrition= 'Yes'
GROUP BY SalaryBucket
ORDER BY Attrition_count DESC;

-- Departmentwise attrition
SELECT Department, COUNT(*) AS Total_employees,
	SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END) AS Attrition_yes,
	CONCAT(ROUND((SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END)/COUNT(*)), 2) *100,'%' )AS Attrition_yes_Rate,
	SUM(CASE WHEN Attrition='No' THEN 1 ELSE 0 END) AS Attrition_No
FROM hr_database
GROUP BY Department
ORDER BY Attrition_yes_Rate DESC;

SELECT Department, COUNT(*) AS Attrition_count,
	ROUND(AVG(WorkHours),2) AS Average_WorkHours,
    ROUND(AVG(YearsOfService),2) AS Average_YearsOfService,
	ROUND(AVG(Salary),2) AS Average_salary,
	ROUND(AVG(SatisfactionScore),2) AS Average_SatisfactionScore,
	ROUND(AVG(TrainingHours),2) AS Average_TrainingHours
FROM hr_database
WHERE Attrition ='Yes'
GROUP BY Department
ORDER BY Attrition_count DESC;

-- Age group wise attrtion   
SELECT AgeGroup, COUNT(*) AS Attrition_count
FROM hr_database
WHERE Attrition= 'Yes'
GROUP BY AgeGroup
ORDER BY Attrition_count DESC;

-- Positionwise attrition
SELECT Position, COUNT(*) AS Attrition_count,
	ROUND(AVG(WorkHours),2) AS Average_WorkHours,
    ROUND(AVG(YearsOfService),2) AS Average_YearsOfService,
	ROUND(AVG(Salary),2) AS Average_salary,
	ROUND(AVG(SatisfactionScore),2) AS Average_SatisfactionScore,
	ROUND(AVG(TrainingHours),2) AS Average_TrainingHours
FROM hr_database
WHERE Attrition ='Yes'
GROUP BY Position
ORDER BY Attrition_count DESC;

-- Position wise Promotion and attrition relation
SELECT Position, Attrition, Promotion, COUNT(*) AS Total_employees
FROM hr_database
WHERE Attrition = 'Yes' AND Promotion = 'No'
GROUP BY Position, Attrition, Promotion
;

SELECT Position,
SUM(CASE WHEN Attrition = 'Yes' AND Promotion = 'No' THEN 1 ELSE 0 END) AS non_promoted_attrition,
SUM(CASE WHEN Attrition ='Yes' THEN 1 ELSE 0 END) AS Total_Attrition
FROM hr_database 
GROUP BY Position
; 

-- Departmentwise count
SELECT Department, COUNT(*)	AS Total_Attrition
FROM hr_database
WHERE Attrition ='Yes' 
GROUP BY Department;

-- Department wise Promotion and attrition relation
SELECT Department, COUNT(*)	AS Total_Attrition
FROM hr_database
WHERE Attrition ='Yes' AND Promotion='No' 
GROUP BY Department;

SELECT Department,
SUM(CASE WHEN Attrition = 'Yes' AND Promotion = 'No' THEN 1 ELSE 0 END) AS non_promoted_attrition,
SUM(CASE WHEN Attrition ='Yes' THEN 1 ELSE 0 END) AS Total_Attrition
FROM hr_database 
GROUP BY Department
; 

-- Relation between promotion and attrition 
SELECT Department, Position,
SUM(CASE WHEN Attrition = 'Yes' AND Promotion = 'No' THEN 1 ELSE 0 END) AS non_promoted_attrition,
SUM(CASE WHEN Attrition ='Yes' THEN 1 ELSE 0 END) AS Total_Attrition
FROM hr_database
GROUP BY Department, Position
ORDER  BY Total_Attrition DESC;

-- experience, promotion and attrition relation
SELECT YearsOfService AS Experience_in_years,
	COUNT(*) AS Employee_count,
	SUM(CASE WHEN Promotion = 'No' THEN 1 ELSE 0 END) AS non_promoted,
	SUM(CASE WHEN Attrition = 'Yes' AND Promotion = 'No' THEN 1 ELSE 0 END) AS non_promoted_attrition,
	SUM(CASE WHEN Promotion = 'Yes' THEN 1 ELSE 0 END) AS promoted,
	SUM(CASE WHEN Attrition = 'Yes' AND Promotion = 'Yes' THEN 1 ELSE 0 END) AS promoted_attrition
FROM hr_database
GROUP BY YearsOfService
ORDER BY YearsOfService DESC;

-- Analysis on Training effectiveness
-- Comparing Training hours and attrition
SELECT Department, Attrition, COUNT(*)
FROM hr_database
WHERE TrainingHours >=25
GROUP BY Department, Attrition;

SELECT MAX(TrainingHours), MIN(TrainingHours)
FROM hr_database;

-- Comparing performance rating and training hours

SELECT MIN(TrainingHours), MAX(TrainingHours) FROM hr_database;

SELECT MIN(PerformanceRating), MAX(PerformanceRating) FROM hr_database;

SELECT TrainingHours,
	ROUND(AVG(PerformanceRating),2) AS Average_PerformanceRating,
    COUNT(*) AS Employee_count
FROM hr_database
GROUP BY TrainingHours
ORDER BY TrainingHours DESC;

-- Relation between promotion and training
SELECT TrainingHours,	
	COUNT(*) AS Employees_attended,
	SUM(CASE WHEN Promotion = 'Yes' THEN 1 ELSE 0 END) AS promoted_count
FROM hr_database
GROUP BY TrainingHours
ORDER BY TrainingHours DESC;

-- training hours and attrition 
SELECT Department, Attrition, COUNT(*)
FROM hr_database
WHERE TrainingHours <15
GROUP BY Department, Attrition;

SELECT Department, COUNT(*) AS Attririon_count,
	SUM(CASE WHEN  TrainingHours <=20 THEN 1 ELSE 0 END) AS Training_20hrs_or_below
FROM hr_database 
WHERE Attrition= 'Yes'
GROUP BY Department;

-- trainig hours of different age groups
SELECT AgeGroup, COUNT(*) AS Employee_count,
	ROUND(AVG(TrainingHours),2) AS Average_TrainingHours
FROM hr_database
GROUP BY AgeGroup;

-- Training hours with years of experience
SELECT YearsOfService AS Experience_in_years,
	COUNT(*) AS Employee_count,
    ROUND(AVG(TrainingHours),2) AS Average_TrainingHours
FROM hr_database
GROUP BY Experience_in_years
ORDER BY Experience_in_years DESC;
