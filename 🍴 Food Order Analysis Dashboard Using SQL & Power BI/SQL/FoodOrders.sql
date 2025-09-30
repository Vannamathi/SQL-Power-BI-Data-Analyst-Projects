create database Project;

use project;
--                                                   FOOD ORDERING SYSTEM
/*
◆ DESCRIPTION:
• This project aims to simulate and analyze an online food ordering platform using SQL databases.
• The system contains structured tables to store restaurant data, customer details, orders, 
 discounts, ratings, and delivery information.
• The goal is to analyze customer ordering behavior, delivery performance, 
 and generate valuable insights for food delivery platforms.

◆ ABOUT:
• Food Ordering System refers to online platforms and apps that allow customers to order meals 
from different restaurants through websites or mobile apps.
• It helps customers explore menus, apply discounts, track delivery status, 
and get food delivered at their doorstep.

• In this project, I am going to create a Food Ordering database system using MySQL.
• The goal is to design and manage the backend structure of a food delivery platform where
• customers can place orders, restaurants prepare food, delivery partners deliver,
and users provide ratings/feedback.

• I will create a table named:
 food_order – to store details like restaurant_name, cuisine_type, 
 cost_of_orders, ratings, food preparation time, delivery time, discount_applied, 
 delivery_status, and order_datetime.

• This project will help in understanding how real food delivery apps like Swiggy, Zomato, 
or Uber Eats store and manage their data in the backend using a structured relational database.
*/ 

create table food_order (
	order_id int primary key,
    customer_id int,
    restaurant_name varchar(100),
    cuisine_type varchar(50),
    cost_of_orders decimal(10,2),
    day_of_the_week varchar(10),
    rating decimal(3,1),
    food_preparation_time int,
    delivery_time int,
    delivery_status varchar(20),
    discount_applied int,
    order_datetime datetime
);

