-- Faculty table
CREATE TABLE Faculty (
    Faculty_ID INT PRIMARY KEY,
    Name VARCHAR(255) NOT NULL,
    Department VARCHAR(255) NOT NULL,
    Title VARCHAR(255) NOT NULL,
    Email VARCHAR(255) NOT NULL
);

-- Employee table
CREATE TABLE Employee (
    Employee_ID INT PRIMARY KEY,
    Name VARCHAR(255) NOT NULL,
    Position VARCHAR(255) NOT NULL,
    Salary DECIMAL NOT NULL,
    Hire_Date DATE NOT NULL,
    Faculty_ID INT,
    FOREIGN KEY (Faculty_ID) REFERENCES Faculty(Faculty_ID)
);

-- Grant_Application table
CREATE TABLE Grant_Application (
    Application_ID INT PRIMARY KEY,
    Submission_Date DATE NOT NULL,
    Status VARCHAR(255) NOT NULL,
    Faculty_ID INT NOT NULL,
    Requested_Amount DECIMAL NOT NULL,
    Project_Title VARCHAR(255) NOT NULL,
    FOREIGN KEY (Faculty_ID) REFERENCES Faculty(Faculty_ID)
);

-- Review_Committee table
CREATE TABLE Review_Committee (
    Committee_ID INT PRIMARY KEY,
    Name VARCHAR(255) NOT NULL,
    Description TEXT NOT null, --g.applicationi faculty
    Application_ID INT,
    Faculty_ID INT,
    FOREIGN KEY (Application_ID) REFERENCES Grant_Application(Application_ID),
    FOREIGN KEY (Faculty_ID) REFERENCES Faculty(Faculty_ID)
);

-- Review table
CREATE TABLE Review (
    Review_ID INT PRIMARY KEY,
    Date DATE NOT NULL,
    Comments TEXT,
    Recommendation VARCHAR(255),
    Application_ID INT NOT NULL,
    Committee_ID INT NOT NULL,
    FOREIGN KEY (Application_ID) REFERENCES Grant_Application(Application_ID)
);

-- Travel table
CREATE TABLE Travel (
    Travel_ID INT PRIMARY KEY,
    Purpose VARCHAR(255) NOT NULL,
    Start_Date DATE NOT NULL,
    End_Date DATE NOT NULL,
    Description TEXT NOT NULL
);

-- Project table
CREATE TABLE Project (
    Project_ID INT PRIMARY KEY,
    Project_Name VARCHAR(255) NOT NULL,
    Project_Description TEXT NOT NULL,
    Start_Date DATE NOT NULL,
    End_Date DATE NOT NULL,
    Budget_Allocated DECIMAL NOT NULL,
    Status VARCHAR(255) NOT NULL,
    Grant_Application_ID INT,
    Travel_ID INT,
    FOREIGN KEY (Grant_Application_ID) REFERENCES Grant_Application(Application_ID),
    FOREIGN KEY (Travel_ID) REFERENCES Travel(Travel_ID)
);

-- Budget table
CREATE TABLE Budget (
    Budget_ID INT PRIMARY KEY,
    Travel_ID INT,
    Allocated_Amount DECIMAL NOT NULL,
    Spent_Amount DECIMAL NOT NULL,
    Grant_Application_ID INT,
    FOREIGN KEY (Grant_Application_ID) REFERENCES Grant_Application(Application_ID)
);

-- Employee_Funds_Travel table
CREATE TABLE Employee_Funds_Travel (
    Employee_ID INT,
    Travel_ID INT,
    PRIMARY KEY (Employee_ID, Travel_ID),
    FOREIGN KEY (Employee_ID) REFERENCES Employee(Employee_ID),
    FOREIGN KEY (Travel_ID) REFERENCES Travel(Travel_ID)
);