CREATE TABLE stores (
    `id` INTEGER UNSIGNED AUTO_INCREMENT ,
    `name` VARCHAR(255) NOT NULL ,
    `address` VARCHAR(255) NOT NULL ,
    PRIMARY KEY (`id`)    
);
CREATE TABLE suppliers (
    `id` INTEGER UNSIGNED AUTO_INCREMENT ,
    `name` VARCHAR(255) NOT NULL ,
    `phone` VARCHAR(255) NOT NULL ,
    `email` VARCHAR(255) NOT NULL ,
    `brief_data` TEXT ,
    PRIMARY KEY (`id`)
);
CREATE TABLE products (
    `id` INTEGER UNSIGNED AUTO_INCREMENT ,
    `name` VARCHAR(255) NOT NULL ,
    `code` VARCHAR(255) NOT NULL ,
    `price` DOUBLE (9,2) NOT NULL ,    
    `supplier_id` INTEGER UNSIGNED NOT NULL ,
    `description` TEXT ,
    PRIMARY KEY (`id`),
    FOREIGN KEY (`supplier_id`) REFERENCES suppliers(`id`)
);

CREATE TABLE storeProducts (
    `id`  INTEGER UNSIGNED AUTO_INCREMENT ,
    `store_id`  INTEGER UNSIGNED ,
    `product_id`  INTEGER UNSIGNED ,
    PRIMARY KEY (`id`),
    FOREIGN KEY (`store_id`) REFERENCES stores(`id`),
    FOREIGN KEY (`product_id`) REFERENCES products(`id`)
);
