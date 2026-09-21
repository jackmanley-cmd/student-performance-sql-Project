-- Create the Classes table
CREATE TABLE Classes (
    class_id INT PRIMARY KEY,
    class_name VARCHAR(20) NOT NULL
);

-- Create the Students table
CREATE TABLE Students (
    student_id INT PRIMARY KEY,
    name VARCHAR(100),
    class_id INT,
    mark INT,
    gender VARCHAR(20),
    FOREIGN KEY (class_id) REFERENCES Classes(class_id)
);
