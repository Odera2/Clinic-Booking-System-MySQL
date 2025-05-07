CREATE DATABASE clinic_db;
USE clinic_db;

CREATE TABLE patients (
    patient_id INT AUTO_INCREMENT PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    gender ENUM('Male', 'Female', 'Other') NOT NULL,
    dob DATE NOT NULL,
    contact_number VARCHAR(20) UNIQUE NOT NULL,
    email VARCHAR(100) UNIQUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE doctors (
    doctor_id INT AUTO_INCREMENT PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    specialty VARCHAR(100),
    contact_number VARCHAR(20) UNIQUE NOT NULL,
    email VARCHAR(100) UNIQUE,
    available_days VARCHAR(100),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE appointments (
    appointment_id INT AUTO_INCREMENT PRIMARY KEY,
    patient_id INT NOT NULL,
    doctor_id INT NOT NULL,
    appointment_date DATE NOT NULL,
    appointment_time TIME NOT NULL,
    reason VARCHAR(255),
    FOREIGN KEY (patient_id) REFERENCES patients(patient_id),
    FOREIGN KEY (doctor_id) REFERENCES doctors(doctor_id)
);

CREATE TABLE treatments (
    treatment_id INT AUTO_INCREMENT PRIMARY KEY,
    appointment_id INT NOT NULL,
    treatment_description TEXT NOT NULL,
    cost DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (appointment_id) REFERENCES appointments(appointment_id)
);

CREATE TABLE bills (
    bill_id INT AUTO_INCREMENT PRIMARY KEY,
    appointment_id INT UNIQUE NOT NULL,
    total_amount DECIMAL(10, 2) NOT NULL,
    payment_status ENUM('Paid', 'Unpaid') DEFAULT 'Unpaid',
    generated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (appointment_id) REFERENCES appointments(appointment_id)
);

-- Insert Patients
INSERT INTO patients (full_name, gender, dob, contact_number, email) VALUES
('Cheryl Morrison', 'Male', '1991-04-24', '0787656118', 'hernandezkara@williams-davis.org'),
('Emily Herrera', 'Other', '1967-12-11', '0726985361', 'shawnsullivan@gmail.com'),
('Mark Wilkins', 'Other', '1982-07-11', '0796691698', 'derek17@gmail.com'),
('Ryan Ellison', 'Female', '1988-03-05', '0764145734', 'hillluis@gmail.com'),
('Margaret Navarro', 'Other', '2006-05-29', '0753942063', 'wolfekeith@mitchell-brown.com'),
('Lisa Nguyen', 'Female', '1970-12-22', '0799897734', 'matthew90@young.info'),
('Kelsey Freeman', 'Male', '1973-10-18', '0771085786', 'xthompson@walker.com'),
('Colleen Fuller', 'Female', '1968-09-28', '0783634267', 'aaron35@yahoo.com'),
('Tiffany Williams', 'Male', '1978-07-21', '0780372359', 'kristinprice@yahoo.com'),
('Dana Colon', 'Male', '1990-07-21', '0715245333', 'patriciahall@gibson.net');

-- Insert Doctors
INSERT INTO doctors (full_name, specialty, contact_number, email, available_days) VALUES
('Kenneth Sherman', 'General Physician', '0751419279', 'josephhancock@hotmail.com', 'Thu,Sat,Mon'),
('Michael Scott', 'Pediatrician', '0730436902', 'wyates@ramirez.info', 'Tue,Wed,Thu'),
('Sarah Bradley', 'Dermatologist', '0738121326', 'pmaxwell@crane-moran.org', 'Wed,Tue,Fri'),
('Carolyn Wong', 'Cardiologist', '0780608445', 'belinda39@yahoo.com', 'Wed,Mon,Tue'),
('Megan Jackson', 'ENT Specialist', '0765319009', 'barnescasey@hotmail.com', 'Fri,Thu,Wed');

-- Insert Appointments
INSERT INTO appointments (patient_id, doctor_id, appointment_date, appointment_time, reason) VALUES
(1, 4, '2025-05-12', '17:01:10', 'Type leave discover dinner beat imagine.'),
(6, 2, '2025-05-16', '10:22:01', 'Record according leader rock money year write.'),
(4, 5, '2025-05-13', '20:01:30', 'Mr six computer represent think.'),
(3, 2, '2025-05-13', '19:49:24', 'Exist reveal defense visit such capital finally.'),
(9, 5, '2025-05-17', '14:33:48', 'Floor practice election clear indicate someone.'),
(7, 3, '2025-05-10', '20:50:29', 'After maybe wide visit pretty play.'),
(9, 4, '2025-05-12', '08:06:31', 'Full carry result section meeting city.'),
(2, 3, '2025-05-15', '06:26:20', 'Many owner machine old.'),
(9, 5, '2025-05-08', '14:49:19', 'Child discover have near.'),
(10, 2, '2025-05-11', '17:06:24', 'Arm size form policy bank matter cold.'),
(5, 4, '2025-05-14', '03:36:07', 'Level body how although important product next.'),
(8, 3, '2025-05-09', '07:21:07', 'Trial provide speech official fall always actually sing.'),
(8, 2, '2025-05-12', '03:02:06', 'Capital hot late miss field.'),
(1, 2, '2025-05-17', '01:21:05', 'Type born low soldier buy create new.'),
(8, 1, '2025-05-08', '08:35:17', 'Call matter today.');