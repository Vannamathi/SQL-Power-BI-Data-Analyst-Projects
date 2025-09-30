# 🍴 Food Order Analysis Dashboard (Power BI)

## 📌 Project Overview
This project analyzes a **Food Ordering dataset** using **Power BI** to provide insights into:
- Business performance (Orders, Revenue, Ratings, Customer Trends)
- Delivery efficiency (On-time vs Late deliveries, Average preparation & delivery time)
- Discount impact on revenue and customer behavior

The dashboard is **interactive, user-friendly, and designed for decision-making**.  
It consists of a **Home Page** and **3 Insight Pages**: Business Health, Delivery Performance, and Discount Insights.  

---

## 🗂 Dataset Details
The dataset contains the following columns:
- **order_id** – Unique order identifier  
- **customer_id** – Customer reference  
- **restaurant_name** – Restaurant fulfilling the order  
- **cuisine_type** – Cuisine category (e.g., Indian, Italian, Chinese)  
- **order_datetime** – Date and time of the order  
- **day_of_the_week** – Day the order was placed  
- **cost_of_orders** – Total cost of the order  
- **discount_applied** – Discount value applied (if any)  
- **delivery_status** – On-time or Late delivery  
- **delivery_time** – Time taken for delivery  
- **food_preparation_time** – Time taken to prepare the order  
- **rating** – Customer feedback rating  

---

## 📊 Dashboard Pages

### 🏠 **Home Page**
- Title & Navigation Buttons (Business Health, Delivery, Discount)  
- Dynamic Date Card (using DAX `TODAY()`)  
- Serves as the **main entry point** to all dashboards  

![Home Page](Images/Image1.jpg)

---

### 📈 **Business Health Page**
**KPIs:**  
- Total Orders  
- Total Revenue  
- Average Rating  

**Visuals:**  
- Popular Cuisines and Their Performance  
- Revenue by Cuisine  
- Top Customers (Highest Revenue Contribution)  

**Filters/Slicers:**  
- Date  
- Cuisine Type  

![Business Health](Images/Image2.jpg)

---

### 🚚 **Delivery Performance Page**
**KPIs:**  
- Avg Delivery Time  
- % On-Time Delivery  
- Late Deliveries  

**Visuals:**  
- Delivery Status Overview (Pie/Donut)  
- Avg Delivery Time by Restaurant  
- Weekly Order Trends  
- Avg Preparation Time by Cuisine Type  
- Restaurant Ratings Overview  

**Filters/Slicers:**  
- Delivery Status  
- Cuisine Type  
- Days of the Week  

![Delivery Performance](Images/Image3.jpg)

---

### 💸 **Discount Insights Page**
**KPIs:**  
- Total Discounts  
- Net Revenue (after discounts)  
- % Orders with Discount  

**Visuals:**  
- Area Chart: Orders & Revenue Trends Over Time  
- Bar Chart: % Revenue Lost by Month  
- Bar Chart: Impact of Discount on Orders  
- Donut Chart: Orders With vs Without Discount  

**Filters/Slicers:**  
- Cuisine Type  
- Duration  
- Restaurant Name  

![Discount Insights](Images/Image4.jpg)

---

## 🛠️ Key DAX Measures
Some measures used in the report:  
- **Total Revenue** = SUM('food_order'[cost_of_orders])  
- **Average Rating** = AVERAGE('food_order'[rating])  
- **Net Revenue** = SUM('food_order'[cost_of_orders]) - SUM('food_order'[discount_applied])  
- **Orders with Discount** = COUNTROWS(FILTER('food_order', 'food_order'[discount_applied] > 0))  
- **% On-Time Deliveries** = DIVIDE(CALCULATE(COUNTROWS('food_order'), 'food_order'[delivery_status] = "On-Time"), COUNTROWS('food_order'))  

---

## 🚀 Insights & Benefits
- 📈 Track overall business health through revenue, orders, and customer ratings  
- 🚚 Identify operational bottlenecks in delivery and preparation time  
- 💸 Evaluate how discounts affect revenue and ordering behavior  
- 🎯 Support better decision-making for promotions, operations, and customer satisfaction  

---

## 📌 Tools & Technologies
- **Power BI** (Data Modeling, DAX, Dashboard Design)  
- **SQL** (Data Insertion, Data cleaning)  

---

## 📬 Author
👩‍💻 **Vannamathi B**  
📧 [vannamathibaskaran@gmail.com](mailto:vannamathibaskaran@gmail.com)  

---
