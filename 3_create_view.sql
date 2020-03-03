#CREATE VIEW STATMENT NAMED artist_no_of_sculpture

Create view artist_no_of_sculpture as
Select s.artist_name, count(*) as no_of_sculpture
FROM Sculpture_view s, Artist a, Art_object art
WHERE s.artist_name = a.name and art.id_no = s.id_no
GROUP BY s.artist_name
having count(*)>2;