# Complaint Management System (CMS) - JSP Project

This is a full-stack web application developed as a prototype for a Municipal IT Division's internal Complaint Management System (CMS). The project is built using Jakarta EE (Servlets, JSP) and follows a strict Model-View-Controller (MVC) architecture.



---

## 🧾 Project Overview

The primary goal of this system is to provide a platform for internal employees to submit, track, and manage complaints. It features a role-based access system distinguishing between standard Employees and Admins, each with a distinct set of permissions and functionalities. All backend interactions are performed synchronously through standard HTML form submissions (GET/POST), without the use of AJAX or other asynchronous mechanisms.

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

---

## 👨‍💻 Developed By

[![Dilshan Hesara](https://img.shields.io/badge/GitHub-Dilshan--Hesara-blue?logo=github&style=flat-square)](https://github.com/Dilshan-Hesara)

Crafted with ❤️ using **Jakarta EE**, **JSP**, **DBCP**, **MySQL**, **ApacheTomcat**, and **MVC Architecture**.


## 📸 Application Screenshots

- **Login Page**  
- **Sign-up Page**  
- **Employee Dashboard**  
- **Admin Dashboard**  
- **Complaint Submission Form**

---
## 🎥 Video Demonstration

Watch the full video demonstration of the **Complaint Management System (CMS)** developed using **Jakarta EE**:

📺 [Click Here to Watch ](https://youtu.be/8iN61XVstGs)

<a href="https://youtu.be/8iN61XVstGs" target="_blank">
  <img src="https://github.com/Dilshan-hesara/Complaint-Management-System/blob/master/src/main/webapp/assets/img/08.png" width="400" height="250" alt="Watch on YouTube">
</a>

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
🔗 [GitHub - Dilshan-Hesara](https://github.com/Dilshan-hesara)
### 📁  Repository

```bash
git clone https://github.com/Dilshan-hesara/Complaint-Management-System.git

```

```bash

CMS-A01/
├── .gitignore
├── pom.xml
└── src/
    └── main/
        ├── java/
        │   └── lk/dilshanhesara/dilshan/
        │       ├── controller/       # Servlet Controllers
        │       ├── dao/              # Data Access Objects
        │       ├── model/            # JavaBeans
        │       └── db/               # Data Soures & SQLSchema
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