INSERT INTO food_order (order_id, customer_id, restaurant_name, cuisine_type, cost_of_orders, day_of_the_week, rating, food_preparation_time, delivery_time, delivery_status, discount_applied, order_datetime) VALUES
(1, 101, 'Barista', 'Cafe', 233.3, 'Sunday', 4.7, 49, 56, 'Delivered', 20, '2025-09-02 00:00:00'),
(2, 102, 'Barista', 'Cafe', 637.17, 'Wednesday', 4.5, 20, 28, 'Delivered', 20, '2025-09-03 00:00:00'),
(3, 103, 'Saravana Bhavan', 'South Indian', 1371.55, 'Tuesday', 4.0, 44, 54, 'Pending', NULL, '2025-09-04 00:00:00'),
(4, 104, 'Saravana Bhavan', 'South Indian', 1049.31, 'Friday', 4.8, 26, 41, 'Pending', 50, '2025-09-05 00:00:00'),
(5, 105, 'Subway India', 'Sandwiches', 972.43, 'Monday', 4.4, 49, 64, 'Delivered', 30, '2025-09-06 00:00:00'),
(6, 106, 'Burger King', 'Fast Food', 403.1, 'Tuesday', 3.6, 32, 41, 'Delivered', 100, '2025-09-07 00:00:00'),
(7, 107, 'Biryani House', 'Hyderabadi', 946.2, 'Thursday', NULL, 15, 30, 'Cancelled', 30, '2025-09-08 00:00:00'),
(8, 108, 'Dindigul Thalappakatti', 'Chettinad', 238.99, 'Sunday', NULL, 35, 41, 'Delivered', NULL, '2025-09-09 00:00:00'),
(9, 109, 'Mainland China', 'Chinese', 591.9, 'Tuesday', NULL, 16, 31, 'Pending', NULL, '2025-09-10 00:00:00'),
(10, 110, 'Moti Mahal', 'Mughlai', 833.19, 'Monday', 3.8, 36, 49, 'Cancelled', 70, NULL),
(11, 111, 'Mainland China', 'Chinese', 690.21, 'Friday', 4.1, 28, 34, 'Delivered', 30, '2025-09-12 00:00:00'),
(12, 112, 'Barista', 'Cafe', 814.37, 'Wednesday', 4.6, 42, 48, 'Cancelled', 30, '2025-09-13 00:00:00'),
(13, 113, 'Sangeetha Veg Restaurant', 'South Indian', 631.35, 'Saturday', 4.6, 38, 45, 'Cancelled', 20, '2025-09-14 00:00:00'),
(14, 114, 'Pizza Hut', 'Italian', 639.8, 'Tuesday', 3.9, 15, 21, 'Cancelled', 30, '2025-09-15 00:00:00'),
(15, 115, 'Copper Chimney', 'North Indian', 674.39, 'Sunday', 4.6, 37, 48, 'Delivered', 30, '2025-09-16 00:00:00'),
(16, 116, 'Murugan Idli Shop', 'South Indian', 1332.11, 'Wednesday', 4.8, 35, 50, 'Cancelled', 50, '2025-09-17 00:00:00'),
(17, 117, 'Dominos Pizza India', 'Italian', 1165.37, 'Sunday', 4.3, 25, 30, 'Cancelled', 30, '2025-09-18 00:00:00'),
(18, 118, 'Biryani House', 'Hyderabadi', 1039.41, 'Thursday', NULL, 47, 62, 'Cancelled', 20, '2025-09-19 00:00:00'),
(19, 119, 'Subway India', 'Sandwiches', 823.29, 'Thursday', 4.1, 40, 53, 'Pending', 30, NULL),
(20, 120, 'McDonalds India', 'Fast Food', 637.84, 'Wednesday', NULL, 41, 47, 'Delivered', 30, '2025-09-21 00:00:00'),
(21, 121, 'Saravana Bhavan', 'South Indian', 761.6, 'Sunday', 4.3, 42, 52, 'Cancelled', 70, '2025-09-22 00:00:00'),
(22, 122, 'Burger King', 'Fast Food', 629.55, 'Thursday', NULL, 40, 50, 'Pending', 20, '2025-09-23 00:00:00'),
(23, 123, 'Biryani House', 'Hyderabadi', 1303.82, 'Saturday', 4.1, 21, 29, 'Pending', 100, '2025-09-24 00:00:00'),
(24, 124, 'Mainland China', 'Chinese', 560.84, 'Tuesday', 4.9, 40, 46, 'Cancelled', 30, '2025-09-25 00:00:00'),
(25, 125, 'A2B - Adyar Ananda Bhavan', 'Vegetarian', 1352.89, 'Monday', 4.7, 34, 44, 'Delivered', 10, '2025-09-26 00:00:00'),
(26, 126, 'Biryani House', 'Hyderabadi', 332.76, 'Sunday', 3.6, 42, 49, 'Cancelled', 10, '2025-09-27 00:00:00'),
(27, 127, 'McDonalds India', 'Fast Food', 1318.52, 'Wednesday', 4.3, 30, 41, 'Pending', 30, '2025-09-28 00:00:00'),
(28, 128, 'Saravana Bhavan', 'South Indian', 1361.36, 'Sunday', 3.9, 28, 41, 'Cancelled', 100, '2025-09-29 00:00:00'),
(29, 129, 'Barbeque Nation', 'Indian Buffet', 984.26, 'Wednesday', NULL, 48, 54, 'Delivered', 100, '2025-09-30 00:00:00'),
(30, 130, 'Sangeetha Veg Restaurant', 'South Indian', 822.71, 'Tuesday', 4.8, 21, 31, 'Pending', 30, '2025-10-01 00:00:00'),
(31, 131, 'Pizza Hut', 'Italian', 1254.65, 'Saturday', 4.6, 48, 63, 'Delivered', 30, '2025-10-02 00:00:00'),
(32, 132, 'Dominos Pizza India', 'Italian', 764.54, 'Thursday', NULL, 28, 35, 'Pending', 10, '2025-10-03 00:00:00'),
(33, 133, 'Bombay Brasserie', 'North Indian', 610.1, 'Thursday', 4.8, 28, 40, 'Pending', 30, '2025-10-04 00:00:00'),
(34, 134, 'Biryani House', 'Hyderabadi', 445.48, 'Thursday', 4.0, 21, 35, 'Pending', 30, '2025-10-05 00:00:00'),
(35, 135, 'A2B - Adyar Ananda Bhavan', 'Vegetarian', 838.46, 'Sunday', 5.0, 25, 36, 'Delivered', 30, '2025-10-06 00:00:00'),
(36, 136, 'Mainland China', 'Chinese', 1293.33, 'Saturday', 3.8, 36, 50, 'Cancelled', 100, '2025-10-07 00:00:00'),
(37, 137, 'Cream Centre', 'Vegetarian', 255.33, 'Tuesday', 4.4, 39, 52, 'Delivered', 50, '2025-10-08 00:00:00'),
(38, 138, 'Sangeetha Veg Restaurant', 'South Indian', 1075.61, 'Monday', 4.9, 22, 33, 'Cancelled', 70, '2025-10-09 00:00:00'),
(39, 139, 'Mainland China', 'Chinese', 240.96, 'Wednesday', 3.8, 23, 35, 'Pending', 20, '2025-10-10 00:00:00'),
(40, 140, 'Saravana Bhavan', 'South Indian', 449.47, 'Friday', 3.5, 33, 46, 'Delivered', 100, '2025-10-11 00:00:00'),
(41, 141, 'Murugan Idli Shop', 'South Indian', 616.12, 'Friday', 4.4, 31, 36, 'Cancelled', 100, '2025-10-12 00:00:00'),
(42, 142, 'KFC India', 'Fast Food', 1393.74, 'Sunday', NULL, 35, 41, 'Pending', 30, '2025-10-13 00:00:00'),
(43, 143, 'Murugan Idli Shop', 'South Indian', 1359.91, 'Monday', 3.8, 18, 28, 'Delivered', 20, '2025-10-14 00:00:00'),
(44, 144, 'Burger King', 'Fast Food', 603.85, 'Sunday', 3.6, 40, 48, 'Cancelled', 50, '2025-10-15 00:00:00'),
(45, 145, 'Pizza Hut', 'Italian', 1325.26, 'Saturday', 4.1, 41, 55, 'Pending', 100, '2025-10-16 00:00:00'),
(46, 146, 'Dominos Pizza India', 'Italian', 1309.59, 'Sunday', 4.7, 23, 29, 'Pending', NULL, '2025-10-17 00:00:00'),
(47, 147, 'Dindigul Thalappakatti', 'Chettinad', 294.52, 'Monday', 4.3, 32, 46, 'Cancelled', 70, '2025-10-18 00:00:00'),
(48, 148, 'McDonalds India', 'Fast Food', 929.89, 'Sunday', 4.6, 33, 43, 'Delivered', 20, '2025-10-19 00:00:00'),
(49, 149, 'Moti Mahal', 'Mughlai', 649.16, 'Saturday', 4.4, 28, 37, 'Pending', 50, '2025-10-20 00:00:00'),
(50, 150, 'Pizza Hut', 'Italian', 241.7, 'Friday', NULL, 43, 48, 'Pending', 10, '2025-10-21 00:00:00'),
(51, 151, 'Taco Bell India', 'Mexican', 645.71, 'Monday', 4.7, 36, 41, 'Pending', NULL, '2025-10-22 00:00:00'),
(52, 152, 'Saravana Bhavan', 'South Indian', 388.02, 'Thursday', 4.6, 15, 21, 'Cancelled', 100, '2025-10-23 00:00:00'),
(53, 153, 'Burger King', 'Fast Food', 801.67, 'Tuesday', NULL, 50, 58, 'Delivered', NULL, '2025-10-24 00:00:00'),
(54, 154, 'Sangeetha Veg Restaurant', 'South Indian', 909.25, 'Friday', 3.7, 47, 62, 'Delivered', 100, NULL),
(55, 155, 'Burger King', 'Fast Food', 1369.95, 'Friday', 3.8, 49, 55, 'Delivered', 100, '2025-10-26 00:00:00'),
(56, 156, 'Copper Chimney', 'North Indian', 348.39, 'Saturday', 4.3, 44, 59, 'Pending', NULL, '2025-10-27 00:00:00'),
(57, 157, 'Barbeque Nation', 'Indian Buffet', 1442.45, 'Saturday', 5.0, 46, 59, 'Delivered', NULL, '2025-10-28 00:00:00'),
(58, 158, 'Barbeque Nation', 'Indian Buffet', 296.2, 'Tuesday', 3.5, 26, 34, 'Pending', 70, '2025-10-29 00:00:00'),
(59, 159, 'Moti Mahal', 'Mughlai', 875.67, 'Monday', 4.1, 38, 45, 'Cancelled', 100, '2025-10-30 00:00:00'),
(60, 160, 'KFC India', 'Fast Food', 990.2, 'Wednesday', 3.7, 45, 53, 'Pending', NULL, NULL),
(61, 161, 'Dindigul Thalappakatti', 'Chettinad', 1140.65, 'Thursday', 4.5, 48, 63, 'Pending', 50, NULL),
(62, 162, 'Pizza Hut', 'Italian', 1448.91, 'Sunday', NULL, 28, 42, 'Delivered', NULL, '2025-11-02 00:00:00'),
(63, 163, 'Moti Mahal', 'Mughlai', 593.44, 'Tuesday', 3.9, 41, 46, 'Pending', 30, '2025-11-03 00:00:00'),
(64, 164, 'McDonalds India', 'Fast Food', 1102.35, 'Tuesday', 4.7, 30, 42, 'Delivered', 30, '2025-11-04 00:00:00'),
(65, 165, 'Barista', 'Cafe', 335.49, 'Sunday', 3.7, 22, 33, 'Delivered', 10, '2025-11-05 00:00:00'),
(66, 166, 'McDonalds India', 'Fast Food', 834.05, 'Wednesday', 4.6, 45, 58, 'Delivered', 20, '2025-11-06 00:00:00'),
(67, 167, 'Barbeque Nation', 'Indian Buffet', 927.85, 'Sunday', 4.4, 50, 57, 'Pending', 50, '2025-11-07 00:00:00'),
(68, 168, 'Subway India', 'Sandwiches', 464.61, 'Sunday', 4.9, 35, 40, 'Cancelled', 20, '2025-11-08 00:00:00'),
(69, 169, 'Dominos Pizza India', 'Italian', 877.02, 'Friday', 4.6, 45, 55, 'Cancelled', NULL, '2025-11-09 00:00:00'),
(70, 170, 'A2B - Adyar Ananda Bhavan', 'Vegetarian', 573.61, 'Sunday', 4.2, 29, 39, 'Delivered', NULL, '2025-11-10 00:00:00'),
(71, 171, 'A2B - Adyar Ananda Bhavan', 'Vegetarian', 1104.65, 'Sunday', NULL, 34, 44, 'Cancelled', 70, '2025-11-11 00:00:00'),
(72, 172, 'A2B - Adyar Ananda Bhavan', 'Vegetarian', 240.37, 'Monday', 3.6, 17, 28, 'Cancelled', 70, '2025-11-12 00:00:00'),
(73, 173, 'Bombay Brasserie', 'North Indian', 245.82, 'Wednesday', 3.9, 45, 57, 'Delivered', 20, '2025-11-13 00:00:00'),
(74, 174, 'Sangeetha Veg Restaurant', 'South Indian', 1003.67, 'Thursday', 4.1, 15, 30, 'Pending', NULL, NULL),
(75, 175, 'Murugan Idli Shop', 'South Indian', 633.14, 'Saturday', 4.7, 37, 52, 'Delivered', 70, '2025-11-15 00:00:00'),
(76, 176, 'Dindigul Thalappakatti', 'Chettinad', 573.01, 'Friday', 4.1, 39, 51, 'Pending', 50, '2025-11-16 00:00:00'),
(77, 177, 'Burger King', 'Fast Food', 1273.36, 'Wednesday', 3.5, 39, 44, 'Delivered', 70, '2025-11-17 00:00:00'),
(78, 178, 'Mainland China', 'Chinese', 214.82, 'Wednesday', 4.0, 26, 40, 'Pending', 100, '2025-11-18 00:00:00'),
(79, 179, 'Saravana Bhavan', 'South Indian', 1067.73, 'Saturday', 4.3, 23, 31, 'Pending', 20, '2025-11-19 00:00:00'),
(80, 180, 'Mainland China', 'Chinese', 1104.86, 'Friday', 3.9, 23, 38, 'Cancelled', NULL, '2025-11-20 00:00:00'),
(81, 181, 'Biryani House', 'Hyderabadi', 1453.31, 'Friday', 4.7, 41, 53, 'Delivered', NULL, '2025-11-21 00:00:00'),
(82, 182, 'Bombay Brasserie', 'North Indian', 306.63, 'Monday', 4.9, 27, 33, 'Cancelled', 20, '2025-11-22 00:00:00'),
(83, 183, 'Saravana Bhavan', 'South Indian', 1185.98, 'Monday', 4.6, 34, 46, 'Pending', 20, NULL),
(84, 184, 'KFC India', 'Fast Food', 636.94, 'Saturday', 3.7, 50, 59, 'Cancelled', 100, '2025-11-24 00:00:00'),
(85, 185, 'Cream Centre', 'Vegetarian', 1106.08, 'Tuesday', 4.9, 33, 43, 'Delivered', NULL, '2025-11-25 00:00:00'),
(86, 186, 'Bombay Brasserie', 'North Indian', 1087.04, 'Saturday', 4.3, 39, 53, 'Delivered', 20, '2025-11-26 00:00:00'),
(87, 187, 'Subway India', 'Sandwiches', 1394.11, 'Sunday', 4.1, 49, 58, 'Cancelled', 10, '2025-11-27 00:00:00'),
(88, 188, 'Pizza Hut', 'Italian', 246.13, 'Wednesday', 4.3, NULL, NULL, 'Delivered', 100, '2025-11-28 00:00:00'),
(89, 189, 'Dindigul Thalappakatti', 'Chettinad', 806.85, 'Tuesday', 4.9, NULL, NULL, 'Cancelled', 10, '2025-11-29 00:00:00'),
(90, 190, 'Barbeque Nation', 'Indian Buffet', 1050.15, 'Tuesday', 4.5, 27, 37, 'Pending', NULL, '2025-11-30 00:00:00'),
(91, 191, 'McDonalds India', 'Fast Food', 1074.16, 'Monday', 4.4, NULL, NULL, 'Delivered', 70, '2025-12-01 00:00:00'),
(92, 192, 'Murugan Idli Shop', 'South Indian', 459.74, 'Friday', 4.0, 38, 51, 'Pending', 50, NULL),
(93, 193, 'Dominos Pizza India', 'Italian', 988.54, 'Tuesday', 3.5, 48, 60, 'Cancelled', 30, '2025-12-03 00:00:00'),
(94, 194, 'Taco Bell India', 'Mexican', 816.15, 'Thursday', 4.7, 39, 52, 'Pending', 100, '2025-12-04 00:00:00'),
(95, 195, 'McDonalds India', 'Fast Food', 965.2, 'Sunday', 4.2, 20, 25, 'Delivered', 70, '2025-12-05 00:00:00'),
(96, 196, 'Cream Centre', 'Vegetarian', 1420.43, 'Saturday', 4.5, 29, 36, 'Pending', 30, '2025-12-06 00:00:00'),
(97, 197, 'Moti Mahal', 'Mughlai', 930.3, 'Monday', 3.7, 46, 57, 'Delivered', 100, '2025-12-07 00:00:00'),
(98, 198, 'Biryani House', 'Hyderabadi', 1038.61, 'Monday', 3.7, 48, 57, 'Cancelled', 50, '2025-12-08 00:00:00'),
(99, 199, 'Mainland China', 'Chinese', 604.83, 'Sunday', 4.0, 43, 51, 'Delivered', 30, '2025-12-09 00:00:00'),
(100, 200, 'Biryani House', 'Hyderabadi', 1468.63, 'Wednesday', 4.9, 38, 43, 'Pending', 100, '2025-12-10 00:00:00'),
(101, 201, 'Biryani House', 'Hyderabadi', 440.91, 'Thursday', 4.5, 28, 43, 'Pending', NULL, '2025-12-11 00:00:00'),
(102, 202, 'Biryani House', 'Hyderabadi', 1171.08, 'Monday', 4.5, 32, 38, 'Cancelled', 70, NULL),
(103, 203, 'Moti Mahal', 'Mughlai', 283.52, 'Saturday', 4.1, NULL, NULL, 'Pending', 10, '2025-12-13 00:00:00'),
(104, 204, 'A2B - Adyar Ananda Bhavan', 'Vegetarian', 1250.96, 'Monday', 4.3, 41, 47, 'Delivered', NULL, '2025-12-14 00:00:00'),
(105, 205, 'Cream Centre', 'Vegetarian', 772.75, 'Wednesday', 4.4, 40, 49, 'Cancelled', 50, '2025-12-15 00:00:00'),
(106, 206, 'Biryani House', 'Hyderabadi', 735.76, 'Tuesday', 4.0, 25, 31, 'Pending', 10, '2025-12-16 00:00:00'),
(107, 207, 'KFC India', 'Fast Food', 743.55, 'Tuesday', 3.7, 28, 39, 'Pending', 70, '2025-12-17 00:00:00'),
(108, 208, 'A2B - Adyar Ananda Bhavan', 'Vegetarian', 617.56, 'Sunday', 4.9, 36, 42, 'Cancelled', 100, '2025-12-18 00:00:00'),
(109, 209, 'Cream Centre', 'Vegetarian', 934.75, 'Monday', 4.3, 24, 37, 'Pending', 20, '2025-12-19 00:00:00'),
(110, 210, 'Subway India', 'Sandwiches', 565.89, 'Friday', 4.2, 46, 58, 'Pending', 50, '2025-12-20 00:00:00'),
(111, 211, 'Dominos Pizza India', 'Italian', 259.89, 'Monday', 4.9, 46, 54, 'Delivered', 10, '2025-12-21 00:00:00'),
(112, 212, 'Burger King', 'Fast Food', 948.08, 'Thursday', 4.6, 25, 37, 'Delivered', 30, '2025-12-22 00:00:00'),
(113, 213, 'Dindigul Thalappakatti', 'Chettinad', 309.7, 'Thursday', 3.9, 41, 46, 'Pending', 10, '2025-12-23 00:00:00'),
(114, 214, 'Copper Chimney', 'North Indian', 668.81, 'Sunday', 4.4, 25, 39, 'Delivered', 50, '2025-12-24 00:00:00'),
(115, 215, 'Pizza Hut', 'Italian', 1331.08, 'Friday', 4.0, 35, 41, 'Cancelled', NULL, '2025-12-25 00:00:00'),
(116, 216, 'Pizza Hut', 'Italian', 1245.44, 'Saturday', 4.1, 43, 49, 'Cancelled', 20, '2025-12-26 00:00:00'),
(117, 217, 'Taco Bell India', 'Mexican', 1105.65, 'Wednesday', 3.7, 17, 32, 'Pending', 10, '2025-12-27 00:00:00'),
(118, 218, 'KFC India', 'Fast Food', 1067.54, 'Tuesday', 4.5, 31, 36, 'Cancelled', 30, '2025-12-28 00:00:00'),
(119, 219, 'Sangeetha Veg Restaurant', 'South Indian', 865.82, 'Saturday', 3.8, 29, 44, 'Delivered', 30, '2025-12-29 00:00:00'),
(120, 220, 'Biryani House', 'Hyderabadi', 1374.47, 'Wednesday', 3.6, 39, 50, 'Delivered', NULL, '2025-12-30 00:00:00'),
(121, 221, 'Burger King', 'Fast Food', 516.55, 'Monday', 4.6, 46, 54, 'Delivered', 100, '2025-12-31 00:00:00'),
(122, 222, 'Dominos Pizza India', 'Italian', 538.55, 'Monday', 4.9, 24, 39, 'Pending', 10, '2026-01-01 00:00:00'),
(123, 223, 'Copper Chimney', 'North Indian', 712.62, 'Monday', 4.8, 22, 32, 'Pending', 10, '2026-01-02 00:00:00'),
(124, 224, 'Sangeetha Veg Restaurant', 'South Indian', 282.23, 'Tuesday', 4.5, 46, 57, 'Pending', 50, '2026-01-03 00:00:00'),
(125, 225, 'Subway India', 'Sandwiches', 1284.05, 'Tuesday', 4.1, 22, 30, 'Cancelled', 100, '2026-01-04 00:00:00'),
(126, 226, 'Moti Mahal', 'Mughlai', 672.51, 'Sunday', 4.8, 17, 27, 'Cancelled', NULL, '2026-01-05 00:00:00'),
(127, 227, 'A2B - Adyar Ananda Bhavan', 'Vegetarian', 1239.38, 'Tuesday', 3.5, 30, 42, 'Pending', 100, '2026-01-06 00:00:00'),
(128, 228, 'Moti Mahal', 'Mughlai', 1110.47, 'Monday', 4.1, 39, 50, 'Pending', 70, '2026-01-07 00:00:00'),
(129, 229, 'A2B - Adyar Ananda Bhavan', 'Vegetarian', 412.02, 'Tuesday', 3.6, 45, 51, 'Delivered', 10, '2026-01-08 00:00:00'),
(130, 230, 'Dindigul Thalappakatti', 'Chettinad', 958.0, 'Tuesday', 4.8, 24, 39, 'Delivered', NULL, '2026-01-09 00:00:00');

