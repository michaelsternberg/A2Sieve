PROGRAM Sieve {Sieve of Eratosthenes}

{ Global Variables }
DIM A%(4096)

PROC Initialize
  PRINT "INITIALIZING..."
  FOR I% = 2 TO 4096
    A%(I%) = 1
  NEXT I%
ENDPROC

PROC Process_Sieve
  PRINT "PROCESSING..."
  FOR I% = 2 TO 64
    IF A%(I%) = 1 THEN BEGIN
      FOR J% = I% * I% TO 4096 STEP I%
        A%(J%) = 0
      NEXT J%
    ENDIF
  NEXT I%
ENDPROC

PROC Output_Results
  FOR I% = 2 TO 4096
    IF A%(I%) = 1 THEN PRINT I%; " ";
  NEXT I%
ENDPROC

{ Main }
HOME
GOSUB Initialize
GOSUB Process_Sieve
GOSUB Output_Results
END
