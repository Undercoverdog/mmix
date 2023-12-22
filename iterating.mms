        LOC     Data_Segment
iter    IS      $0
a       IS      $1
b       IS      $2
c       IS      $3


        GREG    @   -- Sets global register $255 as needed for output
test    BYTE    "minecraft",10,0
        

        LOC     #100


loop    BNP     $0,End
        ADD     $3,$2,$1
        SL      $1,$1,1
        ADD     $1,$1,$3

        SUB     $0,$0,1
        JMP     loop



Main    SET     $0,5
        SET     $1,2
        SET     $2,0
        JMP     loop
        

End     LDA     $255,c
        TRAP    0,Fputs,StdOut
        TRAP    0,Halt,0 -- terminate program
