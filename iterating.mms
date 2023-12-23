        LOC     Data_Segment

        LOC     #100

loop    BNP     $0,End
        ADD     $3,$2,$1
        SL      $1,$1,1
        ADD     $1,$1,$3

        SUB     $0,$0,1
        JMP     loop



Main    SET     $0,10
        SET     $1,1
        SET     $2,0
        SET     $3,0
        JMP     loop
        

End     TRAP    0,Halt,0 -- terminate program
