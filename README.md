# 📊 Layoffs Data Cleaning Project (MySQL)

This project focuses on cleaning and preparing the global layoffs dataset using MySQL.  
The goal is to remove duplicates, fix inconsistent values, standardize text fields, clean date formats, handle NULL values, and produce a final dataset ready for analysis.

---

## 🚀 Project Overview

This project demonstrates practical SQL data-cleaning techniques, including:

- 🔁 Removing duplicated records  
- 🧹 Standardizing company names, industries, locations, and countries  
- 📅 Converting text-based dates into proper DATE format  
- ❗ Handling NULL values  
- 🗂️ Creating staging and clean tables  
- 📦 Producing a final clean dataset  

---

## 🛠️ Technologies Used

- 🐬 MySQL 8+  
- 🪜 Window functions  
- 🧱 Common Table Expressions (CTEs)  
- ✏️ String standardization  
- 🔄 Date conversion  
- 🔗 SQL joins  

---

## 🧹 Data Cleaning Steps

### 1️⃣ Create a staging table
```sql
CREATE TABLE layoffs_staging LIKE layoffs;
INSERT INTO layoffs_staging SELECT * FROM layoffs;
