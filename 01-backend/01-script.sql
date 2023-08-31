-- Schema 'liveoutside-ecom'

DROP SCHEMA IF EXISTS `liveoutside-ecom`;

CREATE SCHEMA `liveoutside-ecom`;
USE `liveoutside-ecom`;

-- Create users table
CREATE TABLE IF NOT EXISTS `users` (
  `id` BIGINT(20) AUTO_INCREMENT PRIMARY KEY,
  `username` VARCHAR(255) NOT NULL,
  `email` VARCHAR(255) NOT NULL,
  `password` VARCHAR(255) NOT NULL,
  `shipment_address` VARCHAR(255)
);

-- Create categories table
CREATE TABLE IF NOT EXISTS `categories` (
  `id` INT AUTO_INCREMENT PRIMARY KEY,
  `category_name` VARCHAR(255) NOT NULL
);

-- Create subcategories table
CREATE TABLE IF NOT EXISTS `subcategories` (
  `id` INT AUTO_INCREMENT PRIMARY KEY,
  `subcategory_name` VARCHAR(255) NOT NULL,
  `category_id` INT NOT NULL,
  FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`)
);

-- Create products table
CREATE TABLE IF NOT EXISTS `products` (
  `id` INT AUTO_INCREMENT PRIMARY KEY,
  `sku` VARCHAR(255) NOT NULL,
  `name` VARCHAR(255) NOT NULL,
  `description` VARCHAR(255) NOT NULL,
  `image_url` VARCHAR(255) NOT NULL,
  `units_in_stock` INT NOT NULL,
  `unit_price` DECIMAL(10, 2) NOT NULL,
  `subcategory_id` INT NOT NULL,
  FOREIGN KEY (`subcategory_id`) REFERENCES `subcategories` (`id`)
);

-- Insert dummy data for categories
USE `liveoutside-ecom`;

-- Insert categories
INSERT INTO `categories` (`category_name`) VALUES
  ('Men'), ('Women'), ('Camp'), ('Hike'), ('Climb'), ('Cycle'), ('Food');

-- Insert subcategories 
INSERT INTO `subcategories` (`subcategory_name`, `category_id`) VALUES
  -- Men
  ('Shirts', 1), ('Pants', 1), ('Jackets', 1), ('Footwear', 1),
  -- Women
  ('Shirts', 2), ('Pants', 2), ('Jackets', 2), ('Footwear', 2),
  -- Camp
  ('Tents', 3), ('Sleeping Bags', 3), ('Lounge', 3),
  -- Hike
  ('Backpacks', 4), ('Poles', 4), ('Navigation Tools', 4),
  -- Climb
  ('Climbing Harnesses', 5), ('Carabiners', 5), ('Climbing Ropes', 5),
  -- Cycle
  ('Bicycles', 6), ('Helmets', 6), ('Cycle Accessories', 6),
  -- Food
  ('Packaged Meals', 7), ('Meal Replacements', 7), ('Water', 7), ('Portable Stoves', 7), ('Cookware Sets', 7), ('Campfire Grills', 7);
  
  
  -- Insert products for Men's Shirts
INSERT INTO `products` (`sku`, `name`, `description`, `unit_price`, `image_url`, `units_in_stock`, `subcategory_id`)
VALUES
  ('MEN-SHIRT-001', 'Casual T-Shirt', 'Comfortable and versatile casual t-shirt for men.', 19.99, 'images/shirts/casual-t-shirt.jpg', 50, 1),
  ('MEN-SHIRT-002', 'Plaid Button-Up Shirt', 'Classic plaid button-up shirt for men.', 24.99, 'images/shirts/plaid-button-up-shirt.jpg', 40, 1),
  ('MEN-SHIRT-003', 'Striped Polo Shirt', 'Casual striped polo shirt for men.', 21.99, 'images/shirts/striped-polo-shirt.jpg', 60, 1);

-- Insert products for Men's Shorts
INSERT INTO `products` (`sku`, `name`, `description`, `unit_price`, `image_url`, `units_in_stock`, `subcategory_id`)
VALUES
  ('MEN-SHORTS-001', 'Cargo Shorts', 'Durable cargo shorts for men.', 39.99, 'images/shorts/mens-cargo-shorts.jpg', 30, 2),
  ('MEN-SHORTS-002', 'Athletic Shorts', 'Comfortable athletic shorts for men.', 29.99, 'images/shorts/mens-athletic-shorts.jpg', 50, 2),
  ('MEN-SHORTS-003', 'Denim Shorts', 'Classic denim shorts for men.', 34.99, 'images/shorts/mens-denim-shorts.jpg', 40, 2);

-- Insert products for Men's Pants
INSERT INTO `products` (`sku`, `name`, `description`, `unit_price`, `image_url`, `units_in_stock`, `subcategory_id`)
VALUES
  ('MEN-PANTS-001', 'Cargo Pants', 'Durable cargo pants for men.', 39.99, 'images/pants/mens-cargo-pants.jpg', 30, 3),
  ('MEN-PANTS-002', 'Chino Pants', 'Stylish chino pants for men.', 49.99, 'images/pants/mens-chino-pants.jpg', 20, 3),
  ('MEN-PANTS-003', 'Jeans', 'Classic jeans for men.', 34.99, 'images/pants/mens-jeans.jpg', 40, 3);

-- Insert products for Men's Jackets
INSERT INTO `products` (`sku`, `name`, `description`, `unit_price`, `image_url`, `units_in_stock`, `subcategory_id`)
VALUES
  ('MEN-JACKET-001', 'Hooded Windbreaker', 'Lightweight hooded windbreaker for men.', 59.99, 'images/jackets/mens-hooded-windbreaker.jpg', 15, 4),
  ('MEN-JACKET-002', 'Denim Jacket', 'Classic denim jacket for men.', 64.99, 'images/jackets/mens-denim-jacket.jpg', 10, 4),
  ('MEN-JACKET-003', 'Leather Jacket', 'Stylish leather jacket for men.', 79.99, 'images/jackets/mens-leather-jacket.jpg', 5, 4);

-- Insert products for Men's Footwear
INSERT INTO `products` (`sku`, `name`, `description`, `unit_price`, `image_url`, `units_in_stock`, `subcategory_id`)
VALUES
  ('MEN-FOOTWEAR-001', 'Sneakers', 'Comfortable sneakers for men.', 74.99, 'images/footwear/mens-sneakers.jpg', 20, 5),
  ('MEN-FOOTWEAR-002', 'Hiking Boots', 'Durable hiking boots for men.', 99.99, 'images/footwear/mens-hiking-boots.jpg', 10, 5),
  ('MEN-FOOTWEAR-003', 'Dress Shoes', 'Elegant dress shoes for men.', 89.99, 'images/footwear/mens-dress-shoes.jpg', 15, 5);

-- Insert products for Women's Shirts
INSERT INTO `products` (`sku`, `name`, `description`, `unit_price`, `image_url`, `units_in_stock`, `subcategory_id`)
VALUES
  ('WOMEN-SHIRT-001', 'Basic Crewneck Tee', 'Essential basic crewneck tee for women.', 17.99, 'images/shirts/basic-crewneck-tee.jpg', 50, 6),
  ('WOMEN-SHIRT-002', 'Floral Print Blouse', 'Elegant floral print blouse for women.', 29.99, 'images/shirts/floral-print-blouse.jpg', 40, 6),
  ('WOMEN-SHIRT-003', 'Striped Button-Down Shirt', 'Classic striped button-down shirt for women.', 26.99, 'images/shirts/striped-button-down-shirt.jpg', 60, 6);

-- Insert products for Women's Shorts
INSERT INTO `products` (`sku`, `name`, `description`, `unit_price`, `image_url`, `units_in_stock`, `subcategory_id`)
VALUES
  ('WOMEN-SHORTS-001', 'Denim Shorts', 'Classic denim shorts for women.', 34.99, 'images/shorts/womens-denim-shorts.jpg', 30, 7),
  ('WOMEN-SHORTS-002', 'High-Waisted Shorts', 'Trendy high-waisted shorts for women.', 39.99, 'images/shorts/womens-high-waisted-shorts.jpg', 25, 7),
  ('WOMEN-SHORTS-003', 'Bermuda Shorts', 'Versatile Bermuda shorts for women.', 29.99, 'images/shorts/womens-bermuda-shorts.jpg', 40, 7);

-- Insert products for Women's Pants
INSERT INTO `products` (`sku`, `name`, `description`, `unit_price`, `image_url`, `units_in_stock`, `subcategory_id`)
VALUES
  ('WOMEN-PANTS-001', 'Leggings', 'Comfortable leggings for women.', 24.99, 'images/pants/womens-leggings.jpg', 30, 8),
  ('WOMEN-PANTS-002', 'Chino Pants', 'Stylish chino pants for women.', 47.99, 'images/pants/womens-chino-pants.jpg', 20, 8),
  ('WOMEN-PANTS-003', 'Wide-Leg Pants', 'Elegant wide-leg pants for women.', 54.99, 'images/pants/womens-wide-leg-pants.jpg', 15, 8);

-- Insert products for Women's Jackets
INSERT INTO `products` (`sku`, `name`, `description`, `unit_price`, `image_url`, `units_in_stock`, `subcategory_id`)
VALUES
  ('WOMEN-JACKET-001', 'Hooded Windbreaker', 'Lightweight hooded windbreaker for women.', 54.99, 'images/jackets/womens-hooded-windbreaker.jpg', 20, 9),
  ('WOMEN-JACKET-002', 'Denim Jacket', 'Classic denim jacket for women.', 59.99, 'images/jackets/womens-denim-jacket.jpg', 15, 9),
  ('WOMEN-JACKET-003', 'Leather Jacket', 'Stylish leather jacket for women.', 79.99, 'images/jackets/womens-leather-jacket.jpg', 10, 9);

-- Insert products for Women's Footwear
INSERT INTO `products` (`sku`, `name`, `description`, `unit_price`, `image_url`, `units_in_stock`, `subcategory_id`)
VALUES
  ('WOMEN-FOOTWEAR-001', 'Sneakers', 'Comfortable sneakers for women.', 69.99, 'images/footwear/womens-sneakers.jpg', 25, 10),
  ('WOMEN-FOOTWEAR-002', 'Ankle Boots', 'Chic ankle boots for women.', 89.99, 'images/footwear/womens-ankle-boots.jpg', 15, 10),
  ('WOMEN-FOOTWEAR-003', 'Heeled Sandals', 'Elegant heeled sandals for women.', 79.99, 'images/footwear/womens-heeled-sandals.jpg', 20, 10);

