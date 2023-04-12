create table mule_books(
 isbn number,
			title varchar(50),
			subtitle varchar(50),
			author varchar(50),
			published varchar(50),
			publisher varchar(50),
			pages varchar(50),
			description varchar(50),
			website varchar(50)


);

select * from mule_books;

drop table mule_books;

commit;

-- sp to delete data

CREATE OR REPLACE PROCEDURE Delete_mule_books(isbnnum VARCHAR) AS
  
    BEGIN
       DELETE FROM mule_books
       WHERE isbn = isbnnum;
    END Delete_mule_books;
   /

BEGIN
   Delete_mule_books('1');
END;