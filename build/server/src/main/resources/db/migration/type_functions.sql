create or replace function type_of_user(_id bigint, out result integer) as $$
	begin
	   select case 
	   		when a9._id is not null then 9
	   		else 21 end
	   from _user a21
	   left join _anonymous_user a9 on a9._id = a21._id
	   where a21._id = $1
	   into result;
	end
$$ language plpgsql;

