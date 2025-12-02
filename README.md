# Layoffs Data Cleaning (SQL Project)

This project focuses on cleaning and standardizing the global layoffs dataset using MySQL. The goal is to remove duplicates, fix inconsistent values, standardize dates, handle NULLs, and prepare the data for analysis.

## Features
- Removing duplicated records using ROW_NUMBER() and CTEs
- Standardizing company, industry, location, and country fields
- Cleaning inconsistent text formats
- Converting date strings into proper DATE type
- Handling NULL values using self-joins
- Removing rows with missing essential data
- Producing a final clean table (layoffs_staging2)

## Technologies Used
- MySQL 8+
- Window functions
- CTEs
- String standardization
- Date conversion
- SQL joins

## Data Cleaning Steps

### 1. Create a staging table
