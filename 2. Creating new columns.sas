* Creating a library for proc_sql_Data;
libname procsql "/home/path/Proc_sql/data";

/* checking previous purchase table */
proc sql;
select CUSTNUM,
		PRODNUM,
		UNITS,
		UNITCOST,
		UNITS * UNITCOST AS TOTAL FORMAT DOLLAR12.2
FROM PROCSQL.PURCHASES
ORDER BY TOTAL;
QUIT;


/** 	CREATING NEW ALIAS **/
PROC SQL;
SELECT PRODNAME,
		PRODTYPE,
		PRODCOST * 0.80 AS DISCOUNT_PRICE FORMAT=DOLLAR9.2
FROM PROCSQL.PRODUCTS
ORDER BY 3;
QUIT;


/** finding distinct values **/
PROC SQL;
	SELECT DISTINCT MANUNUM
	FROM PROCSQL.INVENTORY;
QUIT;


