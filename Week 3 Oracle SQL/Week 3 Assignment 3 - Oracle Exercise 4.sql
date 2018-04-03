-- Creating Tables
-- Inputting Data

CREATE TABLE STUDENTS(
  FIRST_NAME varchar(30),
  LAST_NAME varchar(30),
  EMAIL varchar(60),
  ADDRESS varchar(60),
  STATE varchar(60),
  PIN Number(6,0),
  PHONE_NO Number(10,0),
  S_ID varchar(60) PRIMARY KEY,
  DATE_OF_BIRTH Date,
  QUALIFICATION varchar(60),
  PERCENT_10 Number(6,0),
  PERCENT_12 Number(6,0),
  DATE_OF_PASSING_12 Date,
  SUBJECTS varchar(60)
);

INSERT ALL
INTO STUDENTS(FIRST_NAME, LAST_NAME, EMAIL, ADDRESS, STATE, 
      PIN, PHONE_NO, S_ID, DATE_OF_BIRTH, QUALIFICATION, PERCENT_10, 
      PERCENT_12, DATE_OF_PASSING_12, SUBJECTS)
VALUES ('Ranjit', 'Chatterjee', 'r_chatt@aaa.com', '2/10 ashok vihar', 'west bengal',
  700101, 9876578901, 'S1001', TO_DATE('22-Apr-80 00:00:00', 'dd-month-yy hh24:mi:ss'), 
  'BE', 70, 69, TO_DATE('30-Mar-02 00:00:00', 'dd-month-yy hh24:mi:ss'), 'Mechanical Engg.')

INTO STUDENTS(FIRST_NAME, LAST_NAME, EMAIL, ADDRESS, STATE, 
      PIN, PHONE_NO, S_ID, DATE_OF_BIRTH, QUALIFICATION, PERCENT_10, 
      PERCENT_12, DATE_OF_PASSING_12, SUBJECTS)
VALUES ('Kaushik', 'Bhatterjee', 'kaushik@bb.com', 'block A gagan vihar', 'west bengal',
  700096, 9812345643, 'S1002', TO_DATE('10-Aug-80 00:00:00', 'dd-month-yy hh24:mi:ss'), 
  'BE', 65, 72, TO_DATE('30-Apr-02 00:00:00', 'dd-month-yy hh24:mi:ss'), 'Civil Engg')

INTO STUDENTS(FIRST_NAME, LAST_NAME, EMAIL, ADDRESS, STATE, 
      PIN, PHONE_NO, S_ID, DATE_OF_BIRTH, QUALIFICATION, PERCENT_10, 
      PERCENT_12, DATE_OF_PASSING_12, SUBJECTS)
VALUES ('Kunal', 'Ghosh', 'Kunal@gmail.com', '1A Shivam Apt', 'west bengal',
  700096, 9678430987, 'S1003', TO_DATE('12-Dec-79 00:00:00', 'dd-month-yy hh24:mi:ss'), 
  'BE', 77, 74, TO_DATE('12-Dec-79 00:00:00', 'dd-month-yy hh24:mi:ss'), 'Mechanical Engg.')

INTO STUDENTS(FIRST_NAME, LAST_NAME, EMAIL, ADDRESS, STATE, 
      PIN, PHONE_NO, S_ID, DATE_OF_BIRTH, QUALIFICATION, PERCENT_10, 
      PERCENT_12, DATE_OF_PASSING_12, SUBJECTS)
VALUES ('Pradeep', 'R', 'Pradeep@gmail.com', '2B Trinity towers', 'west bengal',
  700107, 9234540987, 'S1004', TO_DATE('22-Sep-81 00:00:00', 'dd-month-yy hh24:mi:ss'), 
  'BE', 78, 70, TO_DATE('22-Sep-81 00:00:00', 'dd-month-yy hh24:mi:ss'), 'Electrical Engg.')