select * from food_order;

-- Identify Null values
SELECT order_id, customer_id, restaurant_name, rating, cost_of_orders,day_of_the_week,food_preparation_time,delivery_time
FROM food_order
WHERE rating IS NULL 
   OR restaurant_name IS NULL 
   OR cost_of_orders IS NULL
   OR day_of_the_week IS NULL
   OR food_preparation_time IS NULL
   OR delivery_time;

-- HANDLING NULL WITH IFNULL()
SELECT order_id,
       customer_id,
       IFNULL(restaurant_name, 'Unknown') AS restaurant_name,
       IFNULL(rating, 0) AS rating,
       IFNULL(cost_of_orders, 0) AS cost_of_orders,  
       IFNULL(day_of_the_week, 'Unknown') AS day_of_the_week,
       IFNULL(food_preparation_time, 0) AS food_prep_time,
       IFNULL(delivery_time, 0) AS delivery_time
FROM food_order;

select order_id,
	ifnull(discount_applied,0)
from food_order;


-- UPDATE THE VALUES IN THE TABLE
SET SQL_SAFE_UPDATES = 0;
UPDATE food_order
SET restaurant_name = IFNULL(restaurant_name, 'Unknown'),
	rating = IFNULL(rating, 0),
    cost_of_orders = IFNULL(cost_of_orders, 0),
    day_of_the_week = IFNULL(day_of_the_week, 'Unknown'),
    food_preparation_time = IFNULL(food_preparation_time, 0),
    delivery_time = IFNULL(delivery_time, 0);
    
