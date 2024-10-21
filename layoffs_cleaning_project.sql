USE cleaning_data;

-- Creating temporary datasets

CREATE TABLE layoffs_staging
LIKE layoffs;

SELECT * from layoffs_staging;

INSERT INTO layoffs_staging
SELECT * FROM layoffs;


-- Removing Duplicates

-- Step1 

SELECT *,
row_number() over(PARTITION BY company, location,industry, total_laid_off, percentage_laid_off, `date`, stage, country, funds_raised_millions) as row_num
FROM layoffs_staging;

-- Step2

WITH duplicate_cte as
(
SELECT *,
row_number() over(PARTITION BY company, location,industry, total_laid_off, percentage_laid_off, `date`, stage, country, funds_raised_millions) as row_num
FROM layoffs_staging
)
SELECT 
    *
FROM
    duplicate_cte
WHERE
    row_num > 1;


 -- Step 3 


-- Creating a New Table layoffs_staging2

CREATE TABLE `layoffs_staging2` (
  `company` text,
  `location` text,
  `industry` text,
  `total_laid_off` int DEFAULT NULL,
  `percentage_laid_off` text,
  `date` text,
  `stage` text,
  `country` text,
  `funds_raised_millions` int DEFAULT NULL,
  `row_num` int
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- INSERT a Data Into Data layoffs_staging2 Table
INSERT INTO layoffs_staging2
SELECT *,
row_number() over(PARTITION BY company, location,industry, total_laid_off, percentage_laid_off, `date`, stage, country, funds_raised_millions) as row_num
FROM layoffs_staging;


-- Step 4 

DELETE FROM layoffs_staging2
WHERE row_num > 1;



-- Standardizing data

-- 1  Remove white spaces from company name and update the table.

SELECT DISTINCT(TRIM(company)) 
FROM layoffs_staging2;

UPDATE layoffs_staging2
SET company = TRIM(company);

-- 2 Fixing the records.

-- Checking Names 
SELECT DISTINCT(industry) FROM layoffs_staging2
ORDER BY 1;

-- Editing name of  Crypto field
UPDATE layoffs_staging2 
SET industry = 'Crypto'
WHERE industry LIKE 'Crypto%';

-- Editin name of Malmö town.
UPDATE layoffs_staging2
SET location = 'Malmö'
WHERE location = 'Malmo';

-- Editing name of Düsseldorf town.
UPDATE layoffs_staging2
SET location = 'Düsseldorf'
WHERE location = 'Dأ¼sseldorf';


-- Editing name of United States Country.
UPDATE layoffs_staging2
SET country = TRIM(TRAILING '.' FROM country)
WHERE country LIKE 'United States';

-- Editing the date format
SELECT  * FROM layoffs_staging2 
where country = 'United States';

UPDATE layoffs_staging2
SET `date` = str_to_date(`date`, '%m/%d/%Y');


-- Editing data type of data column
ALTER TABLE layoffs_staging2 
MODIFY COLUMN `date` Date;



-- Removing Nulls

-- 1 Checking where are nulls in industry column and update it
select * from layoffs_staging2
where industry is null or industry = '';

-- 2 Updating the industry column and remove nulls.

-- Use Join Table to compare to find nulls and fill them. 

UPDATE layoffs_staging2 t1
        JOIN
    layoffs_staging2 t2 ON t1.company = t2.company 
SET 
    t1.industry = t2.industry
WHERE
    (t1.industry IS NULL)
        AND t2.industry IS NOT NULL;


UPDATE layoffs_staging2 
SET industry = "Recruitment"
WHERE company = "Bally's Interactive";


-- Deleting nulls.

DELETE 
FROM layoffs_staging2 
WHERE total_laid_off IS NULL
AND percentage_laid_off IS NULL;


-- Droping unused column
ALTER TABLE layoffs_staging2 
DROP COLUMN row_num;
