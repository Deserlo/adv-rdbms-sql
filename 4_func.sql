#definition of the function

delimiter $
create function No_of_painting_exhibited(exhibition_name varchar(60))
returns integer
begin
	Declare numPaintings integer;
    select count(art) into numPaintings
    from Shown_at e, Painting_view p
    where e.art = p.id_no and e.exhibition_name = exhibition_name;
    return numPaintings;
end $
delimiter ;