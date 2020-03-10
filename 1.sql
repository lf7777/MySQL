\d //
create trigger num after insert on users for each row
begin
update count_num set num = num +1 where table_name = 'users';
end;
//
\d ;
