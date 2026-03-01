-- Estructura de tablas inicial
CREATE TABLE productos (
    Product VARCHAR(255) PRIMARY KEY,
    Category VARCHAR(100),
    Brand VARCHAR(100),
    Price DECIMAL(10,2),
    Rating DECIMAL(3,2),
    Reviews INT
);

CREATE TABLE ventas (
    OrderID VARCHAR(50) PRIMARY KEY,
    Product VARCHAR(255),
    Platform VARCHAR(100),
    City VARCHAR(100),
    Quantity INT,
    TotalAmount DECIMAL(10,2),
    OrderDate DATE
);

-- Facturacion total por categoria
SELECT p.Category, SUM(v.TotalAmount) AS total_ventas
FROM ventas v
JOIN productos p ON v.Product = p.Product
GROUP BY 1
ORDER BY 2 DESC;

-- Top 5 marcas con mas ingresos
SELECT p.Brand, SUM(v.TotalAmount) AS ingresos
FROM ventas v
JOIN productos p ON v.Product = p.Product
GROUP BY 1
ORDER BY 2 DESC
LIMIT 5;

-- Promedio de valoracion segun plataforma
SELECT v.Platform, AVG(p.Rating) AS score_promedio
FROM ventas v
JOIN productos p ON v.Product = p.Product
GROUP BY 1
ORDER BY 2 DESC;

-- Ventas mensuales (evolucion temporal)
SELECT YEAR(OrderDate) AS anio, MONTH(OrderDate) AS mes, SUM(TotalAmount) AS mensual
FROM ventas
GROUP BY 1, 2
ORDER BY 1, 2;

-- Gasto promedio por ciudad
SELECT City, AVG(TotalAmount) AS ticket_prom
FROM ventas
GROUP BY 1
ORDER BY 2 DESC;

-- Filtro de productos con mejor rating y popularidad
SELECT Product, Category, Rating, Reviews
FROM productos
WHERE Rating > 4.5 AND Reviews > 4000;

-- Market share por cada plataforma (%)
SELECT Platform, 
       SUM(TotalAmount) AS ventas_sitio,
       (SUM(TotalAmount) / (SELECT SUM(TotalAmount) FROM ventas) * 100) AS share
FROM ventas
GROUP BY 1;

-- Producto mas vendido en la categoria de electronica
SELECT p.Product, SUM(v.Quantity) AS unidades
FROM ventas v
JOIN productos p ON v.Product = p.Product
WHERE p.Category = 'Electronics'
GROUP BY 1
ORDER BY 2 DESC
LIMIT 1;

-- Dias con picos de venta superiores a 100k
SELECT OrderDate, SUM(TotalAmount) AS total_diario
FROM ventas
GROUP BY 1
HAVING total_diario > 100000
ORDER BY 2 DESC;

-- Relacion precio vs cantidad de reseñas
SELECT Product, Price, Reviews, (Reviews / Price) AS ratio_interaccion
FROM productos
WHERE Price > 0
ORDER BY 4 DESC
LIMIT 10;