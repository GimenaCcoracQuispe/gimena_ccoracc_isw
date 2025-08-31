-- ====================================
-- DATOS PARA SISTEMA DE BODEGA
-- ====================================
-- Usar la Base de Datos
USE BodegaDB;
GO
-- ====================================
-- INSERCIONES DE PRUEBA
-- ====================================

-- Inserciones en la tabla 'role'
INSERT INTO role (position, name, surname, description) VALUES
('administrador','Jose','Quispe', 'Acceso completo al sistema'),
('administrador','Maria','Romero', 'Acceso completo al sistema'),
('administrador','Ana','Ortiz', 'Acceso completo al sistema'),
('administrador','Juan','Sanchez', 'Acceso completo al sistema'),
('administrador','Gina','Ortega', 'Acceso completo al sistema'),
('administrador','Gian','Quispe', 'Acceso completo al sistema'),
('administrador','Jose','Ortega', 'Acceso completo al sistema'),
('administrador','Tatiana','Quispe', 'Acceso completo al sistema'),
('administrador','Carlos','Fernandez', 'Acceso completo al sistema'),
('vendedor','Karla','Quispe', 'Realiza ventas y gestiona clientes');
-- Inserciones en la tabla 'user'
INSERT INTO useer (name, surname, email, password, role_id) VALUES
('Juan', 'Pérez','juan@example.com', '123456', 1),
('Laura','Torres', 'laura@example.com', 'abc123', 2),
('Inés','Quispe', 'ines@example.com', '123abc', 3),
('José', 'Lopez','jose@example.com', '654321', 4),
('María','Flores', 'maria@example.com', 'cba123', 5),
('Juana','Rojas', 'juana@example.com', '098abc', 6),
('Julia','Sulca', 'julia@example.com', '978grf', 7),
('Mario','Huaman', 'mario@example.com', '856yhu', 8),
('Angelo','Quispe', 'angelo@example.com', '976ytg', 9),
('Miriam','Lopez', 'miriam@example.com', '654opd', 10);

-- Inserciones en la tabla 'customer'
INSERT INTO customer(name, surname, birth_date, phone, email, client_type, dni, gender)
VALUES
('Carlos', 'Gonzales', '10-05-1999', '987654321', 'carlos@gmail.com', 'frecuente', '12345668', 'Masculino'),
('Micaela', 'Lopez', '10-03-1995', '923709654', 'micaela@gmail.com', 'frecuente', '75643290', 'Femenino'),
('Moises', 'Quispe', '10-01-1999', '980967432', 'moises@gmail.com', 'frecuente', '86754389', 'Masculino'),
('Gino', 'Condori', '10-04-1989', '907645321', 'gino@gmail.com', 'frecuente', '75432175', 'Masculino'),
('Diego', 'Flores', '05-08-2000', '956342756', 'diego@gmail.com', 'frecuente', '70965487', 'Masculino'),
('Francisco', 'Rojas', '08-09-1998', '978645827', 'francisco@gmail.com', 'frecuente', '76598756', 'Masculino'),
('Roberto', 'Huaman', '1-10-1979', '986310743', 'roberto@gmail.com', 'frecuente', '77643687', 'Masculino'),
('Alex', 'Conca', '1-11-1999', '974675081', 'alex@gmail.com', 'frecuente', '76529860', 'Masculino'),
('Alexia', 'Florez', '5-09-1999', '974675011', 'alexia@gmail.com', 'frecuente', '70529860', 'Femenino'),
('Gian', 'Quispe', '1-12-1999', '974670081', 'gian@gmail.com', 'frecuente', '76520860', 'Masculino');


INSERT INTO supplier(name, position, ruc, phone, email, address)
VALUES
('Insumos Perú SAC', 'Representante', '20123456789', '912345678', 'contacto@insumosperu.com', 'Jr. Comercio 456'),
('Coca-Cola (Arca Continental Lindley)', 'Representante', '23856701233', '912345678', 'arcacontinental@gmail.com', 'Av. Javier Prado 126'),
('Distribuidora Don Lucho', 'Representante', '26530816452', '980654287', 'donlucho@gmail.com', 'Av. Los Girasoles 1125'),
('Distribuidora Continental', 'Representante', '26574037562', '975215643', 'continental@gmail.com', 'Calle Las Orquídeas 345'),
('Distribuidora San Jorge ', 'Representante', '28965740383', '908687534', 'sanjorge@gmail.com', 'Jr. Pachacútec 215'),
('Envapack Perú', 'Representante', '21347065433', '983164231', 'envapack@gmail.com', 'Av. Grau 890'),
('Comercializadora Santa Rosa', 'Representante', '28765438974', '987754233', 'santarosa@gmail.com', 'Av. Tomás Valle'),
('Distribuciones El Sol S.A.C.', 'Representante', '24638720981', '987876980', 'elsol@gmail.com', 'Calle Amazonas 142'),
('Comercial El Buen Precio', 'Representante', '26358796528', '908768964', 'elbuenprecio@gmail.com', 'Jr. El Inca 101'),
('Abastos Integrales del Sur', 'Representante', '29065432786', '943543654', 'integralesdelsur@gmail.com', 'Av. Las Industrias 300');

