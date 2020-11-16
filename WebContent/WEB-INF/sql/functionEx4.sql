-- date char --
SELECT TO_CHAR(sysdate) FROM dual;
SELECT TO_CHAR(sysdate,'yyyy') FROM dual;
SELECT TO_CHAR(sysdate,'yy') FROM dual;
SELECT TO_CHAR(sysdate,'mm') FROM dual;
SELECT TO_CHAR(sysdate,'dd') FROM dual;
SELECT TO_CHAR(sysdate,'MON') FROM dual;
SELECT TO_CHAR(sysdate,'yyyy-mm-dd') FROM dual;
SELECT TO_CHAR(sysdate,'yyyy/mm/dd') FROM dual;

SELECT TO_CHAR(sysdate,'hh') FROM dual;
SELECT TO_CHAR(sysdate,'hh24') FROM dual;
SELECT TO_CHAR(sysdate,'mi') FROM dual;
SELECT TO_CHAR(sysdate,'ss') FROM dual;
SELECT TO_CHAR(sysdate,'hh:mi:ss') FROM dual;
SELECT TO_CHAR(sysdate,'yyyy/mm/dd hh24:mi:ss') FROM dual;

-- number to char --
SELECT TO_CHAR(56789) FROM dual;
SELECT TO_CHAR(99956789, '999,999,999') FROM dual;
SELECT TO_CHAR(9956789, '000,000,000') FROM dual;
SELECT TO_CHAR(99956789, 'l999,999,999') FROM dual;
SELECT TO_CHAR(99956789, 'l999,999,999.999') FROM dual;

-- char to date --
SELECT TO_DATE('2020-11-13', 'yyyy-mm-dd') FROM dual;
SELECT TO_DATE('20201113', 'yyyymmdd') FROM dual;
SELECT TO_DATE('2020/11/13', 'yyyy-mm-dd') FROM dual;

SELECT TO_CHAR(TO_DATE('2020-11-13 01:30:20', 'yyyy-mm-dd hh:mi:ss'),'yyyy-mm-dd hh:mi:ss') FROM dual;

-- char ro number --
SELECT TO_NUMBER('200000') FROM dual;
SELECT TO_NUMBER('200,000', '999,999') FROM dual;
