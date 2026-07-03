import pandas as pd
df = pd.read_csv("data/telco_churn_raw.csv")
print(df.shape)
print(df.head())
print(df.columns.tolist())
print(df.info())
print(df[df['TotalCharges']==' '])
df['TotalCharges']= df['TotalCharges'].replace(' ', '0')
df['TotalCharges']= df['TotalCharges'].astype(float)
print(df['TotalCharges'].dtype)
print(df['TotalCharges'].isnull().sum())
categorical_cols = df.select_dtypes(include='object').columns
for col in categorical_cols:
    print(f"\n{col}:")
    print(df[col].unique())
print(df['Churn'].value_counts())
print(df['Churn'].value_counts(normalize=True)*100)
    