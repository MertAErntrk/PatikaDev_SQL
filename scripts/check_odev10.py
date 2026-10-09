"""Smoke-test all three Odev10 JOIN queries with synthetic records."""

from pathlib import Path

import duckdb


def main() -> None:
    conn = duckdb.connect()
    conn.execute("CREATE TABLE country (country_id INTEGER, country VARCHAR)")
    conn.execute("CREATE TABLE city (city_id INTEGER, country_id INTEGER, city VARCHAR)")
    conn.execute("CREATE TABLE customer (customer_id INTEGER, first_name VARCHAR, last_name VARCHAR)")
    conn.execute("CREATE TABLE payment (payment_id INTEGER, customer_id INTEGER)")
    conn.execute("CREATE TABLE rental (rental_id INTEGER, customer_id INTEGER)")
    conn.execute("INSERT INTO country VALUES (1, 'Turkey'), (2, 'USA')")
    conn.execute("INSERT INTO city VALUES (10, 1, 'Istanbul')")
    conn.execute("INSERT INTO customer VALUES (1, 'Ada', 'Y'), (2, 'Lin', 'Z')")
    conn.execute("INSERT INTO payment VALUES (100, 1), (101, 99)")
    conn.execute("INSERT INTO rental VALUES (200, 1), (201, 99)")

    source = Path(__file__).resolve().parents[1] / "Odev10.sql"
    statements = [part.strip() for part in source.read_text(encoding="utf-8").split(";") if part.strip()]
    assert len(statements) == 3, "Odev10.sql should contain three separate queries"
    left, right, full = [conn.execute(statement).fetchall() for statement in statements]
    assert left == [("Turkey", "Istanbul"), ("USA", None)]
    assert set(right) == {("Ada", "Y", 100), (None, None, 101)}
    assert set(full) == {(200, "Ada", "Y"), (201, None, None), (None, "Lin", "Z")}
    print("Odev10: all three JOIN queries returned the expected rows")


if __name__ == "__main__":
    main()
