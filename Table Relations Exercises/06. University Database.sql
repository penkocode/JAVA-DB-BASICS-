/*CREATE DATABASE demo6;
USE demo6;
*/

CREATE TABLE subjects (
    subject_id INT(11) PRIMARY KEY NOT NULL,
    subject_name VARCHAR(50)
);

CREATE TABLE majors(
	major_id INT (11) PRIMARY KEY NOT NULL,
    name VARCHAR (50)
);

CREATE TABLE students (
    student_id INT(11) PRIMARY KEY NOT NULL,
    student_number VARCHAR(12) NOT NULL,
    student_name VARCHAR(50) NOT NULL,
    major_id INT(11) NOT NULL,
    CONSTRAINT fk_sudents_majors_id_majors_majors_id FOREIGN KEY (major_id)
        REFERENCES majors (major_id)
);

CREATE TABLE agenda(
	student_id INT (11) NOT NULL,
    subject_id INT(11) NOT NULL,
    CONSTRAINT PRIMARY KEY (student_id,subject_id),
    CONSTRAINT fk_agenda_student_id_students_student_id FOREIGN KEY (student_id)REFERENCES students(student_id),
    CONSTRAINT fk_agenda_subject_id_subjects_subject_id FOREIGN KEY (subject_id) REFERENCES subjects(subject_id)
);

CREATE TABLE payments(
	payment_id INT (11) PRIMARY KEY NOT NULL,
    payment_date DATE NOT NULL,
    payment_amount DECIMAL (8,2)NOT NULL,
    student_id INT (11) NOT NULL,
    CONSTRAINT fk_payments_student_id_students_student_id FOREIGN KEY (student_id) REFERENCES students(student_id)    
);