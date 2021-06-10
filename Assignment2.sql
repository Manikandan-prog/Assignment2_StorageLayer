//1 Querie
Select * from EMP Where JOB='MANAGER';

//2 Querie
Select * from EMP Where JOB IN ('MANAGER','ANALYST','CLERK');

//3 Querie
Select * from EMP Where SAL Between 3000 and 5000;
              OR
Select * from EMP Where SAL>=3000 and SAL<=5000;

//4 Querie
Select * from EMP Where JOB IN ('MANAGER','ANALYST','CLERK') AND SAL Between 3000 and 5000;

//5 Querie
Select * from EMP Where COMM>0;

//6 Querie
Select * from EMP Where COMM='NOT NULL';

//7 Querie
Select * from EMP Where ENAME like 'S%';

//8 Querie
Select * from EMP Where ENAME like '%R';

//9 Querie
Select * from EMP Where ENAME like '%A%';

//10 Querie
Select * from EMP Where ENAME like '_A%';

//11 Querie
Select * from EMP Where ENAME like 'M%' OR ENAME like 'S%' ;

//12 Querie
SELECT * FROM EMP WHERE ENAME BETWEEN "A" AND "M";

//13 Querie
Select * from EMP where ENAME  like '%\_%';

//14 Querie
SELECT * FROM EMP WHERE JOB="MANAGER" AND DEPTNO IN(10,20) OR JOB="CLERK" AND DEPTNO=30;

//15 Querie
SELECT ENAME ,SAL ,SAL*0.1 AS BONUS FROM EMP;

//16 Querie
Select * from EMP ORDER BY ENAME ASC;

//17 Querie
Select * from EMP ORDER BY SAL DESC;

//18 Querie
Select ENAME,DEPTNO,SAL from EMP GROUP BY DEPTNO ORDER BY SAL DESC;

//19 Querie //TOP 3 HIGHEST PAID EMP.
select DISTINCT SAL from EMP order by SAL desc limit 3;

//20 Querie
SELECT EMPNO,ENAME,JOB,SAL,DEPTNO,RANK() OVER(PARTITION BY DEPTNO ORDER BY SAL)AS 'RANK' FROM EMP;

//21 Querie
SELECT EMPNO,ENAME,JOB,SAL,DEPTNO,DENSE_RANK() OVER(PARTITION BY DEPTNO ORDER BY SAL)AS 'DENSE-RANK' FROM EMP;

//22 Querie
select distinct JOB from EMP;

//23 Querie
select sum(SAL) AS TOTAL ORGANIZATION SALARY from EMP;

//24 Querie
select DEPTNO,SUM(SAL) from EMP GROUP BY DEPTNO;
 
 //25 Querie
select count(ENAME),JOB from EMP GROUP BY JOB;
 
 //26 Querie
SELECT * FROM EMP WHERE HIREDATE LIKE "____-02%"; 
 
 //27 Querie
SELECT COUNT(*) FROM EMP WHERE HIREDATE BETWEEN '1981-01-01' AND '1983-12-31';
 
 //28 Querie
Select EMPNO,ENAME,HIREDATE,CURDATE() AS TDATE,TIMESTAMPDIFF(YEAR,HIREDATE,CURDATE()) AS 'EXP-IN-YEARS' FROM EMP order by 'EXP-IN-YEARS DESC'
 

