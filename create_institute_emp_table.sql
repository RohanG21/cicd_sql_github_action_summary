USE sampledb;

CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
     
    -- Academic/Professional Details
    job_title VARCHAR(100), -- e.g., 'Principal Investigator', 'Postdoc', 'Lab Tech'
    academic_degree VARCHAR(20), -- e.g., 'PhD', 'MSc', 'MD'
    department_id INT,
    lab_name VARCHAR(100),
    
    -- Employment Details
    hire_date DATE,
    salary DECIMAL(12, 2),
    employment_status VARCHAR(20) DEFAULT 'Full-Time', -- e.g., 'Contract', 'Tenured'
    
    -- Management
    supervisor_id INT,
    FOREIGN KEY (supervisor_id) REFERENCES employees(employee_id)
);
