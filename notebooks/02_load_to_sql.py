import pandas as pd
import sqlite3

df = pd.read_csv("data/telco_churn_cleaned.csv")

conn = sqlite3.connect("sql/telco_churn.db")

df.to_sql("customers", conn, if_exists="replace", index=False)

conn.close()

print("Data loaded into SQLite database.")