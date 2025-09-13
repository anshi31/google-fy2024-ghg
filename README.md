# google-fy2024-ghg
A portfolio project analyzing FY2024 greenhouse gas emissions with a Power BI dashboard (2019–2024), SQL scripts for ranks/YoY, and a polished PDF report. Tech stack: Power BI, SQL, GitHub.

Quick links

Report (PDF): [docs/your-report.pdf
]( https://github.com/anshi31/google-fy2024-ghg/blob/main/docs/google-fy2024-ghg-emissions-analysis_report.pdf) 

Power BI file: [pbix/your-report.pbix](https://github.com/anshi31/google-fy2024-ghg/tree/main/pbix )

SQL scripts:[sql ](https://github.com/anshi31/google-fy2024-ghg/tree/main/sql )

Images: images/

Overview

Objective: Quantify and explain operational (Scope 1/2) vs value‑chain (Scope 3) emissions trends from 2019–2024, highlighting top contributors and year‑over‑year changes.

Deliverables: Interactive Power BI dashboard, reusable SQL scripts, and a final report for reviewers.

Why this repo: Clear structure, quick links, and MIT License for easy viewing and reuse.

Data and methods

Source data: Result tables exported via the SQL scripts, then refreshed in Power BI Desktop.

Core analyses: Top contributors (rank), Scope1 vs Scope2 comparison, and Scope3 YoY growth metrics.

Visualization: Power BI pages for KPIs, dashboard overview, and trend charts across 2019–2024.

How to reproduce

Run SQL queries in sql/ to create result tables or CSVs.

Open the PBIX in pbix/ with Power BI Desktop (latest), then select Refresh.

Review KPI, dashboard, and trend pages; export images if needed.

Folder map

docs — Final report files for viewing and sharing (PDF/DOCX).

pbix — Power BI report file (.pbix); consider PBIP for advanced version control.

sql — Reusable SQL scripts (Top3_contributors.sql, YoY_growth_scope3.sql, Scope1_vs_Scope2.sql, Top5_contributors_emission_scope3.sql).

images — Dashboard and chart PNGs used in the README/report.

Open in one click

PDF report: docs/your-report.pdf for quick browser viewing.

PBIX: pbix/your-report.pbix; download, then open in Power BI Desktop.

License

MIT License; see LICENSE.

Tip: Relative links automatically work across branches and clones, so keep using paths like docs/… and pbix/… instead of full URLs
