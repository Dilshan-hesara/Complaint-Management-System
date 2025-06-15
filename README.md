# Complaint Management System (CMS) - JSP Project

The primary goal of this system is to provide a platform for internal employees to submit, track, and manage complaints. It features a role-based access system distinguishing between standard Employees and Admins, each with a distinct set of permissions and functionalities. All backend interactions are performed synchronously through standard HTML form submissions (GET/POST), without the use of AJAX or other asynchronous mechanisms.

---

## 🧾 Project Overview

The primary goal of this system is to provide a platform for internal employees to submit, track, and manage complaints.

### 🔐 Role-Based Access Control

#### Employee Role:
- Submit new complaints.
- View a personal list of submitted complaints.
- Edit or delete own complaints if not resolved.
- Sign up for a new employee account.

#### Admin Role:
- View all complaints in the system.
- Update the status of any complaint and add official remarks.
- Delete any complaint.

### 🔧 Key Features

- **User Authentication:** Secure login and session management.
- **MVC Architecture:** Separation of concerns (Servlets, DAO, Beans, JSP).
- **Database Connection Pooling:** Using Apache Commons DBCP2.



## 📸 Application Screenshots

> _Below are some sample screenshots from the system interface._

- **Login Page**  
- **Sign-up Page**  
- **Employee Dashboard**  
- **Admin Dashboard**  
- **Complaint Submission Form**

## Screenshots

Here are a few screenshots of the application's user interface, showcasing the modern design and key functionalities.
### 🔐 Login & Sign-up Pages

| Login Page | Sign-up Page |
| :---: | :---: |
| <img src="https://github.com/Dilshan-hesara/Complaint-Management-System/blob/master/src/main/webapp/assets/img/01.png" width="300px" height="300px" /> | <img src="https://github.com/Dilshan-hesara/Complaint-Management-System/blob/master/src/main/webapp/assets/img/02.png" width="300px" height="300px" /> |

---

### 📊 Dashboards

| Admin Dashboard | Employee Dashboard |
| :---: | :---: |
| <img src="https://github.com/Dilshan-hesara/Complaint-Management-System/blob/master/src/main/webapp/assets/img/03.png" width="950px" height="250px" /> | <img src="https://github.com/Dilshan-hesara/Complaint-Management-System/blob/master/src/main/webapp/assets/img/04.png" width="950px" height="250px"/> |

---

### 📝 Complaint Form

| Edit Complaint (Admin) | New Complaint (Employee) | Edit Complaint (Employee) |
| :----------------------: | :---------------------: | :------------------------: |
| <img src="https://github.com/Dilshan-hesara/Complaint-Management-System/blob/master/src/main/webapp/assets/img/07.png" width="400px" height="200px" /> |<img src="https://github.com/Dilshan-hesara/Complaint-Management-System/blob/master/src/main/webapp/assets/img/05.png" width="400px" height="200px" /> |  <img src="https://github.com/Dilshan-hesara/Complaint-Management-System/blob/master/src/main/webapp/assets/img/06.png" width="400px" height="200px" /> |

---


## 🛠️ Setup and Configuration Guide

### ✅ Prerequisites

- JDK 17 or higher  
- Apache Maven 3.8+  
- Apache Tomcat 11+  
- MySQL Server 8+

---
✍️ Author
Dilshan Hesara
🔗 GitHub - Dilshan-Hesara
### 📁  Repository

```bash
git clone https://github.com/Dilshan-hesara

```

```bash

CMS-A01/
├── .gitignore
├── pom.xml
├── database/
│   └── schema.sql
└── src/
    └── main/
        ├── java/
        │   └── lk/dilshanhesara/dilshan/
        │       ├── controller/       # Servlet Controllers
        │       ├── dao/              # Data Access Objects
        │       ├── model/            # JavaBeans
        │       └── db/               # Data Soures
        └── webapp/
            ├── assets/               # Styles
            ├── WEB-INF/
            │   └── web.xml
            ├── adminComplainFrom.jsp
            ├── adminDashboard.jsp
            ├── empComplainFrom.jsp
            ├── employeeDashboard.jsp
            ├── login.jsp
            └── signup.jsp
```   

---

## ⚙️ Technology Stack

| Layer       | Technology                             |
|-------------|----------------------------------------|
| Frontend    | JSP, JSTL, HTML5, CSS3, Bootstrap 5    |
| Backend     | Jakarta EE (Servlets API 6.0+)         |
| Database    | MySQL 8                                |
| Server      | Apache Tomcat 11                       |
| Build Tool  | Apache Maven                           |

---