INTO STUDENTS(FIRST_NAME, LAST_NAME, EMAIL, ADDRESS, STATE, 
      PIN, PHONE_NO, S_ID, DATE_OF_BIRTH, QUALIFICATION, PERCENT_10, 
      PERCENT_12, DATE_OF_PASSING_12, SUBJECTS)
VALUES ('Rakhi', 'Mukherjee', 'Rakhi@gmail.com', '8/12c ashoka', 'west bengal',
  700109, 9980768543, 'S1005', TO_DATE('3-May-81 00:00:00', 'dd-month-yy hh24:mi:ss'), 
  'BE', 80, 82, TO_DATE('03-May-81 00:00:00', 'dd-month-yy hh24:mi:ss'), 'Electrical Engg')

INTO STUDENTS(FIRST_NAME, LAST_NAME, EMAIL, ADDRESS, STATE, 
      PIN, PHONE_NO, S_ID, DATE_OF_BIRTH, QUALIFICATION, PERCENT_10, 
      PERCENT_12, DATE_OF_PASSING_12, SUBJECTS)
VALUES ('Sekhar', 'Rao', 's_rao@gmail.com', '22/10 A Vishal Apt', 'west bengal',
  700109, NULL, 'S1006', TO_DATE('3-May-81 00:00:00', 'dd-month-yy hh24:mi:ss'), 
  'BE', 75, 80, TO_DATE('13-Jun-03 00:00:00', 'dd-month-yy hh24:mi:ss'), 'Electrical Engg')

SELECT * FROM DUAL;




CREATE TABLE COURSES (
  C_NAME varchar(60),
  C_CODE Number(6,0) PRIMARY KEY,
  C_SUBJECTS varchar(60),
  C_DURATION Number(6,0),
  C_FEE Number(6,0),
  C_DESCRIPTION varchar(100)
);

INSERT ALL
INTO COURSES(C_NAME, C_CODE, C_SUBJECTS, C_DURATION, C_FEE, C_DESCRIPTION)
VALUES ('C &' || ' Data Structure', 100, 'c, ds', 40, 4000, 'Deatiled c and datastructure concepts')

INTO COURSES(C_NAME, C_CODE, C_SUBJECTS, C_DURATION, C_FEE, C_DESCRIPTION)
VALUES ('HTML &' || ' JS', 101, 'html, js', 20, 3500, 'Detailed HTML and JAVA SCRIPT')

INTO COURSES(C_NAME, C_CODE, C_SUBJECTS, C_DURATION, C_FEE, C_DESCRIPTION)
VALUES ('Java', 102, 'java', 90, 6000, 'Core Java')

INTO COURSES(C_NAME, C_CODE, C_SUBJECTS, C_DURATION, C_FEE, C_DESCRIPTION)
VALUES ('Database', 103, 'rdbms, oracle', 40, 6000, 'Database Concepts')

INTO COURSES(C_NAME, C_CODE, C_SUBJECTS, C_DURATION, C_FEE, C_DESCRIPTION)
VALUES ('Cobol', 104, 'PL,Cobol', 40, 6000, 'Programming Logic and Cobol')
SELECT * FROM DUAL;




CREATE TABLE STUDENT_COURSE (
  S_ID varchar(60) REFERENCES STUDENTS(S_ID),
  C_CODE Number(6,0) REFERENCES COURSES(C_CODE) ,
  REG_NO varchar(60) PRIMARY KEY,
  COURSE_STATUS varchar(60)
);

INSERT ALL
INTO STUDENT_COURSE(S_ID, C_CODE, REG_NO, COURSE_STATUS)
VALUES ('S1001', 100, 'R1001', 'COMPL')

INTO STUDENT_COURSE(S_ID, C_CODE, REG_NO, COURSE_STATUS)
VALUES ('S1001', 101, 'R1002', 'VALID')

INTO STUDENT_COURSE(S_ID, C_CODE, REG_NO, COURSE_STATUS)
VALUES ('S1002', 102, 'R1003', 'VALID')

