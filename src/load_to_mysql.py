import pandas as pd
from sqlalchemy import create_engine
from pathlib import Path
from urllib.parse import quote_plus

# ==========================
# MYSQL CONFIG
# ==========================

MYSQL_HOST = "localhost"
MYSQL_PORT = 3306
MYSQL_USER = "root"
MYSQL_PASSWORD = "Samira@8144"
MYSQL_DATABASE = "olist_ecommerce"

# ==========================
# DATA LOCATION
# ==========================

DATA_PATH = Path(r"C:\Users\jenas\OneDrive\Documents\Project3\data\raw")

# ==========================
# CREATE CONNECTION
# ==========================

encoded_password = quote_plus(MYSQL_PASSWORD)

engine = create_engine(
    f"mysql+mysqlconnector://{MYSQL_USER}:{encoded_password}@{MYSQL_HOST}:{MYSQL_PORT}/{MYSQL_DATABASE}"
)

# ==========================
# FILE TO TABLE MAPPING
# ==========================

files = {
    "olist_orders_dataset.csv": "orders",
    "olist_order_items_dataset.csv": "order_items",
    "olist_order_payments_dataset.csv": "order_payments",
    "olist_order_reviews_dataset.csv": "order_reviews",
    "olist_customers_dataset.csv": "customers",
    "olist_sellers_dataset.csv": "sellers",
    "olist_products_dataset.csv": "products",
    "olist_geolocation_dataset.csv": "geolocation",
    "product_category_name_translation.csv": "category_translation"
}

print("=" * 60)
print("LOADING CSV FILES INTO MYSQL")
print("=" * 60)

for file_name, table_name in files.items():

    file_path = DATA_PATH / file_name

    print(f"\nLoading {file_name}...")

    df = pd.read_csv(file_path)

    print(f"Rows: {len(df):,}")
    print(f"Columns: {df.shape[1]}")

    df.to_sql(
        name=table_name,
        con=engine,
        if_exists="replace",
        index=False,
        chunksize=10000,
        method="multi"
    )

    print(f"Loaded into table: {table_name}")

print("\n" + "=" * 60)
print("ALL TABLES LOADED SUCCESSFULLY")
print("=" * 60)