INSERT INTO product (name, description, category, brand, unit_measurement, unit_price, stock, minimum_stock, expiration_date)
VALUES
('Aceite Vegetal', 'Aceite comestible de girasol', 'Alimentos', 'Primor', 'l', 12.50, 50, 10, '2025-12-31'),
('Arroz Extra', 'Arroz envasado calidad extra', 'Alimentos', 'Costeño', 'kg', 4.20, 100, 20, '2026-06-30'),
('Leche Evaporada', 'Leche evaporada en lata', 'Lácteos', 'Gloria', 'unidad', 3.80, 80, 15, '2025-11-15'),
('Detergente en Polvo', 'Detergente para ropa multisusos', 'Limpieza', 'Ace', 'kg', 7.50, 60, 10, '2025-09-01'),
('Fideos Spaghetti', 'Fideos tipo spaghetti 500g', 'Alimentos', 'Don Vittorio', 'unidad', 3.10, 90, 15, '2026-01-20'),
('Jabón de Tocador', 'Jabón en barra para uso personal', 'Higiene', 'Dove', 'unidad', 2.80, 70, 10, '2025-09-01'),
('Galletas de Chocolate', 'Paquete de galletas rellenas de chocolate', 'Snacks', 'Field', 'unidad', 1.50, 120, 20, '2025-10-10'),
('Atún en Lata', 'Atún en agua enlatado 170g', 'Conservas', 'Florida', 'unidad', 4.50, 55, 10, '2026-03-15'),
('Papel Higiénico', 'Paquete de 4 rollos de papel higiénico', 'Higiene', 'Elite', 'unidad', 6.90, 40, 8, '2025-09-01'),
('Gaseosa 1.5L', 'Bebida gaseosa sabor cola', 'Bebidas', 'Coca-Cola', 'l', 5.00, 65, 12, '2025-09-01');

INSERT INTO purchase(supplier_id, invoice_number, payment_method)
VALUES 
(1, 'F001-000123', 'efectivo'),
(2, 'F001-000124', 'efectivo'),
(3, 'F001-000125', 'efectivo'),
(4, 'F001-000126', 'efectivo'),
(5, 'F001-000127', 'efectivo'),
(6, 'F001-000128', 'efectivo'),
(7, 'F001-000129', 'efectivo'),
(8, 'F001-000130', 'efectivo'),
(9, 'F001-000131', 'efectivo'),
(10, 'F001-000132', 'efectivo');

INSERT INTO purchase_detail(purchase_id, product_id, amount, unit_price, batch)
VALUES 
(1, 1, 20, 11.00, 'L123'),
(2, 2, 50, 3.90, 'L124'),
(3, 3, 30, 3.50, 'L125'),
(4, 4, 40, 7.00, 'L126'),
(5, 5, 60, 2.90, 'L127'),
(6, 6, 35, 2.60, 'L128'),
(7, 7, 80, 1.30, 'L129'),
(8, 8, 25, 4.20, 'L130'),
(9, 9, 20, 6.50, 'L131'),
(10, 10, 45, 4.80, 'L132');



INSERT INTO sale(customer_id, receipt_type, series, correlative, payment_form)
VALUES (1, 'boleta', 'B001', 1001, 'efectivo'),
(2, 'boleta', 'F001', 1002, 'efectivo'),
(3, 'boleta', 'B001', 1003, 'yape'),
(4, 'boleta', 'B001', 1004, 'efectivo'),
(5, 'boleta', 'F001', 1005, 'efectivo'),
(6, 'boleta', 'B001', 1006, 'efectivo'),
(7, 'boleta', 'F001', 1007, 'yape'),
(8, 'boleta', 'B001', 1008, 'yape'),
(9, 'boleta', 'F001', 1009, 'efectivo'),
(10, 'boleta', 'B001', 1010, 'efectivo');

