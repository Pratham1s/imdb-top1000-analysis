import pandas as pd 
df = pd.read_csv("imdb_top_1000.csv")
df = df.drop(columns=["Poster_Link"])

# df.info()

df["Certificate"] = df["Certificate"].fillna("Unknown")
df["Meta_score"] = df["Meta_score"].fillna(df["Meta_score"].median())
df["Gross"] = df["Gross"].fillna("0")


# print(df.isna().sum())
# print(df["Released_Year"].unique())
# print(df[df["Released_Year"] == "PG"])
df["Released_Year"] = df["Released_Year"].replace("PG", 1995)
df ["Released_Year"] = df["Released_Year"].astype(int)

df["Gross"]=df["Gross"].str.replace(",","").astype(int)
# print(df.dtypes)

df["Runtime"] = df["Runtime"].str.replace(" min","").astype(int)

from sqlalchemy import create_engine

engine = create_engine("mysql+pymysql://root:Pratham123@localhost/imdb")

df.to_sql("imdb_top1000", con=engine, if_exists="replace", index=False)
print("Done!")
