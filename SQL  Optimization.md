### Some Tips for SQL Query Optimization

- **Avoid using SELECT:**
  - Using `SELECT *` may seem convenient, but it ends up bringing more data than necessary. It's better to select only the columns you really need, which reduces data traffic and improves performance.

- **Use JOIN instead of subqueries:**
  - While subqueries can be useful, it is recommended to minimize them whenever possible, as they can affect performance if not used properly.
  - Replace subqueries with `JOIN` when possible, as they are generally faster and more efficient.
  - Use CTEs for cleaner and more readable queries, but remember that CTEs are not always the most efficient option in terms of performance, depending on the database engine.

- **Avoid functions in the WHERE clause:**
  - Using functions like `YEAR()` or `UPPER()` in the `WHERE` clause can cause indexes to not be used properly. Whenever possible, try to filter by ranges of values.

- **Use EXISTS instead of IN:**
  - If you have a subquery in a `WHERE` clause, prefer using `EXISTS` instead of `IN`. `EXISTS` is generally more efficient, especially with large subqueries, as it does not require creating a full list of values before making the comparison.

- **Eliminate unnecessary use of DISTINCT and ORDER BY:**
  - If not necessary, avoiding `DISTINCT` and `ORDER BY` can make your query much faster. Sorting results or removing duplicates involves additional operations that can slow down queries, so use them only when they are truly essential.

- **Limit results during exploration:**
  - If you are exploring large datasets, use `LIMIT` to get a representative sample. This not only makes the process faster but also facilitates initial analysis.

- **Minimize the use of wildcard characters (LIKE '%...%'):**
  - Wildcard searches like % at the beginning of a term (`LIKE '%Perez%'`) can be very costly, as they do not allow the use of indexes. If possible, use wildcards only at the end of the term (`LIKE 'Perez%'`), which allows optimizing the use of indexes and speeding up the query.

- **Avoid negative searches:**
  - Searches that include NOT (such as `NOT IN` or `NOT LIKE`) can be less efficient. Whenever possible, try to reformulate the query to avoid such negative conditions, which can improve performance.

- **Additional optimizations:**
  - Consider using appropriate indexes.
  - Minimize unnecessary joins.
  - Filter data as early as possible to reduce the load on the database.
  - Use `IN` instead of multiple `OR`s.
  - Filter before performing `JOIN`.