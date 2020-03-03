
CREATE TABLE Artist(name VARCHAR(30) NOT NULL, 
					date_born date, 
					date_died date, 
					description VARCHAR(30),
					country_of_origin VARCHAR(20),
                    primary key(name));
                    
                    
CREATE TABLE Art_object(id_no INTEGER NOT NULL,
				year year,
				title VARCHAR(30),
				description VARCHAR(30),
				artist_name VARCHAR(30),
				primary key(id_no),
				foreign key(artist_name) references Artist(name));
                
CREATE TABLE Others(id_no INTEGER NOT NULL,
 type VARCHAR(30),
 style VARCHAR(30),
 primary key (id_no),
 foreign key(id_no) references Art_object(id_no));
 
 
CREATE TABLE Painting(id_no INTEGER NOT NULL,
		type VARCHAR(30),
        style VARCHAR(30),
        drawn_on VARCHAR(30),
        primary key(id_no),
        foreign key(id_no) references Art_object(id_no));

CREATE TABLE Sculpture(id_no INTEGER NOT NULL,
		material VARCHAR(30),
        weight double,
        height double,
        primary key(id_no),
        foreign key(id_no) references Art_object(id_no));
#CREATE TABLE STATEMENTS AND CREATE VIEW STATEMENTS

CREATE TABLE Exhibition(name VARCHAR(60) NOT NULL,
	start_date date,
    end_date date,
    primary key(name));

CREATE TABLE Shown_at(art INTEGER NOT NULL,
		exhibition_name VARCHAR(60),
        primary key(art, exhibition_name),
        foreign key(exhibition_name) references Exhibition(name));
        
        
        
Create view Others_view as
Select a.id_no, a.year, a.title, a.description, o.type, o.style, a.artist_name
From Art_object a, Others o
Where a.id_no = o.id_no;

Create view Painting_view as
Select a.id_no, a.year, a.title, a.description, p.type, p.style, p.drawn_on, a.artist_name
From Art_object a, Painting p
Where a.id_no=p.id_no;

Create view Sculpture_view as
Select a.id_no, a.year, a.title, a.description, s.material, s.weight, s.height, a.artist_name
From Art_object a, Sculpture s
Where a.id_no = s.id_no;