update food_order
set	discount_applied = IFNULL(discount_applied, 0);
SELECT * FROM food_order;

UPDATE food_order
SET order_datetime = '2025-01-01 00:00:00'
WHERE order_datetime IS NULL;
/* 
1. Write a query to find the total number of orders in the food_order table.
2. Display all distinct cuisine types from the cuisine_type column.
3. Find the top 5 highest order values from cost_of_orders.
4. Count how many orders exist for each restaurant (using GROUP BY).
5. Find the average cost_of_orders for each cuisine_type.
6. List all orders where the cost_of_orders is greater than the average order cost.
7. Find the maximum and minimum ratings given by customers.
8. Retrieve all orders placed between two given dates using order_datetime.
9. Write a query to sort all orders in descending order of cost_of_orders.
10. Use join on the food_order table to find pairs of orders placed on the same day of the week.
11. Find cuisine types that have no orders on Sunday.
*/
-- Top Restaurant by Revenue
select restaurant_name, sum(cost_of_orders) as total_sale
from food_order
group by restaurant_name
order by total_sale desc;

-- Most Popular Cuisine
SELECT cuisine_type, COUNT(*) AS total_orders
FROM food_order
GROUP BY cuisine_type
ORDER BY total_orders DESC;

-- 1.write a query to find the total number of orders in the food_order table
SELECT COUNT(order_id) FROM food_order;

