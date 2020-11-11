* Creating a library for proc_sql_Data;
libname procsql "/home/PATH/Proc_sql/data";

*** 	CONDITIONS IN GROUPS		***;
PROC SQL;
	SELECT PRODNAME,
			PRODTYPE,
			PRODCOST
	FROM PROCSQL.PRODUCTS
	GROUP BY PRODTYPE
	HAVING COUNT(PRODTYPE) > 3
	ORDER BY PRODNAME;
QUIT;


PROC SQL;
	SELECT *
	FROM PROCSQL.PRODUCTS
	WHERE UPCASE(PRODTYPE) IN ('LAPTOP', 'WORKSTATION');
QUIT;


***		RANGE OF NUMBERS		***;
PROC SQL;
	SELECT *
	FROM PROCSQL.PRODUCTS 
	WHERE 200 <= PRODCOST <= 400;
QUIT;

PROC SQL;
	SELECT * 
	FROM PROCSQL.PRODUCTS
	WHERE PRODCOST BETWEEN 200 AND 400
	ORDER BY PRODCOST, PRODNAME;
QUIT;



***			CONTAINS		***;
PROC SQL;
	SELECT *
	FROM PROCSQL.CUSTOMERS
	WHERE UPCASE(CUSTNAME) CONTAINS 'TECH'
	ORDER BY CUSTNAME;
QUIT;


PROC SQL;
	SELECT *
	FROM PROCSQL.CUSTOMERS
	WHERE UPCASE(CUSTNAME) NOT CONTAINS 'TECH'
	ORDER BY CUSTNAME;
QUIT;



