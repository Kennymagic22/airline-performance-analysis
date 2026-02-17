# ✈️ Airline Performance Analysis (MySQL + Excel)

## 📌 Project Overview

This project analyzes airline passenger and flight performance data using MySQL and Excel.  
The objective was to evaluate operational efficiency, passenger demographics, airport performance, and delay patterns.

The project demonstrates SQL data cleaning, exploratory analysis, KPI development, and business insight generation.

---

## 🛠 Tools & Technologies

- MySQL
- Microsoft Excel (Dashboard & Visualization)
- GitHub (Version Control & Documentation)

---

## 📂 Project Structure

airline-performance-analysis/
│
├── dataset/
│ └── Airline_Dataset.csv
│
├── sql/
│ ├── 01_data_cleaning.sql
│ ├── 02_exploratory_analysis.sql
│ ├── 03_kpi_analysis.sql
│ └── 04_advanced_analysis.sql
│
└── dashboard/
└── Airline_Dashboard.xlsx


---

## 🧹 Data Cleaning

- Converted text-based date column into proper DATE format using `STR_TO_DATE()`
- Created a reusable SQL view (`Cleaned_Flights`) for structured analysis
- Preserved raw dataset integrity

---

## 📊 Exploratory Data Analysis (EDA)

Key exploratory queries included:

- Total flight volume
- Unique passenger count
- Flight status distribution
- Passenger gender breakdown
- Age group segmentation
- Flights by continent

---

## 📈 KPI & Performance Analysis

The following key performance indicators (KPIs) were developed:

- Overall delay rate
- Delay rate by airport
- Delay rate by pilot
- Top 10 busiest airports

---

## 🔍 Advanced Analysis

- Monthly flight volume trend
- Monthly delay trend
- Most popular flight routes
- Pilot performance ranking

---

## 💡 Key Business Insights

- Certain airports demonstrated significantly higher delay rates.
- Pilot performance varied, with some maintaining delay rates below 5%.
- Flight volume trends indicated seasonal fluctuations.
- Major hub airports handled the highest passenger traffic.

---

## 🎯 Skills Demonstrated

- SQL Data Cleaning & Transformation
- Aggregation & Grouping
- Conditional Logic (CASE Statements)
- KPI Development
- Trend Analysis
- Business Insight Communication
- Data Storytelling

---

## 🚀 How to Reproduce This Project

1. Import the dataset into MySQL.
2. Execute `01_data_cleaning.sql` to create the cleaned view.
3. Run exploratory, KPI, and advanced SQL scripts.
4. Export summary tables into Excel.
5. Build dashboard visualizations.

---

## 👤 Author

**Kehinde Goriola**  
Data Analyst | Business Intelligence Enthusiast  