-- 2. Display all distinct cuisine types from the cuisine_type column
SELECT DISTINCT(cuisine_type) as Unique_Cuisine FROM food_order;

-- 3. Find the top 5 highest order values from cost_of_orders
SELECT restaurant_name, cuisine_type, cost_of_orders FROM food_order
ORDER BY cost_of_orders DESC 
LIMIT 5;

-- 4. Count how may orders exist for each restaurant
SELECT 
	restaurant_name,
    COUNT(order_id) AS total_orders
FROM food_order
GROUP BY restaurant_name;

-- 5. Find the average cost_of_orders for each cuisine_type
SELECT
	cuisine_type,
    AVG(cost_of_orders) AS Avg_cost
FROM food_order
GROUP BY cuisine_type;

-- 6. List all orders where the cost_of_orders is greater than the average order cost.
SELECT *
FROM food_order
WHERE cost_of_orders >
				(SELECT AVG(cost_of_orders) FROM food_order);
                
-- 7. Find the maximum and minimum ratings given by customers.
SELECT
	MAX(rating)  AS MAX_RATING,
    MIN(rating) AS MIN_RATING
FROM food_order;

-- Check what dates exist in your dataset
SELECT MIN(order_datetime) AS first_date, 
       MAX(order_datetime) AS last_date
