# 💊 PharmaCare - Pharmacy Management System

A professional, modern, and high-performance Management Information System (MIS) for pharmacies, built with **JSP** and **Java Servlets**, featuring a premium design and an intuitive user experience.

![Project Preview](https://via.placeholder.com/800x400?text=PharmaCare+Dashboard+System)

## 🚀 Features

PharmaCare is designed to streamline every aspect of pharmacy operations:

- **🔐 Secure Authentication**: Clean and modern Login/Registration system with session-based access control.
- **📊 Advanced Dashboard**: A high-impact summary of pharmacy status with interactive analytics and growth tracking.
- **💊 Inventory Management**: Complete tracking of medicines, including categories, manufacturers, and pricing.
- **📦 Stock Alerts**: Real-time inventory monitoring with visual stock level indicators and low-stock/expiry alerts.
- **💳 Point of Sale (POS)**: A dual-pane billing interface for rapid transaction processing and receipt generation.
- **📈 Sales Reports**: Detailed revenue trends, growth analytics, and top-selling product insights.
- **👥 Staff Management**: Personnel tracking with role-based assignment (Admin, Pharmacist, Cashier).
- **⚙️ System Settings**: Customizable profiles and organizational metadata management.

## 🛠 Tech Stack

- **Backend**: Java (JSP & Servlets)
- **Frontend**: HTML5, Vanilla CSS3 (Custom Design System)
- **Typography**: [Outfit](https://fonts.google.com/specimen/Outfit) via Google Fonts
- **Iconography**: [Lucide Icons](https://lucide.dev/)
- **Database**: MySQL
- **Web Server**: Apache Tomcat 9.0+

## 📥 Installation

### 1. Database Setup
1. Ensure MySQL is installed and running.
2. Create a database named `pharmacy`.
3. Create a `users` table:
```sql
CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100) UNIQUE,
    password VARCHAR(100)
);
```
*(Additional tables for medicines and stock will be automatically handled or can be added manually.)*

### 2. Configure Database Connection
Modify the `db.jsp` file with your MySQL credentials:
```jsp
<%
String url = "jdbc:mysql://localhost:3306/pharmacy";
String user = "root";
String pass = "YOUR_PASSWORD";
...
%>
```

### 3. Deploy to Tomcat
1. Clone this repository into your Tomcat `webapps` directory.
2. Start the Apache Tomcat server.
3. Access the application via: `http://localhost:8080/PharmacyApp`

## 🎨 UI Highlight: Modern Minimalist Design
PharmaCare focuses on "Medical Cleanliness" — using a palette of Emerald Greens and Slate Blues to provide a professional and calming environment for pharmacists. Interactive elements feature soft shadows, glassmorphism, and smooth transitions.

## 📄 License
This project is licensed under the MIT License - see the LICENSE file for details.

---
Developed by [acecoder-0](https://github.com/acecoder-0)
