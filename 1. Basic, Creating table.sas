* Creating a library for proc_sql_Data;
libname procsql "/home/path/Proc_sql/data";

/*first Query*/
Proc Sql;
	select PRODNAME, 
		PRODTYPE, 
		PRODCOST 
	INTO :M_PRODNAME, 
		:M_PRODTYPE, 
		:M_PRODCOST 
	FROM PROCSQL.PRODUCTS;
QUIT;

/* MODIFYING THE QUERRY */
PROC SQL;
	SELECT PRODNAME, 
			PRODTYPE, 
			PRODCOST 
	INTO :M_PRODNAME, 
		:M_PRODTYPE, 
		:M_PRODCOST 
	FROM PROCSQL.PRODUCTS 
	WHERE PRODNAME CONTAINS "Software" 
	GROUP BY PRODTYPE 
	ORDER BY PRODNAME;
QUIT;

/* creating new tables */
proc sql;
	create table procsql.Purchase2
(
CUSTNUM NUM LENGTH=4 LABEL='Customer Number', 
PRODNUM NUM LENGTH=3 LABEL='Product Purchased', 
UNITS NUM LENGTH=3 LABEL='# Units Purchased', 
UNITCOST NUM LENGTH=4 LABEL='Unit Cost'
);
Quit;