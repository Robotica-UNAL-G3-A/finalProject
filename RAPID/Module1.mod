MODULE Module1   
!***********************************************************
    !
    ! Module:  Module1
    !
    ! Description:
    !   pick and place routine
    !
    ! Author: Sebastian Dueñas
    !
    ! Version: 1.0
    !
    !***********************************************************
    CONST robtarget Target_10:=[[394.5,288,51.5],[0,0,-0.707106781,0.707106781],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_20:=[[134.5,288,51.5],[0,0,-0.707106781,0.707106781],[1,1,0,6],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_30:=[[394.5,150,51.5],[0,0,-0.707106781,0.707106781],[1,1,0,6],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_40:=[[134.5,150,51.5],[0,0,-0.707106781,0.707106781],[1,1,0,6],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_50:=[[394.5,12,51.5],[0,0,-0.707106781,0.707106781],[1,1,0,6],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_60:=[[140.229,12,51.5],[0,0,-0.707106781,0.707106781],[1,0,0,6],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]]; 
    
    !***********************************************************
    !
    ! Procedure main
    !
    !   This is the entry point of your program 
    !
    !***********************************************************
    PROC main()
        !Add your code here
    ENDPROC
    PROC Path_10()
        MoveL Target_10,v1000,z100,chupa\WObj:=Estante;
        MoveL Target_20,v1000,z100,chupa\WObj:=Estante;
        MoveL Target_30,v1000,z100,chupa\WObj:=Estante;
        MoveL Target_40,v1000,z100,chupa\WObj:=Estante;
        MoveL Target_50,v1000,z100,chupa\WObj:=Estante;
        MoveL Target_60,v1000,z100,chupa\WObj:=Estante;
    ENDPROC
ENDMODULE