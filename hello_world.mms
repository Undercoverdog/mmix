            LOC         Data_Segment
            LOC         #1

            GREG        @

string      BYTE        "Hello World!",10,0
Main        LDA         $255,string   
            TRAP        0,Fputs,StdOut
            TRAP        0,Halt,0