FROM food_order;

-- 8.Retrieve all orders placed between two given dates using order_datetime.
SELECT * 
FROM food_order
WHERE order_datetime BETWEEN '2025-01-01' AND '2026-01-10';

-- 9. Write a query to sort all orders in descending order of cost_of_orders.
SELECT * FROM food_order
ORDER BY cost_of_orders DESC ;

-- 10. Use join on the food_order table to find pairs of orders placed on the same day of the week.
SELECT f1.order_id AS order1,
	   f2.order_id AS order2,
       f1.day_of_the_week
FROM food_order f1
JOIN food_order f2
	ON f1.day_of_the_week = f2.day_of_the_week
    AND f1.order_id < f2.order_id;

-- 11. Find cuisine types that have no orders on Sunday
SELECT DISTINCT cuisine_type
FROM food_order f1
WHERE cuisine_type NOT IN (
	SELECT  f2.cuisine_type
    FROM food_order f2
    WHERE f2.day_of_the_week = 'Sunday'
    );

-- 12. Retrieve the 2nd highest order value from the food_order table.
SELECT 
	MAX(cost_of_orders) AS Second_Highest_Order
FROM food_order
WHERE cost_of_orders < (
		SELECT MAX(cost_of_orders) FROM food_order);
        
-- 13. Find total revenue per month
SELECT
	MONTH(order_datetime) AS 'Month',
    SUM(cost_of_orders) AS Total_revnue