INTO STUDENT_COURSE(S_ID, C_CODE, REG_NO, COURSE_STATUS)
VALUES ('S1003', 103, 'R1004', 'BREAK')

INTO STUDENT_COURSE(S_ID, C_CODE, REG_NO, COURSE_STATUS)
VALUES ('S1004', 103, 'R1005', 'COMPL')

INTO STUDENT_COURSE(S_ID, C_CODE, REG_NO, COURSE_STATUS)
VALUES ('S1005', 103, 'R1006', 'COMPL')
SELECT * FROM DUAL;



CREATE TABLE STUDENT_SCORE (
  REG_NO varchar(60) REFERENCES STUDENT_COURSE(REG_NO),
  SCORE Number(6,0),
  EXAM_DATE Date
);

INSERT ALL
INTO STUDENT_SCORE(REG_NO, SCORE, EXAM_DATE)
VALUES ('R1001', 70, TO_DATE('12-Jan-04 00:00:00', 'dd-month-yy hh24:mi:ss'))

INTO STUDENT_SCORE(REG_NO, SCORE, EXAM_DATE)
VALUES ('R1005', 80, TO_DATE('15-Sep-03 00:00:00', 'dd-month-yy hh24:mi:ss'))

INTO STUDENT_SCORE(REG_NO, SCORE, EXAM_DATE)
VALUES ('R1006', 78, TO_DATE('12-Dec-03 00:00:00', 'dd-month-yy hh24:mi:ss'))
SELECT * FROM DUAL;



CREATE TABLE CERTIFICATION(
  REG_NO varchar(60) REFERENCES STUDENT_COURSE(REG_NO),
  C_CODE Number(6,0) REFERENCES COURSES(C_CODE),
  CERTIFICATE_REQUEST_ID Number(6,0) PRIMARY KEY,
  CERTIFICATE_STATUS varchar(60),
  ISSUE_DATE Date
);

INSERT ALL
INTO CERTIFICATION(REG_NO, C_CODE, CERTIFICATE_REQUEST_ID, CERTIFICATE_STATUS, ISSUE_DATE)
VALUES ('R1001', 100, 101, 'APPLIED', NULL)

INTO CERTIFICATION(REG_NO, C_CODE, CERTIFICATE_REQUEST_ID, CERTIFICATE_STATUS, ISSUE_DATE)
VALUES ('R1001', 103, 102, 'ISSUED', TO_DATE('18-Oct-03 00:00:00', 'dd-month-yy hh24:mi:ss'))

INTO CERTIFICATION(REG_NO, C_CODE, CERTIFICATE_REQUEST_ID, CERTIFICATE_STATUS, ISSUE_DATE)
VALUES ('R1001', 103, 103, 'ISSUED', TO_DATE('10-Jan-04 00:00:00', 'dd-month-yy hh24:mi:ss'))
SELECT * FROM DUAL;



CREATE TABLE INSTRUCTOR (
  FIRST_NAME varchar(60),
  LAST_NAME varchar(60),
  ADDRESS varchar(60),
  STATE varchar(60),
  PIN Number(6,0),
  INSTRUCTOR_ID varchar(60) PRIMARY KEY,
  DATE_OF_BIRTH Date,
  QUALIFICATION varchar(60),
  SUBJECTS varchar(60),
  C_CODE Number(6,0)
);

INSERT ALL
INTO INSTRUCTOR(FIRST_NAME, LAST_NAME, ADDRESS, STATE, PIN, INSTRUCTOR_ID,
DATE_OF_BIRTH, QUALIFICATION, SUBJECTS, C_CODE)
VALUES ('Kaushik', 'Bhatterjee', 'block A gagan vihar', 'west bengal', 700101,
'I1001', TO_DATE('22-Apr-73, 00:00:00', 'dd-month-yy hh24:mi:ss'), 'BE', 'Comp Engg', 100)

