# google-fy2024-ghg
Google Environmental Report analytics: a decision‑grade, KPI‑driven Power BI solution that quantifies Scope 1/2/3 emissions across 2019–2024, surfaces YoY deltas and top emitters via SQL ranking, and delivers recruiter‑ready, reproducible insights with clean documentation and quick links.

Executive summary:

Business: Leadership needs a unified view of Scope 1/2 vs Scope 3 emissions, top contributors, and year‑over‑year changes from 2019–2024.

Solution: Power BI dashboard with KPI tiles and trend pages, SQL for contributor ranking and YoY logic, plus a polished PDF for fast review.

Next steps: Share the PDF, explore the PBIX interactively, and rerun SQL scripts as new data arrives.

Business problem:
Decision makers must quickly identify drivers across operational (Scope 1/2) and value‑chain (Scope 3) emissions to prioritize budgets and supplier actions.

Prior spreadsheets lacked consistent YoY math and cross‑year contributor ranking, slowing decision‑making.

Methodology (brief):

Data prep: Reusable SQL scripts compute ranks, Scope1 vs Scope2 comparisons, and Scope3 YoY growth; outputs can be exported to CSV for the model.
Modeling/visuals: Power BI measures power KPI cards, dashboard, and trend charts for 2019–2024.

Documentation: Quick links, folder map, and MIT license for easy navigation and reuse.

Skills used (incl. CTEs)

SQL: common table expressions (CTEs), window functions for ranking, grouping for contributor rollups.

Power BI: data modeling, DAX for KPIs and YoY, multi‑page report design.

Git/GitHub: clean repo structure with clickable relative links.

Results and business recommendations
Results: Dashboard highlights top emitters, contrasts Scope 1/2 vs 3, and flags YoY increases for action; images and PDF provide quick snapshots.

Recommendations: Tackle highest contributors first, validate Scope 3 categories with suppliers, and monitor YoY hotspots quarterly using the same pipeline.

How to reproduce:
Run SQL queries in sql/ to generate result tables or CSVs.

Open pbix/your-report.pbix in Power BI Desktop (latest) and click Refresh.

Review KPI, dashboard, and trend pages; export images if needed.


Quick links:

Report (PDF): [report]( https://github.com/anshi31/google-fy2024-ghg/blob/main/docs/google-fy2024-ghg-emissions-analysis_report.pdf) 

Power BI file: [powerbi file](https://github.com/anshi31/google-fy2024-ghg/tree/main/pbix )

SQL scripts:[sql ](https://github.com/anshi31/google-fy2024-ghg/tree/main/sql )

Images: [images](https://github.com/anshi31/google-fy2024-ghg/tree/main/images)

Folder map:
docs — final report files (PDF/DOCX).

pbix — Power BI report file (.pbix).

sql — Top3_contributors.sql, YoY_growth_scope3.sql, Scope1_vs_Scope2.sql, Top5_contributors_emission_scope3.sql.

images — dashboard and KPI PNGs.

License:

MIT License; see LICENSE.