INSERT INTO sale_detail(sale_id, product_id, amount, unit_price)
VALUES (1, 1, 2, 12.50),
(2, 2, 5, 4.00),
(3, 3, 1, 3.50),
(4, 4, 3, 6.80),
(5, 5, 2, 2.90),
(6, 6, 4, 2.60),
(7, 7, 6, 1.30),
(8, 8, 1, 4.20),
(9, 9, 3, 6.50),
(10, 10, 2, 4.80);

-- ====================================
-- ACTUALIZACIONES DE EJEMPLO
-- ====================================
-- ====================================
-- TABLAS MAESTRAS DE NEGOCIO
-- ====================================
-- CUSTOMER
UPDATE customer
SET name = 'Maria', phone = '921111111'
WHERE customer_id = 1;

select * from customer;

-- SUPPLIER
UPDATE supplier
SET ruc = '29123456789'
WHERE supplier_id= 1;

select * from supplier;

-- PRODUCT
UPDATE product
SET stock = stock + 20
WHERE product_id = 1;

UPDATE product
SET brand = 'Laive'
WHERE product_id= 1;

UPDATE product
SET status = 'I'
WHERE product_id= 1;

select * from product;
-- ====================================
-- TABLAS MAESTRAS DE GESTIÓN DE SISTEMA
-- ====================================
-- ROLE
UPDATE role
SET position = 'vendedor', description = 'Realiza ventas y gestiona clientes'
WHERE role_id= 1;

select * from role;

-- USEER
UPDATE useer
SET password = '1jbg0'
WHERE useer_id = 1;
select * from useer;

-- ====================================
-- TABLAS TRANSACCIONALES
-- ====================================
-- SALE
UPDATE sale
SET payment_form = 'yape'
WHERE sale_id = 1;

select * from sale;

-- SALE DETAIL
UPDATE sale_detail
SET unit_price = '4.50'
WHERE sale_detail_id = 2;

select * from sale_detail;

-- PURCHASE
UPDATE purchase
SET payment_method = 'transferencia'
WHERE purchase_id = 1;

select * from purchase;

-- PURCHASE DETAIL
UPDATE purchase_detail
SET unit_price = '11.50'
WHERE purchase_detail_id = 1;

select * from purchase_detail;
-- ====================================
-- ELIMINACIONES DE EJEMPLO
-- ====================================

-- Desactivar usuario (no eliminar)
UPDATE useer
SET active = 0
WHERE useer_id = 2;

select * from useer;
-- Eliminar proveedor si no tiene compras
DELETE FROM supplier
WHERE supplier_id = 1 AND NOT EXISTS (
    SELECT 1 FROM purchase WHERE supplier_id = 1
);

select * from supplier;
-- ====================================
-- CONSULTAS ÚTILES PARA VER ESQUEMA
-- ====================================

-- Ver todas las tablas
SELECT TABLE_SCHEMA, TABLE_NAME
FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_TYPE = 'BASE TABLE';

-- Ver columnas, tipos de datos y longitud
SELECT 
    TABLE_NAME, 
    COLUMN_NAME, 
    DATA_TYPE, 
    CHARACTER_MAXIMUM_LENGTH, 
    IS_NULLABLE
FROM INFORMATION_SCHEMA.COLUMNS
ORDER BY TABLE_NAME, ORDINAL_POSITION;

-- Ver claves primarias
SELECT 
    KU.TABLE_NAME, 
    KU.COLUMN_NAME, 
    TC.CONSTRAINT_NAME
FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS AS TC
JOIN INFORMATION_SCHEMA.KEY_COLUMN_USAGE AS KU
    ON TC.CONSTRAINT_NAME = KU.CONSTRAINT_NAME
WHERE TC.CONSTRAINT_TYPE = 'PRIMARY KEY'
ORDER BY KU.TABLE_NAME;

-- Ver claves foráneas y sus referencias
SELECT 
    FK.name AS FK_constraint,
    TP.name AS parent_table,
    CP.name AS parent_column,
    TR.name AS referenced_table,
    CR.name AS referenced_column
FROM sys.foreign_keys AS FK
INNER JOIN sys.foreign_key_columns AS FKC ON FK.object_id = FKC.constraint_object_id
INNER JOIN sys.tables AS TP ON FKC.parent_object_id = TP.object_id
INNER JOIN sys.columns AS CP ON FKC.parent_object_id = CP.object_id AND FKC.parent_column_id = CP.column_id
INNER JOIN sys.tables AS TR ON FKC.referenced_object_id = TR.object_id
INNER JOIN sys.columns AS CR ON FKC.referenced_object_id = CR.object_id AND FKC.referenced_column_id = CR.column_id
ORDER BY FK.name;