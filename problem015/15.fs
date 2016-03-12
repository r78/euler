: factorial ( n -- d )
    dup 33 u> -24 and throw
    dup 2 < IF
        drop 1.
    ELSE
        1.
        rot 1+ 2 DO
            i 1 m*/
        LOOP
    THEN ;

: ROUTES
    dup 2 * factorial drop swap factorial drop dup * / ;

20 ROUTES .

bye
