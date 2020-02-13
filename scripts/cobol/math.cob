IDENTIFICATION DIVISION.
PROGRAM-ID. MATH.

ENVIRONMENT DIVISION.

DATA DIVISION.
  WORKING-STORAGE SECTION.
   01 MY-DATA.
    03 D1 PIC 99999 VALUE 0.
    03 D2 PIC 99999 VALUE 0.
    03 D3 PIC 99999 VALUE 0.
    03 D4 PIC 99999 VALUE 0.
    03 D5 PIC 99999 VALUE 0.
    03 D6 PIC 99999 VALUE 0.
    03 D7 PIC 99999 VALUE 0.
    03 D8 PIC 99999 VALUE 0.
    03 D9 PIC 99999 VALUE 0.
   01 MY-COUNTER1 PIC 9(3) VALUE 1.
   01 MY-COUNTER2 PIC 9(3) VALUE 1.
   01 MY-COUNTER3 PIC 9(3) VALUE 1.

PROCEDURE DIVISION.
  MAIN SECTION.
    ADD 5 TO D1 D2 D3.
    SUBTRACT 2 FROM D1 D2.
    MOVE 10 TO D4.
    MOVE 3 TO D5.
    DIVIDE D4 BY D5 GIVING D6 REMAINDER D7.
    MULTIPLY D4 BY D5 GIVING D8.
    *> COMPUTEで記載することも可能、ただしADDなどのように複数項目に演算を行えない
    *> 使用可能な演算子）+ - / * **
    COMPUTE D9 = D4 + D5.
    DISPLAY MY-DATA.

    PERFORM 10 TIMES
      DISPLAY "COUNTER1 = " MY-COUNTER1
      ADD 1 TO MY-COUNTER1
    END-PERFORM.

    PERFORM UNTIL MY-COUNTER2 > 5
      DISPLAY "COUNTER2 = " MY-COUNTER2
      ADD 1 TO MY-COUNTER2
    END-PERFORM.

    PERFORM VARYING MY-COUNTER3 FROM 1 BY 3 UNTIL MY-COUNTER3 > 14
      DISPLAY "COUNTER3 = " MY-COUNTER3
    END-PERFORM.

    STOP RUN.