DEFINE VARIABLE ch_prog AS CHARACTER NO-UNDO.

/* Extracts the parameters */
ASSIGN ch_prog = ENTRY( 1, SESSION:PARAMETER ).
/*
// IF NUM-ENTRIES(SESSION:PARAMETER) >= 2 THEN DO :
//   ASSIGN PROPATH = PROPATH + "," + ENTRY( 2, SESSION:PARAMETER ).
// END.
*/
RUN VALUE( REPLACE( PROGRAM-NAME( 1 ), "run.p", "read-env-var.p") ).

/* RUN */
RUN VALUE( ch_prog ).
