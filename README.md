# AR Late Payment Analysis

## Overview
Analysis of payment behavior across 2,466 real-world B2B invoices, built to find out which customers pay late, how much risk that creates, and where collections effort should focus.

## Business Problem
Which customer segments consistently pay late, and where should collections effort be focused to maximize recovery?

## Tools Used
- PostgreSQL + DBeaver — data storage and querying
- Tableau Public — visualization and dashboarding
- GitHub — version control and portfolio

## Dataset
- Source: Finance Factoring - IBM Late Payment Histories
- Size: 2,466 invoices
- Scope: Multi-country, multi-billing-type invoice payment data

## Key Findings
- Electronic billing clients pay almost twice as fast as paper billing clients (2.4 days vs. 4.4 days late on average)
- A small group of repeat late payers accounts for most of the payment risk — the worst account averages 19.6 days late
- Payment behavior varies by country; the dataset only provides numeric country codes with no name lookup, so exact countries aren't identified, but the gap between the highest and lowest is worth investigating


## Visualizations
https://public.tableau.com/views/IBMARLatePaymentAnalysis/Dashboard1?:language=en-US&publish=yes&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link

## How to Run
1. Clone this repository
2. Import the dataset into PostgreSQL using DBeaver
3. Run queries from the `/sql` folder in sequence