INTO INSTRUCTOR(FIRST_NAME, LAST_NAME, ADDRESS, STATE, PIN, INSTRUCTOR_ID,
DATE_OF_BIRTH, QUALIFICATION, SUBJECTS, C_CODE)
VALUES ('Kanchan', 'Sen', '2/10 vani vilas', 'west bengal', 700096,
'I1002',  TO_DATE('10-Aug-70, 00:00:00', 'dd-month-yy hh24:mi:ss'), 'BE', 'Comp Engg', 101)

INTO INSTRUCTOR(FIRST_NAME, LAST_NAME, ADDRESS, STATE, PIN, INSTRUCTOR_ID,
DATE_OF_BIRTH, QUALIFICATION, SUBJECTS, C_CODE)
VALUES ('Sourabh', 'Ghosh', '1A Sheetal Apt', 'west bengal', 700096,
'I1003',  TO_DATE('12-Dec-69, 00:00:00', 'dd-month-yy hh24:mi:ss'), 'BE', 'Comp Engg', 102)

INTO INSTRUCTOR(FIRST_NAME, LAST_NAME, ADDRESS, STATE, PIN, INSTRUCTOR_ID,
DATE_OF_BIRTH, QUALIFICATION, SUBJECTS, C_CODE)
VALUES ('Sumit', 'Guha', '2B T towers', 'west bengal', 700107,
'I1004',  TO_DATE('22-Sep-70, 00:00:00', 'dd-month-yy hh24:mi:ss'), 'BE', 'Comp Engg', 103)

INTO INSTRUCTOR(FIRST_NAME, LAST_NAME, ADDRESS, STATE, PIN, INSTRUCTOR_ID,
DATE_OF_BIRTH, QUALIFICATION, SUBJECTS, C_CODE)
VALUES ('Radha', 'Mukherjee', '8/12c ashoka', 'west bengal', 700109,
'I1005', TO_DATE('3-May-71, 00:00:00', 'dd-month-yy hh24:mi:ss'), 'BE', 'Comp Engg', 104)

INTO INSTRUCTOR(FIRST_NAME, LAST_NAME, ADDRESS, STATE, PIN, INSTRUCTOR_ID,
DATE_OF_BIRTH, QUALIFICATION, SUBJECTS, C_CODE)
VALUES ('Sekhar', 'Rao', '22/10 A Vishal Apt', 'west bengal', 700101,
'I1006',  TO_DATE('3-May-75, 00:00:00', 'dd-month-yy hh24:mi:ss'), 'BE', 'Comp Engg', 103)
SELECT * FROM DUAL;

  


CREATE TABLE EMP (
  EMPLOYEE_ID Number(6,0),
  FIRST_NAME varchar(60),
  LAST_NAME varchar(60),
  PHONE_NUMBER Number(6,0),
  HIRE_DATE Date,
  SALARY Number(9,0),
  COMMISSION_PCT Number(6,2),
  MANAGER_ID Number(6,0),
  JOB_ID varchar(60),
  DEPARTMENT_ID Number(6,0)
);

INSERT ALL
INTO EMP(EMPLOYEE_ID, FIRST_NAME, LAST_NAME, PHONE_NUMBER, HIRE_DATE, SALARY,
COMMISSION_PCT, MANAGER_ID, JOB_ID, DEPARTMENT_ID)
VALUES (10, 'Smith', 'Trenna', 7890, TO_DATE('29-Jan-97, 00:00:00', 'dd-month-yy hh24:mi:ss'),
20000, 0.5, 20, 'SA_REP', 10)

INTO EMP(EMPLOYEE_ID, FIRST_NAME, LAST_NAME, PHONE_NUMBER, HIRE_DATE, SALARY,
COMMISSION_PCT, MANAGER_ID, JOB_ID, DEPARTMENT_ID)
VALUES (20, 'Sam', 'Peter', 3456, TO_DATE('15-Mar-98, 00:00:00', 'dd-month-yy hh24:mi:ss'),
30000, NULL, NULL, 'MKT_REP', 10)