FROM food_order
GROUP BY MONTH(order_datetime)
ORDER  BY 'Month';

-- 14. Find restaurants with multiple orders on the same day
SELECT 
    restaurant_name, order_datetime, COUNT(*) AS orders_count
FROM food_order
GROUP BY restaurant_name, order_datetime
HAVING COUNT(*) > 1;

-- 15. Retrieve all orders where delivery_status is 'Pending'.
SELECT * FROM food_order
	WHERE delivery_status = 'Pending';
    
-- 16. Display the customer_id, restaurant_name, and cost_of_orders for orders where discount_applied is greater than 50.
SELECT customer_id,
	   restaurant_name,
       cost_of_orders
FROM food_order
WHERE discount_applied > 50;

-- 17. Find the number of unique customers (customer_id) who placed orders.
SELECT COUNT(DISTINCT customer_id) AS unique_customers
FROM food_order;

-- 18.  Percentage contribution of each cuisine_type to the total revenue
SELECT 
    cuisine_type,
    ROUND(SUM(cost_of_orders) * 100.0 / (SELECT SUM(cost_of_orders) FROM food_order), 2) AS revenue_percentage
FROM food_order
GROUP BY cuisine_type
ORDER BY revenue_percentage DESC;

-- 19. Find the total revenue per month from the food_order table 
SELECT 
	  DATE_FORMAT(order_datetime, '%Y-%m')  AS order_month,
      SUM(cost_of_orders) AS Total_revenue
FROM food_order
GROUP BY DATE_FORMAT(order_datetime, '%Y-%m')
ORDER BY order_month;

-- 20. Update the delivery_status column to 'Delayed' where delivery_time is greater than 45 minutes.
UPDATE food_order
SET delivery_status = 'Delayed'
WHERE delivery_time > 45;

