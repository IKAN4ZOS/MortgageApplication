       IDENTIFICATION DIVISION.
       PROGRAM-ID. COBDDB2.
       DATA DIVISION.
         WORKING-STORAGE SECTION.

         01  WS-SQLREAD           PIC X(1).
      *** IKAN DEMO Configuration Gerard 17/06/2025 Plus *** 
      *** INCLUDING SQLCA COPYBOOK ******
           EXEC SQL
                INCLUDE SQLCA
           END-EXEC.

       PROCEDURE DIVISION.
       MAIN-PARA.

           EXEC SQL
                SELECT IBMREQD INTO: WS-SQLREAD
                FROM SYSIBM.SYSDUMMY1
           END-EXEC.
           Display 'Testing the cobDdb2'.

           STOP RUN.
