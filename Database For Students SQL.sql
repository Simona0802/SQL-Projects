CREATE TABLE database_for_students(
 -- column name, data type, CONSTRAINT

 student_id INT PRIMARY KEY,
 student_name VARCHAR(10),
 student_surname VARCHAR(15),
 date_of_birth VARCHAR(10),
 school_year VARCHAR(7),
 phone_number VARCHAR(10),
 classes_they_are_taking VARCHAR(10)
 );

 INSERT INTO database_for_students(student_id, student_name, student_surname, date_of_birth, school_year, phone_number, classes_they_are_taking)
 VALUES (1, 'Petar', 'Stojanov', '25.11.1996', '3 year', '070900800', 'English'),
        (2, 'Monika', 'Angelova', '16.09.1997', '2 year', '077900100', 'Biology'),
		(3, 'Angel', 'Angelov', '10.10.1999', '1 year', '078908908', 'Chemistry'),
		(4, 'Marija', 'Krstevska', '05.05.2000', '1 year', '078555556', 'Sports'),
		(5, 'Dejvid', 'Nikolovski', '27.05.1997', '2 year', '070200100', 'Music'), 
		(6, 'Martin', 'Angelov', '14.02.1995', '4 year', '078966325', 'Math'),
		(7, 'Stojan', 'Stojanov', '20.05.1995', '4 year', '071200366', 'Biology'),
		(8, 'Mirko', 'Mitrev', '16.11.1996', '3 year', '071526325', 'Draw'),
		(9, 'Tino', 'Markov', '14.08.1994', '5 year', '078569874', 'Science'),
		(10, 'Stefanija', 'Gorgieva', '05.09.1994', '5 year', '070258963', 'Sociology') ;



		SELECT * FROM database_for_students;