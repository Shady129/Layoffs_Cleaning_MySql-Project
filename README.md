# 🧹 Layoffs Data Cleaning Project – SQL (MySQL)

🔍 **SQL Data Cleaning | Portfolio Project**

This project focuses on cleaning and preparing a real-world layoffs dataset using SQL (MySQL).  
The objective is to transform raw, inconsistent data into a clean and analysis-ready dataset by applying professional data cleaning techniques commonly used in real analytics workflows.

---

## 🎯 Project Objective
To clean and standardize layoffs data by removing duplicates, fixing inconsistencies, handling NULL values, and preparing the dataset for accurate analysis.

---

## 🗂️ Dataset Overview
The dataset contains global company layoff information, including:
- 🏢 Company
- 📍 Location
- 🏭 Industry
- 👥 Total Laid Off
- 📉 Percentage Laid Off
- 📅 Date
- 🚀 Company Stage
- 🌍 Country
- 💰 Funds Raised (Millions)

---

## 🛠️ Tools & Technologies
- 🟦 MySQL 8
- 📐 SQL
- 🧮 Window Functions (ROW_NUMBER)
- 🔄 JOINs
- 🧹 Data Cleaning & Standardization
- 🗃️ Staging Tables

---

## 📌 Data Cleaning Steps Performed
✔️ Created staging tables to preserve raw data  
✔️ Identified and removed duplicate records using `ROW_NUMBER()`  
✔️ Standardized text fields (company names, industries, locations, countries)  
✔️ Cleaned and unified inconsistent values (Crypto, city and country names)  
✔️ Converted date fields to proper DATE format  
✔️ Handled NULL values using self-joins and targeted updates  
✔️ Removed rows with insufficient layoff information  
✔️ Dropped helper columns after cleaning process completion  

---

## ⚠️ Data Modification Notice
All UPDATE, DELETE, and ALTER TABLE operations were performed on staging tables only and were used strictly for learning and portfolio demonstration purposes.

---

## 🧠 Skills Demonstrated
✔️ Real-world data cleaning using SQL  
✔️ Duplicate detection and removal  
✔️ Data standardization and normalization  
✔️ NULL handling strategies  
✔️ Use of window functions and joins  
✔️ Writing clean, readable, and maintainable SQL scripts  

---

## 📂 Project Structure
