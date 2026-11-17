CREATE DATABASE IF NOT EXISTS arinfotek_db;
USE arinfotek_db;

CREATE TABLE IF NOT EXISTS registrations (
    id INT AUTO_INCREMENT PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    email VARCHAR(150) NOT NULL UNIQUE,
    phone VARCHAR(20) NOT NULL,
    password VARCHAR(255) NOT NULL,
    college VARCHAR(150) NOT NULL,
    register_no VARCHAR(50) NOT NULL,
    city VARCHAR(100) NOT NULL,
    address TEXT NOT NULL,
    degree VARCHAR(50) NOT NULL,
    department VARCHAR(100) NOT NULL,
    degree_status VARCHAR(50) NOT NULL,
    year_of_study VARCHAR(20),
    semester VARCHAR(20),
    completion_year VARCHAR(20),
    course VARCHAR(150) NOT NULL,
    gender VARCHAR(20) NOT NULL,
    skills TEXT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS profiles (
    user_id INT PRIMARY KEY,
    photo LONGTEXT,
    current_activity VARCHAR(100),
    location VARCHAR(100),
    current_course VARCHAR(100),
    FOREIGN KEY (user_id) REFERENCES registrations(id) ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS logins (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    status VARCHAR(20),
    login_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES registrations(id) ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS files (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    file_name VARCHAR(255),
    file_size INT,
    file_data LONGTEXT,
    uploaded_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES registrations(id) ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS attendance_history (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    date VARCHAR(20),
    subject VARCHAR(150),
    status VARCHAR(20),
    FOREIGN KEY (user_id) REFERENCES registrations(id) ON DELETE CASCADE
);
