-- Inserting data into Faculty
INSERT INTO Faculty VALUES
(1, 'Lebron Adams', 'Computer Science', 'Professor', 'lebronadams@gmail.com'),
(2, 'Kevin Durant', 'Mathematics', 'Associate Professor', 'kevindurant@gmail.com'),
(3, 'Joel Embid', 'Physics', 'Assistant Professor', 'joelembid@gmail.com');

-- Inserting data into Employee
INSERT INTO Employee VALUES
(1, 'Serena Williams', 'Lab Technician', 40000, '2020-01-10', 1),
(2, 'Jason Curry', 'Research Assistant', 35000, '2021-05-15', 2),
(3, 'Draymond Green', 'Administrator', 45000, '2019-11-01', 3);

-- Inserting data into Grant_Application
INSERT INTO Grant_Application VALUES
(1, '2022-07-15', 'Pending', 1, 50000, 'AI Research'),
(2, '2023-03-10', 'Approved', 2, 75000, 'Quantum Computing'),
(3, '2023-01-20', 'Denied', 3, 30000, 'Particle Physics');

-- Inserting data into Review_Committee
INSERT INTO Review_Committee VALUES
(1, 'Grant Review Team A', 'Reviews applications for scientific grants'),
(2, 'Grant Review Team B', 'Focuses on humanities grant applications'),
(3, 'Grant Review Team C', 'Evaluates grant applications for community projects');

-- Inserting data into Review
INSERT INTO Review VALUES
(1, '2022-08-01', 'Very promising project', 'Approved', 1, 1),
(2, '2023-04-12', 'Requires more detailed budget planning', 'More Information Required', 2, 2),
(3, '2023-05-05', 'Outside of current funding scope', 'Denied', 3, 3);

-- Inserting data into Project
INSERT INTO Project VALUES
(1, 'AI for Healthcare', 'Using AI to improve patient diagnosis', '2022-09-01', '2023-09-01', 100000, 'In Progress', 1, NULL),
(2, 'Quantum Algorithms', 'Developing new algorithms for quantum computing', '2023-04-01', '2024-04-01', 150000, 'Not Started', 2, NULL),
(3, 'Dark Matter Research', 'Exploratory research into dark matter properties', '2023-06-01', '2024-06-01', 50000, 'In Progress', NULL, NULL);

-- Inserting data into Travel
INSERT INTO Travel VALUES
(1, 'Conference', '2023-08-15', '2023-08-20', 'Travel to international conference on AI'),
(2, 'Fieldwork', '2023-09-05', '2023-09-25', 'Fieldwork for quantum computing research'),
(3, 'Research Collaboration', '2023-10-01', '2023-10-15', 'Visiting partner institution for research collaboration');

-- Inserting data into Budget
INSERT INTO Budget VALUES
(1, 1, 2000, 1500, NULL),
(2, 2, 3000, 0, NULL),
(3, NULL, 5000, 2500, 1);

-- Inserting data into Employee_Funds_Travel
INSERT INTO Employee_Funds_Travel VALUES
(1, 1),
(2, 2),
(3, 3);