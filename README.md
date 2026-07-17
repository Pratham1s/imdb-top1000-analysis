# 🎬 IMDb Top 1000 — Movie Analysis Project

An end-to-end data analysis project on the IMDb Top 1000 movies dataset, covering data cleaning, SQL-based analysis, and an interactive Power BI dashboard.

---

## 📌 Project Overview

This project explores what drives a movie's success — critical acclaim vs. commercial performance — using the IMDb Top 1000 dataset. It walks through the full analyst workflow: cleaning raw data, answering business-style questions with SQL, and visualizing insights in Power BI.

**Tools used:** Python (Pandas), SQL (MySQL), Power BI

---

## 🧹 1. Data Cleaning (Python / Pandas)

- Handled missing values and inconsistent formatting
- Standardized numeric fields (Gross, Runtime, Votes)
- Prepared a clean dataset for both SQL and Power BI use

---

## 🗄️ 2. SQL Analysis

Key questions answered using SQL:

| # | Question | Technique |
|---|----------|-----------|
| 1 | Which directors have the highest average rating (with 5+ movies)? | `GROUP BY`, `HAVING` |
| 2 | Is there a "sweet spot" runtime for higher-rated movies? | `CASE`, `GROUP BY` |
| 3 | Which actors appear most frequently across the Top 1000? | `UNION ALL` across Star1–Star4 |
| 4 | Which movies are "hidden gems" — high rating, low vote count? | `WHERE`, subquery |

📁 Full queries: [`/sql`](./sql)

**Key finding:** Several 8.6+ rated films (e.g. *Soorarai Pottru*, *Seppuku*) have well below-average vote counts — genuinely underrated films outside the mainstream.

---

## 📊 3. Power BI Dashboard

An interactive dashboard summarizing the dataset:

- **KPI cards:** Total Movies, Avg Rating, Avg Runtime, Max Gross, Avg Votes, Total Gross
- **Rating vs. Gross scatter/bubble chart** — explores whether high ratings translate to high earnings
- **Certificate vs. Gross chart** — compares average earnings by audience certificate (U, UA, A, etc.)
- **Top 5 Movies & Top Directors tables**

**Key finding:** Critical acclaim doesn't guarantee box office success — several 9+ rated classics have far lower gross than mid-rated (7.6–8.4) blockbusters. UA-certified films earn the highest average gross, likely due to their broader audience reach.

---

## 📁 Repository Structure

```
├── data/
│   └── imdb_top1000_cleaned.csv
├── notebooks/
│   └── data_cleaning.ipynb
├── sql/
│   └── queries.sql
├── powerbi/
│   └── imdb_dashboard.pbix
├── screenshots/
│   └── dashboard_preview.png
└── README.md
```

---

## 🔑 Key Insights

- High IMDb rating ≠ high box office earnings — critical and commercial success often diverge
- UA-certified movies out-earn every other certificate category on average
- A meaningful number of highly-rated films remain "hidden gems" with low audience reach

---

## 🚀 What I'd Explore Next

- Normalize the comma-separated Genre field for deeper genre-level trend analysis
- Add a critic vs. audience alignment view (IMDb Rating vs. Meta Score)

---

**Author:** Pratham · Data Analytics Enthusiast
