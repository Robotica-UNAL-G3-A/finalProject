MODULE Module1
    CONST jointtarget HOME:=[[0,0,0,0,30,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
     CONST jointtarget banda_approach:=[[85,4,43,-97,85,42],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];

   
    CONST robtarget ficha_approach_gen:=[[200,100,180],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget ficha_10:=[[394.5,-51.5,288],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget ficha_11:=[[394.5,-51.5,291],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget ficha_12:=[[394.5,-51.5,294],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget ficha_13:=[[394.5,-51.5,297],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget ficha_approach_10:=[[394.5,-51.5,310],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget ficha_approach_11:=[[394.5,51.5,310],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget ficha_20:=[[134.5,-51.5,288],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget ficha_21:=[[134.5,-51.5,291],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget ficha_22:=[[134.5,-51.5,294],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget ficha_23:=[[134.5,-51.5,297],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget ficha_approach_20:=[[134.5,-51.5,310],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget ficha_approach_21:=[[134.5,51.5,310],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget ficha_30:=[[394.5,-51.5,150],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget ficha_31:=[[394.5,-51.5,153],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget ficha_32:=[[394.5,-51.5,156],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget ficha_33:=[[394.5,-51.5,159],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget ficha_approach_30:=[[394.5,-51.5,180],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget ficha_approach_31:=[[394.5,51.5,180],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
	
    
    CONST robtarget banda_10:=[[0,-50,140],[0,0.707106781,0.707106781,0],[0,-2,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget banda_20:=[[0,10,140],[0,0.707106781,0.707106781,0],[0,-2,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget banda_30:=[[0,10,160],[0,0.707106781,0.707106781,0],[0,-2,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget banda_40:=[[0,10,300],[0,0.707106781,0.707106781,0],[0,-2,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    
    CONST robtarget valde_40:=[[0,-50,140],[0,1,0,0],[0,-2,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget valde_30:=[[0,10,140],[0,1,0,0],[0,-2,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget valde_20:=[[0,10,160],[0,1,0,0],[0,-2,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget valde_10:=[[0,10,300],[0,1,0,0],[0,-2,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    
    
    PROC main()
        HomeP;
        get_valde;
        
         HomeP;
        get_ficha_1;
        get_ficha_2;
        get_ficha_3;
        !get_ficha_4;
        !get_ficha_5;
        !get_ficha_6;
        HomeP;
    ENDPROC
    PROC get_ficha_1()
        MoveL ficha_approach_gen,v1000,z100,chupa\WObj:=Estante;
        MoveL ficha_10,v1000,z100,chupa\WObj:=Estante;
        MoveL ficha_11,v1000,z100,chupa\WObj:=Estante;
        MoveL ficha_12,v1000,z100,chupa\WObj:=Estante;
        MoveL ficha_13,v1000,z100,chupa\WObj:=Estante;
        MoveL ficha_approach_10,v1000,z100,chupa\WObj:=Estante;
        MoveL ficha_approach_11,v1000,z100,chupa\WObj:=Estante;
        MoveL ficha_approach_gen,v1000,z100,chupa\WObj:=Estante;
    ENDPROC
    PROC HomeP()
        MoveAbsJ HOME,v500,z10,chupa\WObj:=Estante;
    ENDPROC
    PROC fichas1()

    ENDPROC
    PROC get_ficha_2()
        MoveL ficha_approach_gen,v1000,z100,chupa\WObj:=Estante;
        MoveL ficha_20,v1000,z100,chupa\WObj:=Estante;
        MoveL ficha_21,v1000,z100,chupa\WObj:=Estante;
        MoveL ficha_22,v1000,z100,chupa\WObj:=Estante;
        MoveL ficha_23,v1000,z100,chupa\WObj:=Estante;
        MoveL ficha_approach_20,v1000,z100,chupa\WObj:=Estante;
        MoveL ficha_approach_21,v1000,z100,chupa\WObj:=Estante;
        MoveL ficha_approach_gen,v1000,z100,chupa\WObj:=Estante;
    ENDPROC
    PROC get_ficha_3()
        MoveL ficha_approach_gen,v1000,z100,chupa\WObj:=Estante;
        MoveL ficha_30,v1000,z100,chupa\WObj:=Estante;
        MoveL ficha_31,v1000,z100,chupa\WObj:=Estante;
        MoveL ficha_32,v1000,z100,chupa\WObj:=Estante;
        MoveL ficha_33,v1000,z100,chupa\WObj:=Estante;
        MoveL ficha_approach_30,v1000,z100,chupa\WObj:=Estante;
        MoveL ficha_approach_31,v1000,z100,chupa\WObj:=Estante;
        MoveL ficha_approach_gen,v1000,z100,chupa\WObj:=Estante;
    ENDPROC
    
    PROC get_valde()
        MoveL banda_10,v1000,z100,gancho\WObj:=Banda_Tr;
        MoveL banda_20,v1000,z100,gancho\WObj:=Banda_Tr;
        MoveL banda_30,v1000,z100,gancho\WObj:=Banda_Tr;
        MoveL banda_40,v1000,z100,gancho\WObj:=Banda_Tr;
    ENDPROC
    PROC put_valde()
        MoveL valde_10,v1000,z100,gancho\WObj:=valde;
        MoveL valde_20,v1000,z100,gancho\WObj:=valde;
        MoveL valde_30,v1000,z100,gancho\WObj:=valde;
        MoveL valde_40,v1000,z100,gancho\WObj:=valde;

    ENDPROC
ENDMODULE