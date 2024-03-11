-- Q. Create schema in any Database script or any ORM (Object Relational Mapping).
-- 
-- schema.sql
-- Product table
CREATE TABLE product (
    id INT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    description VARCHAR(255),
    SKU VARCHAR(255) NOT NULL UNIQUE,
    category_id INT NOT NULL,
    inventory_id INT NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    modified_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    deleted_at DATETIME DEFAULT NULL,
);

-- Product_category table
CREATE TABLE product_category (
    id INT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    description VARCHAR(255),
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    modified_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    deleted_at DATETIME DEFAULT NULL
);

-- Product_inventory table
CREATE TABLE product_inventory (
    id INT PRIMARY KEY,
    quantity INT NOT NULL,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    modified_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    deleted_at DATETIME DEFAULT NULL
);

-- Discount table
CREATE TABLE discount (
    id INT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    description VARCHAR(255),
    discount_percent DECIMAL(5, 2) NOT NULL CHECK (
        discount_percent >= 0.00
        AND discount_percent <= 1.00
    ),
    active BOOLEAN NOT NULL DEFAULT TRUE,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    modified_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    deleted_at DATETIME DEFAULT NULL
);