-- To verify
SELECT order_id, delivery_time, delivery_status
FROM food_order
WHERE delivery_time > 45;

-- 21. Find the running total of cost_of_orders using WINDOW FUNCTION.
SELECT 
	  order_id,
      restaurant_name,
      cost_of_orders,
      SUM(cost_of_orders) OVER (ORDER BY order_id) AS Running_total
FROM food_order;

-- 22. Find the rank of each order based on cost_of_orders.
SELECT 
	  order_id,
      restaurant_name,
      cost_of_orders,
	  RANK() OVER( ORDER BY cost_of_orders DESC) AS order_rank
FROM food_order;

-- 23. Use CTE to find the top 3 highest orders per cuisine_type.
WITH RankedOrders AS (
		SELECT 
			cuisine_type,
            order_id,
            restaurant_name,
            cost_of_orders,
            ROW_NUMBER() OVER (PARTITION BY cuisine_type ORDER BY cost_of_orders DESC) AS Row_num
		FROM food_order
	)
SELECT * 
FROM RankedOrders
WHERE Row_num <= 3;

-- 24. Create a stored procedure that accepts a customer_id and returns all their orders.

DELIMITER $$

CREATE PROCEDURE GetCustomerOrders(IN cust_id INT)
BEGIN 
	SELECT *
    FROM food_order
    WHERE customer_id = cust_id;
END$$
DELIMITER ;

-- TO CALL
CALL GetCustomerOrders(105);

-- 25. Use CASE WHEN to categorize rating as High, Medium, or Low.
SELECT
	order_id,
    rating,
    CASE
		WHEN rating >= 4.5 THEN 'High'
        WHEN rating BETWEEN 3.0 AND 4.49 THEN 'Medium'
        ELSE 'Low'
	END AS rating_category
FROM food_order;

-- 26. Write a query to pivot total revenue by cuisine_type
SELECT 
    SUM(CASE WHEN cuisine_type = 'South Indian' THEN cost_of_orders ELSE 0 END) AS South_Indian_Revenue,
    SUM(CASE WHEN cuisine_type = 'North Indian' THEN cost_of_orders ELSE 0 END) AS North_Indian_Revenue,
    SUM(CASE WHEN cuisine_type = 'Italian' THEN cost_of_orders ELSE 0 END) AS Italian_Revenue,
    SUM(CASE WHEN cuisine_type = 'Fast Food' THEN cost_of_orders ELSE 0 END) AS FastFood_Revenue
FROM food_order;

-- 27. Create a view that shows order details with monthly revenue.
CREATE VIEW MonthlyRevenue AS
SELECT 
	  MONTH(order_datetime) AS month,
      YEAR(order_datetime) AS Year,
      SUM(cost_of_orders) AS Total_Revenue
FROM food_order
GROUP BY YEAR(order_datetime),
MONTH(order_datetime);
-- to view
SELECT * FROM MonthlyRevenue;

-- 28.Create a trigger for INSERT
-- Create a trigger log table for INSERT actions
CREATE TABLE insert_trigger_log (
	log_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT,
    customer_id INT,
    cuisine_type VARCHAR(100),
    cost_of_orders DECIMAL(10,2),
    action_type VARCHAR(50),
    inserted_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
    );
-- Trigger
DELIMITER $$

CREATE TRIGGER trg_foodOrder_insert
AFTER INSERT ON food_order
FOR EACH ROW
BEGIN
	INSERT INTO insert_trigger_log ( order_id, customer_id, cuisine_type, cost_of_orders, action_type)
    VALUES (NEW.order_id, NEW.customer_id, NEW.cuisine_type, NEW.cost_of_orders, 'INSERT');
END $$

DELIMITER ;

-- Insert a new order
INSERT INTO food_order (order_id, customer_id, restaurant_name, cuisine_type, cost_of_orders, day_of_the_week, rating, food_preparation_time, delivery_time, delivery_status, discount_applied, order_datetime)
VALUES (501, 201, 'Taj Hotel', 'South Indian', 450.00, 'Monday', 4.5, 30, 40, 'Pending', 0, NOW());

-- Check log table
SELECT * FROM insert_trigger_log;


-- 29. Create an index on the order_datetime column to optimize queries that retrieve orders between two dates.
CREATE INDEX idx_order_date 
ON food_order(order_datetime);

EXPLAIN SELECT *
FROM food_order
WHERE order_datetime BETWEEN '2025-01-01' AND '2025-06-30';

-- 30. Write a query to rank all orders based on cost_of_orders (highest to lowest) using a window function.
SELECT 
	 order_id,
     customer_id,
     restaurant_name,
     cost_of_orders,
     DENSE_RANK() OVER(ORDER BY cost_of_orders DESC) AS order_rank
FROM food_order;
