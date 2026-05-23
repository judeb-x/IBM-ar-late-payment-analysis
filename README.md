# AR Late Payment Analysis

## Overview
An end-to-end accounts receivable analytics project analyzing payment behavior 
across 2,466 real-world B2B invoices. Built to identify late payment patterns, 
quantify risk exposure, and surface actionable insights for collections teams.

## Business Problem
Which customer segments consistently pay late, and where should collections 
effort be focused to maximize recovery?

## Tools Used
- **PostgreSQL + DBeaver** — data storage and querying
- **Tableau Public** — data visualization and dashboarding
- **GitHub** — version control and portfolio

## Dataset
- **Source:** IBM B2B Accounts Receivable dataset
- **Size:** 2,466 invoices
- **Scope:** Multi-country, multi-billing-type invoice payment data

## Key Insights
- Clients on **electronic billing paid almost twice as fast** as paper billing clients
- A **small group of repeat late payers** drove the majority of payment risk
- **Payment behavior varied significantly by country**, identifying where 
  collections effort yields the highest return

## Visualizations
https://public.tableau.com/views/IBMARLatePaymentAnalysis/Dashboard1?:language=en-US&publish=yes&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link

## How to Run
1. Clone this repository
2. Import the dataset into PostgreSQL using DBeaver
3. Run queries from the `/sql` folder in sequence