INTO EMP(EMPLOYEE_ID, FIRST_NAME, LAST_NAME, PHONE_NUMBER, HIRE_DATE, SALARY,
COMMISSION_PCT, MANAGER_ID, JOB_ID, DEPARTMENT_ID)
VALUES (30, 'Sekhar', 'Rao', 7632, TO_DATE('9-Jul-98, 00:00:00', 'dd-month-yy hh24:mi:ss'),
13000, 0.5, 20, 'ST_CLERK', 20)

INTO EMP(EMPLOYEE_ID, FIRST_NAME, LAST_NAME, PHONE_NUMBER, HIRE_DATE, SALARY,
COMMISSION_PCT, MANAGER_ID, JOB_ID, DEPARTMENT_ID)
VALUES (40, 'Sourabh', 'Ghosh', 7812, TO_DATE('12-Feb-98, 00:00:00', 'dd-month-yy hh24:mi:ss'),
10000, NULL, 10, 'MKT_REP', 10)

INTO EMP(EMPLOYEE_ID, FIRST_NAME, LAST_NAME, PHONE_NUMBER, HIRE_DATE, SALARY,
COMMISSION_PCT, MANAGER_ID, JOB_ID, DEPARTMENT_ID)
VALUES (50, 'Kanchan', 'Sen', 9000, TO_DATE('1-Oct-96, 00:00:00', 'dd-month-yy hh24:mi:ss'),
12000, 0.3, 10, 'ST_CLERK', 10)

INTO EMP(EMPLOYEE_ID, FIRST_NAME, LAST_NAME, PHONE_NUMBER, HIRE_DATE, SALARY,
COMMISSION_PCT, MANAGER_ID, JOB_ID, DEPARTMENT_ID)
VALUES (60, 'Kushik', 'Bhatterjee', 2345, TO_DATE('5-Jan-97, 00:00:00', 'dd-month-yy hh24:mi:ss'),
9000, 0.6, 30, 'SA_MAN', 20)

INTO EMP(EMPLOYEE_ID, FIRST_NAME, LAST_NAME, PHONE_NUMBER, HIRE_DATE, SALARY,
COMMISSION_PCT, MANAGER_ID, JOB_ID, DEPARTMENT_ID)
VALUES (70, 'Radha', 'Mukherjee', 2134, TO_DATE('10-Mar-97, 00:00:00', 'dd-month-yy hh24:mi:ss'),
15000, 0.6, 30, 'SA_MAN', 20)
SELECT * FROM DUAL;






-- PART 1

SELECT STUDENTS.S_ID, FIRST_NAME, LAST_NAME, C_CODE
FROM STUDENTS 
JOIN STUDENT_COURSE ON STUDENTS.S_ID = STUDENT_COURSE.S_ID
WHERE C_CODE = 102;

-- PART 2

SELECT FIRST_NAME, LAST_NAME, EMAIL, C_NAME "COURSE NAME", STUDENT_COURSE.C_CODE "COURSE CODE", EXAM_DATE, SCORE
FROM STUDENTS
JOIN STUDENT_COURSE ON STUDENTS.S_ID = STUDENT_COURSE.S_ID
JOIN STUDENT_SCORE ON STUDENT_COURSE.REG_NO = STUDENT_SCORE.REG_NO
JOIN COURSES ON STUDENT_COURSE.C_CODE = COURSES.C_CODE
WHERE  STUDENT_COURSE.REG_NO = 'R1001';

-- PART 3

SELECT FIRST_NAME, C_CODE 
FROM STUDENTS
LEFT JOIN STUDENT_COURSE ON STUDENTS.S_ID = STUDENT_COURSE.S_ID;

SELECT FIRST_NAME, C_CODE 
FROM STUDENT_COURSE
RIGHT JOIN STUDENTS ON STUDENT_COURSE.S_ID = STUDENTS.S_ID;