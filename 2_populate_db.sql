#INSERT STATEMENTS TO POPULATE DATABASE

#dead artists
INSERT INTO Artist (name,date_born,date_died,description,country_of_origin) VALUES 
("Ryan T. Singleton","1935-06-08","2014-03-31 ","dui. Fusce aliquam,","Haiti"),
("George S. Holloway","1955-10-27","1992-08-24 ","sed","Senegal"),
("Channing M. Nieves","1932-07-02","1998-10-20 ","malesuada","Sri Lanka"),
("Melvin A. Ramirez","1917-05-12","1978-02-12 ","ullamcorper. Duis at lacus.","Lithuania"),
("Thor F. Pickett","1915-04-06","1995-05-17 ","Nulla facilisis.","Tonga"),
("Lael W. Vang","1936-07-22","2007-11-03 ","ullamcorper, nisl arcu","Hong Kong");

#still alive artists
INSERT INTO Artist (name,date_born,description,country_of_origin) VALUES 
("Conan M. Mclaughlin","1944-04-05","a feugiat tellus","Monaco"),
("Warren H. Mcdaniel","1949-08-20","morbi tristique","Portugal"),
("Bruno J. Sparks","1978-12-06","Ut","Guatemala"),
("Heidi R. Potter","1932-03-08","ad litora torquent per","Germany"),
("Eva P. Najera", "1985-06-12", "morbi Ut", "United States");


INSERT INTO Art_object (id_no,year,title,description,artist_name) VALUES 
(1,"1983","Mauris","cursus a, enim. Suspendisse","Channing M. Nieves"),
(2,"1937","magnis","feugiat","Melvin A. Ramirez"),
(3,"2007","nunc","non","Warren H. Mcdaniel"),
(4,"1965","erat,","ornare, elit elit","Ryan T. Singleton"),
(5,"1969","egestas","sem ut","Conan M. Mclaughlin"),
(6,"1985","nulla","vitae,","George S. Holloway"),
(7,"1974","ac","ante","Conan M. Mclaughlin"),
(8,"1967","diam","ut, sem. Nulla","Heidi R. Potter"),
(9,"1999","semper","Cras vulputate","Bruno J. Sparks"),
(10,"1970","nisl.","per conubia","Heidi R. Potter"),
(11,"1977","drat.","ut, Nulla","Conan M. Mclaughlin"),
(12, "2010", "semper","Cras vulputate ut", "Eva P. Najera"),
(13, "2008",  "estegas", "ornare, Cras elit", "Eva P. Najera");

INSERT INTO Others(id_no, type, style) VALUES
(4, "print", "abstract"),
(9, "photo", "modern"),
(6, "photo", "modern"),
(3, "print", "abstract");

INSERT INTO Painting(id_no, type, style, drawn_on) VALUES 
(2, "oil", "abstract", "canvas"),
(8, "watercolor", "abstract", "paper"),
(10, "oil", "figurative", "canvas"),
(12, "oil", "abstract", "paper"),
(13, "watercolor", "figurative", "canvas");

INSERT INTO Sculpture (id_no, material, weight, height) VALUES 
(1, "ceramic", 8.5, 6.8),
(5, "wood", 15.2, 36.4), 
(7, "stone", 25.8, 14.3),
(11, "wood", 40.1, 45.5); 

INSERT INTO Exhibition (name,start_date,end_date) VALUES 
("venenatis a, magna. Lorem ipsum dolor","2018-10-18 ","2018-11-22 "),
("neque. Nullam nisl. Maecenas malesuada fringilla","2018-10-28 ","2018-12-02 "),
("nibh sit amet orci. Ut sagittis","2018-10-21 ","2018-11-22 "),
("E1", "2018-10-31", "2018-11-14");

INSERT INTO Shown_at (art,exhibition_name) VALUES 
 (9,"neque. Nullam nisl. Maecenas malesuada fringilla"),
 (6,"nibh sit amet orci. Ut sagittis"),
 (3,"neque. Nullam nisl. Maecenas malesuada fringilla"),
 (8,"nibh sit amet orci. Ut sagittis"),
 (4,"nibh sit amet orci. Ut sagittis"),
 (5,"venenatis a, magna. Lorem ipsum dolor"),
 (2,"neque. Nullam nisl. Maecenas malesuada fringilla"),
 (10,"venenatis a, magna. Lorem ipsum dolor"),
 (1,"venenatis a, magna. Lorem ipsum dolor"),
 (7,"nibh sit amet orci. Ut sagittis"),
 (11,"venenatis a, magna. Lorem ipsum dolor"), 
 (12, "E1"),
 (13, "E1");