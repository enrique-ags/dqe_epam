Cracking the Persistent L1 Interview – Key Questions & Answers! 🚀
Today, I had the opportunity to attend a Persistent L1 interview, where I faced some interesting Big Data & Spark questions. Here’s a quick recap of the topics covered:
🔹 Joins in Spark – Explained different types like Inner, Left, Right, Full Outer, Cross, and Broadcast joins.
 🔹 Bucketing vs Partitioning – Partitioning divides data into separate folders, while Bucketing distributes data into fixed-size buckets for optimized joins.
 🔹 EC2 vs EMR – EC2 provides virtual servers, whereas EMR is a managed Hadoop/Spark cluster for big data processing.
 🔹 Spark Architecture – Covered DAG, Executors, Tasks, and how Spark distributes workloads.
 🔹 Rank vs DenseRank – Rank skips values for duplicates, while DenseRank gives consecutive ranking.
 🔹 Optimization Techniques – Discussed Predicate Pushdown, Partition Pruning, Caching, and Broadcast Joins.
 🔹 DAG (Directed Acyclic Graph) – Explained how Spark transforms logical execution plans into optimized physical plans.
💡 SQL Challenges:
 ✅ Find products with the same name but different prices:
SELECT * FROM products 
WHERE productname IN (
 SELECT productname FROM products 
 GROUP BY productname 
 HAVING COUNT(DISTINCT price) > 1
);
✅ Find products where sales increased continuously for 3 years in the last 20 years:
SELECT product, year, sales FROM (
 SELECT *, 
 LEAD(sales, 1) OVER (PARTITION BY product ORDER BY year) AS next_1_year,
 LEAD(sales, 2) OVER (PARTITION BY product ORDER BY year) AS next_2_year
 FROM sales
) t 
WHERE sales < next_1_year AND next_1_year < next_2_year
ORDER BY product, year;
I found this interview both challenging and insightful! If you're preparing for Big Data interviews, these questions can help.
 What are your thoughts? Have you faced similar questions? Let’s discuss! 💬
hashtag#BigData hashtag#ApacheSpark hashtag#DataEngineering hashtag#SQL hashtag#InterviewQuestions hashtag#PersistentInterview 🚀