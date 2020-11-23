use db_proyect_pw1


CALL sp_insertausuarios("Ricardo", "aguilar gallegos", "rico@rico.com", "rico123","ricoG3000",12345678);
select * from usuario

CALL sp_LogInUser("rico@rico.com","rico123");


