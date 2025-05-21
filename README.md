# dbt-lab

This repo is inspired by the dbt quickstart guide: [jaffle_shop_duckdb](https://github.com/dbt-labs/jaffle_shop_duckdb/tree/duckdb)

## Quickstart

Install the dbt project in a virtual environment
```
uv venv
source .venv/bin/activate
uv add -r requirements.txt
```

# Build the project
```
dbt build
```

# Query the data
```
duckcli jaffle_shop.duckdb
jaffle_shop.duckdb> select * from customers;
```
