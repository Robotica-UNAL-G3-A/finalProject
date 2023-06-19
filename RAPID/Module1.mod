MODULE Module1
    CONST jointtarget HOME:=[[0,0,0,0,30,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
     CONST jointtarget banda_approach_old:=[[85,4,43,-97,85,42],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
     CONST jointtarget banda_approach:=[[12,24,26,100,79.,218],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];

   
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
    CONST robtarget banda_50:=[[200,10,300],[0,0.707106781,0.707106781,0],[0,-2,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget banda_60:=[[200,-100,300],[0,0.707106781,0.707106781,0],[0,-2,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    
    CONST robtarget valde_40:=[[0,-50,140],[0,0.707106781,0.707106781,0],[0,-2,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget valde_30:=[[0,10,140],[0,0.707106781,0.707106781,0],[0,-2,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget valde_20:=[[0,10,160],[0,0.707106781,0.707106781,0],[0,-2,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget valde_10:=[[0,10,300],[0,0.707106781,0.707106781,0],[0,-2,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    
    CONST robtarget Target_80:=[[0.315192857,-58.869691992,134.245092553],[0.709438496,-0.028403127,-0.70417041,-0.005858029],[-1,0,2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_90:=[[69.613864015,-62.238242507,133.781975781],[0.70943849,-0.028403122,-0.704170417,-0.005858011],[-1,0,2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    
    CONST robtarget Target_10:=[[134.165999362,6.474813313,146.736968531],[0.709438415,-0.028403008,-0.704170494,-0.005858381],[0,1,2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_20:=[[-6.506399876,13.312730858,147.676785261],[0.709437918,-0.02840299,-0.704170997,-0.005858143],[0,1,2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_30:=[[0.538993714,2.07837324,175.552068649],[0.70943806,-0.028403001,-0.704170853,-0.00585818],[0,1,2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_40:=[[1.038117986,4.003003563,236.25567197],[0.709438053,-0.028403001,-0.704170861,-0.005858128],[0,1,2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_50:=[[-13.255288018,-291.349215412,245.737698955],[0.709438047,-0.028403007,-0.704170866,-0.005858129],[0,1,2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    
    CONST robtarget Target_60:=[[280.743195821,-491.675009205,249.671868475],[0.709438048,-0.028403013,-0.704170865,-0.005858136],[-1,0,2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_70:=[[30.743184262,8.324993523,479.671893117],[0.70943806,-0.028403015,-0.704170853,-0.005858135],[-1,0,2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    
    
    PROC main()
        HomeP;
        get_valde;
        put_valde;
        
        HomeP;
        get_ficha_1;
        get_ficha_2;
        get_ficha_3;
        !get_ficha_4;
        !get_ficha_5;
        !get_ficha_6;
        !HomeP;
      
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
    
    PROC get_valde_old()
    ENDPROC
    PROC put_valde_old()
        MoveL valde_10,v1000,z100,gancho\WObj:=valde;
        MoveL valde_20,v1000,z100,gancho\WObj:=valde;
        MoveL valde_30,v1000,z100,gancho\WObj:=valde;
        MoveL valde_40,v1000,z100,gancho\WObj:=valde;

    ENDPROC
    PROC get_valde()
        MoveAbsJ banda_approach,v500,z10,chupa\WObj:=Estante;
        MoveL Target_10,v1000,z100,gancho\WObj:=Banda_Tr;
        MoveL Target_20,v1000,z100,gancho\WObj:=Banda_Tr;
        MoveL Target_30,v1000,z100,gancho\WObj:=Banda_Tr;
        MoveL Target_40,v1000,z100,gancho\WObj:=Banda_Tr;
        MoveL Target_50,v1000,z100,gancho\WObj:=Banda_Tr;
        MoveL Target_70,v1000,z100,gancho\WObj:=valde_en_suelo;
        MoveL Target_80,v1000,z100,gancho\WObj:=valde_en_suelo;
        MoveL Target_90,v1000,z100,gancho\WObj:=valde_en_suelo;
    ENDPROC
    PROC put_valde()
        
    ENDPROC
ENDMODULE