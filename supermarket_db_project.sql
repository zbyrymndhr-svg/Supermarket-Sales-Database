 إنشاء جدول المبيعات
CREATE TABLE sales (
    sale_id INT PRIMARY KEY,
    product_id INT, -- هذا هو المفتاح الخارجي الذي يربطنا بجدول المنتجات
    quantity_sold INT,
    sale_date DATE
);

-- إدخال مبيعات تجريبية
-- العملية 1: تم بيع علبتين من الحليب (product_id = 1)
-- العملية 2: تم بيع 3 أكياس خبز (product_id = 2)
INSERT INTO sales (sale_id, product_id, quantity_sold, sale_date) VALUES
(101, 1, 2, '2026-06-17'),
(102, 2, 3, '2026-06-17');
SELECT 
    sales.sale_id,
    products.product_name,
    sales.quantity_sold,
    products.price
FROM sales
INNER JOIN products ON sales.product_id = products.product_id;
SELECT 
    sales.sale_id,
    products.product_name,
    sales.quantity_sold,
    products.price,
    (sales.quantity_sold * products.price) AS total_revenue
FROM sales
INNER JOIN products ON sales.product_id = products.product_id;
SELECT SUM(sales.quantity_sold * products.price) AS grand_total_profit
FROM sales
INNER JOIN products ON sales.product_id = products.product_id;
