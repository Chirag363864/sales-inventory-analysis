import pandas as pd

df = pd.read_excel("Sales Data.xlsx")

# Drop unnecessary column (many nulls)
df = df.drop(columns=["Postal Code"], errors='ignore')

# Remove duplicates
df = df.drop_duplicates()

# Rename columns (important for SQL)
df.columns = df.columns.str.replace(" ", "_").str.lower()

# Check null values
print(df.isnull().sum())

# Save cleaned data
df.to_csv("cleaned_sales_data.csv", index=False)
