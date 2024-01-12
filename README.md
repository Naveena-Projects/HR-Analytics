# HR-Analytics : Insights on Employee Attrition and Training Efficacy

## Introduction
This report aims to provide insights into two key aspects of human resource management: employee attrition and employee training program. The analysis is based on HR data, including metrics such as age, department, and performance ratings.

## Objectives
The project focuses on two primary objectives: 
1)	To determine the factors contributing to employee attrition and suggest ways to reduce attrition 
rates.
2)	To analyse the effectiveness of training programs and recommend improvements.

## Data Cleaning and Preparation
The source dataset exhibited inconsistencies and discrepancies, necessitating corrections and restructuring for improved data accuracy. The following changes were made and the refined data was then stored in a new table. 
1)	Values in gender and position columns are replaced and updated to make the data uniform and consistent.
    - ‘Female’ and ‘Male’ values in some places were replaced with ‘F’ and ‘M’
    -	‘DataScientist’ and ‘MarketingAnalyst’ in some places replaced with ‘Data Scientist’ and ‘Marketing Analyst’
2)	Employees were categorized based on age and salary ranges to facilitate future analysis and identify potential trends and patterns in the data. 
    -	Age group of two categories
      -	30 years or below
      -	Above 30 years
    -	Salary bucket of four categories
      -	Above 80k
      -	70k – 80k
      -	60k – 70k
      -	50k – 60k 
3)	The ‘Promotion date’ column contained values in two different date formats of ‘text type’. All values were converted into a single standard date format of the ‘date type’.

## Analysis and Insights on Attrition 

### 1  Attrition count and Attrition rate
![HR 1](https://github.com/Naveena-Projects/HR-Analytics/assets/156399143/af56f8fa-1511-4aec-9cca-8cc12bf849e1)
  -	The attrition rate of the organization is 33.75%, with the total reduction of 54 employees. 
  -	This indicates a significant challenge with more than one-third of the workforce leaving.

### 2  Comparison between attrition and non-attrition
  -	Average work hours of employees leaving stands at 42.5 hours which is higher than the average work hours of total employees and employee that remained as well.
  -	Those employees were also have trained for as low as 18 hours and all the other employees seem to have trained for more hours.
  -	Salary alone doesn’t seem to be a major factor in attrition, requiring further analysis at different levels.

### 3  Attrition with respect to salary ranges
  -	This data reveals that employees with higher salary packages, specifically those in the above 80k salary bucket, exhibit higher attrition rates.
  -	Following this, the next highest salary buckets also show attrition counts of 13 each.
  -	Conversely, employees in the lowest salary range (50k to 60k) constitute only 9 out of 54, indicating minimal impact on total attrition in this category.

### 4  Department wise Attrition count
  -	Finance department has the highest attrition rate at 54%.
  -	In contrast, the IT department experienced the maximum reduction with 18 employees leaving at an attrition rate of 35%. 
  -	The Marketing department lost 10 employees with an attrition rate of 33%, while all other departments have attrition rate exceeding 20%.

### 5  Department wise attrition statistics
  -	Finance department employees despite being highly paid and the most satisfied, have higher average work hours compared to the overall average.
  -	IT department, experiencing the highest attrition, had a high average work time of 43 hours.
  -	Both the IT and HR departments recorded the lowest training averaging around 17 hours.
  -	The HR department stands out for having employees who worked the longest hours, yet received the least pay, satisfaction, and training compared to other departments. 
  -	Employees in sales department with an average experience of more than 7 years underwent comparatively less training.
  -	Employees in the marketing department, who are being paid lower than the overall average, are the least satisfied.

### 6  Relation between Attrition, Promotion and years of service
  -	Employees with 3, 6 and 7 years of experiences left even after getting promoted.
  -	Employees with no promotion mostly left the job irrespective of their years of service.

### 7  Position wise attrition statistics
  -	Data Scientists, Financial Analysts and Software Engineers exhibit high attrition, each with a count of 9 employees each. They all work more hours than the overall average and completed low-period training    except for Financial Analysts. Notably financial analysts have higher pay and training.
  -	Following closely in attrition are Financial Managers and Marketing Managers with an average experience of 6 years.
  -	Financial managers, with the highest salary of 90k, are the most satisfied employees with a satisfaction score of 4.33. In contrast, Marketing Managers, with a salary around 68k, express nominal satisfaction and training.
  -	HR Managers and HR Coordinators work longer hours with minimal training and have an average experience of around 4 years.
  -	Sales associates and HR Managers are the least satisfied employees, scoring 3 in satisfaction. The HR Managers, with the lowest training hours at 15 h, further indicates dissatisfaction.
  -	The least paid employees in the company are Sales associates with 7 years of experience, yet completed the longest training at 30 hours. 

## Analysis and Insights on Training programme

### 1.	Relation between training and performance
 
  -	Most employees attended around 20 hours of training.
  -	32 employees have completed 30 hours of training, but their average performance rating is still below 4. Complete training doesn't necessarily correlate with higher performance scores.
  -	Employees with performance score above 4 attended training only for 10 hours. 
  -	This clearly indicates a lack of proportionality between performance scores and the training.

### 2	Relation between training and promotion
 
  -	Out of 32 Employees who completed the entire training, only 10 got promoted.
  -	Among the promoted employees, 12 had attended 25 hours of training.
  -	Notably, only one person among the least trained employees received a promotion, indicating a lower probability of promotion with minimal training.

### 3	Relation between training and attrition		
 
  -	Training shows an impact on attrition, with most employees trained below 20 hours are leaving in all departments except marketing. 
  -	In particular, all 6 employees in the HR department attended training below the overall average.

### 4	Training taken by different age groups
 
  -	Both age groups have attended similar hours of training, aligning with the overall average training hours of the company

## Recommendations

  -	Given that the high attrition rates in the Finance and IT departments, targeted initiatives such as mentorship programs, initiatives to enhance work-life balance and career development plans may prove effective in improving employee retention and performance.
  -	Addressing long working hours is crucial for reducing attrition, particularly in the HR department. Proactive organization and planning can mitigate exhaustion, leading to a decrease in overall working hours.
  -	While overall salary levels show no significant impact on attrition, certain instances of attrition in sales and HR departments are linked to lower salaries. Implementing regular salary hikes based on performance can serve as a motivating factor for the employees.
  -	Recognizing the impact of inadequate training on attrition and promotion rates, it is recommended to enhance employee engagement in training by improving the quality and relevance of training programs to make them more interesting and aligned with employees’ needs.
  -	As the number of training hours doesn't necessarily correlate with better performance, it is suggested to focus on training quality, tailoring training programs according to employees’ level of experience to further enhance their skills and linking training to career progression.
  -	Conducting feedback surveys on training programs is essential to identify employee concerns and requirements to facilitate continuous improvement in the training initiatives. 

