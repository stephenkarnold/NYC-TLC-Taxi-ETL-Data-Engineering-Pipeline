# NYC TLC Taxi ETL Data Engineering Pipeline

This project deals with creating a data engineering pipeline for NYC TLC.

The raw data file was uploaded to Google Cloud and using Mage AI, it was converted into a star schema to have a fact and dimension tables. After, extracting and tramsforming the data, it was loaded onto Google's Big Query.

On BigQuery, queries were run to check for the completeness of the data and get few summary statistics. After this, the final dataset was created by joining the tables.

This dataset was imported onto Google's Looker Studio where the final dashboard was created to provide insights.
