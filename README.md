# Layoffs_Cleaning_MySql-Project

### The Objective of The Project:

- Clean and prepare the dataset for the Exploratory Data Process.


Data Cleaning Process
The data cleaning process involved the following steps:

- Data Understanding - The dataset was thoroughly examined to understand the structure, columns and their meanings. The data did not have a data dictionary attached. With the help of online sources I was able to create one that helped me gain an understanding of what all the columns represented.
- Data Exploration - Exploratory Data Analysis was performed to gain insights into the data, identify patterns and uncover anomalies.
- Handling missing values - Through the EDA performed, I quickly realised there was a valid reason for the missing values in the Hits and Loan Date End columns. The Hits column represented the number of times a player had been searched in the FIFA database. Since some players had never been searched, their records were blank. For the Loan Date End column, this represented when the contracts for players who were On Loan would end. Since some of the players were free and others on contract, their records were left blank.
- Standardizing formatting - Inconsistent formatting issues eg the values in the Heights and Weights columns that were stored with different units were resolved by applying transformations, lambda functions and data normalization techniques.
- Validation and quality checks - The cleaned dataset underwent rigorous validation to ensure the quality, accuracy and integrity of the data.
