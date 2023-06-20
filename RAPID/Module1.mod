MODULE Module1
    CONST jointtarget HOME:=[[0,0,0,0,30,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
     CONST jointtarget banda_approach_old:=[[85,4,43,-97,85,42],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
     CONST jointtarget banda_approach:=[[12,24,26,100,79,218],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];

   
    CONST robtarget ficha_approach_gen:=[[200,100,180],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    
    ! ficha 1
    CONST robtarget ficha_approach_10:=[[394.5,-51.5,310],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget ficha_approach_11:=[[394.5,51.5,310],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget ficha_10:=[[394.5,-51.5,288],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget ficha_11:=[[394.5,-51.5,291],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget ficha_12:=[[394.5,-51.5,294],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget ficha_13:=[[394.5,-51.5,297],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    
    ! ficha 2
    CONST robtarget ficha_approach_20:=[[134.5,-51.5,310],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget ficha_approach_21:=[[134.5,51.5,310],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget ficha_20:=[[134.5,-51.5,288],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget ficha_21:=[[134.5,-51.5,291],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget ficha_22:=[[134.5,-51.5,294],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget ficha_23:=[[134.5,-51.5,297],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    
    ! ficha 3
    CONST robtarget ficha_approach_30:=[[394.5,-51.5,170],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget ficha_approach_31:=[[394.5,51.5,170],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget ficha_30:=[[394.5,-51.5,150],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget ficha_31:=[[394.5,-51.5,153],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget ficha_32:=[[394.5,-51.5,156],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget ficha_33:=[[394.5,-51.5,159],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    
    ! ficha 4
	CONST robtarget ficha_approach_40:=[[134.5,-51.5,170],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget ficha_approach_41:=[[134.5,51.5,170],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
	CONST robtarget ficha_40:=[[134.5,-51.5,150],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget ficha_41:=[[134.5,-51.5,153],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget ficha_42:=[[134.5,-51.5,156],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget ficha_43:=[[134.5,-51.5,159],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    
    ! ficha 5
	CONST robtarget ficha_approach_50:=[[394.5,-51.5,30],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget ficha_approach_51:=[[394.5,51.5,30],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
	CONST robtarget ficha_50:=[[394.5,-51.5,12],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget ficha_51:=[[394.5,-51.5,15],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget ficha_52:=[[394.5,-51.5,18],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget ficha_53:=[[394.5,-51.5,21],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
   
	! ficha 6
	CONST robtarget ficha_approach_60:=[[140.229,-51.5,40],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget ficha_approach_61:=[[140.229,51.5,40],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
	CONST robtarget ficha_60:=[[140.229,-51.5,12],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget ficha_61:=[[140.229,-51.5,15],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget ficha_62:=[[140.229,-51.5,18],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget ficha_63:=[[140.229,-51.5,21],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    	
    CONST robtarget banda_10:=[[0,-50,140],[0,0.707106781,0.707106781,0],[0,-2,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget banda_20:=[[0,10,140],[0,0.707106781,0.707106781,0],[0,-2,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget banda_30:=[[0,10,160],[0,0.707106781,0.707106781,0],[0,-2,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget banda_40:=[[0,10,300],[0,0.707106781,0.707106781,0],[0,-2,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget banda_50:=[[200,10,300],[0,0.707106781,0.707106781,0],[0,-2,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget banda_60:=[[200,-100,300],[0,0.707106781,0.707106781,0],[0,-2,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    
    CONST robtarget get_valde_A_10:=[[163.492725357,-151.686904813,119.198419433],[0.495128824,-0.525234412,-0.617233934,-0.31304717],[0,-2,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget get_valde_A_20:=[[174.447540619,6.684241585,152.15910429],[0.495128491,-0.525234749,-0.617234074,-0.313046855],[0,-2,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget get_valde_A_30:=[[174.447507596,6.684316442,203.389814206],[0.495128486,-0.525234784,-0.617234073,-0.313046806],[0,-2,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget get_valde_A_40:=[[460.505499897,-391.66497861,203.389814206],[0.363513977,-0.700008659,-0.408457288,-0.45935619],[0,-2,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    
    CONST robtarget get_valde_B_10:=[[0.000470652,-0.000018612,130],[0.363513973,-0.700008597,-0.408457405,-0.459356184],[0,-2,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget get_valde_B_20:=[[0.000472496,-129.959394283,130],[0.363514037,-0.700008559,-0.408457414,-0.459356184],[0,-2,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    
    CONST robtarget put_valde_10:=[[-83.007905016,-21.784827301,180.00001869],[0.000000016,-0.466568243,0.884485203,-0.000000071],[0,-1,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget put_valde_20:=[[-41.438608698,-21.784702645,133.518907054],[0.243389654,0.44855593,-0.850338437,-0.128388458],[0,-1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    
    
    
    PROC main()
        HomeP;
        get_valde;
                
        get_ficha_1;
        put_valde;
        
        get_ficha_2;
        put_valde;
        
        get_ficha_3;
        put_valde;
        
        get_ficha_4;
        put_valde;
        
        get_ficha_5;
        put_valde;
        
        get_ficha_6;
        put_valde;
        
        HomeP;
        
        
        !    !HomeP;
        
    ENDPROC
    
    PROC get_ficha_1()
        MoveL ficha_approach_gen,v400,z100,chupa\WObj:=Estante;
        MoveL ficha_approach_11,v400,z100,chupa\WObj:=Estante;
        MoveL ficha_approach_10,v400,z100,chupa\WObj:=Estante;
        
        MoveL ficha_10,v400,z100,chupa\WObj:=Estante;
        MoveL ficha_11,v400,z100,chupa\WObj:=Estante;
        MoveL ficha_12,v400,z100,chupa\WObj:=Estante;
        MoveL ficha_13,v400,z100,chupa\WObj:=Estante;
        
        MoveL ficha_approach_10,v400,z100,chupa\WObj:=Estante;
        MoveL ficha_approach_11,v400,z100,chupa\WObj:=Estante;
        MoveL ficha_approach_gen,v400,z100,chupa\WObj:=Estante;
    ENDPROC
    PROC HomeP()
        MoveAbsJ HOME,v500,z10,chupa\WObj:=Estante;
    ENDPROC

    PROC get_ficha_2()
        MoveL ficha_approach_gen,v400,z100,chupa\WObj:=Estante;
        MoveL ficha_approach_21,v400,z100,chupa\WObj:=Estante;
        MoveL ficha_approach_20,v400,z100,chupa\WObj:=Estante;

        MoveL ficha_20,v400,z100,chupa\WObj:=Estante;
        MoveL ficha_21,v400,z100,chupa\WObj:=Estante;
        MoveL ficha_22,v400,z100,chupa\WObj:=Estante;
        MoveL ficha_23,v400,z100,chupa\WObj:=Estante;

        MoveL ficha_approach_20,v400,z100,chupa\WObj:=Estante;
        MoveL ficha_approach_21,v400,z100,chupa\WObj:=Estante;
        MoveL ficha_approach_gen,v400,z100,chupa\WObj:=Estante;
    ENDPROC
    
    PROC get_ficha_3()
        MoveL ficha_approach_gen,v400,z100,chupa\WObj:=Estante;
        MoveL ficha_approach_31,v400,z100,chupa\WObj:=Estante;
        MoveL ficha_approach_30,v400,z100,chupa\WObj:=Estante;
        
        MoveL ficha_30,v400,z100,chupa\WObj:=Estante;
        MoveL ficha_31,v400,z100,chupa\WObj:=Estante;
        MoveL ficha_32,v400,z100,chupa\WObj:=Estante;
        MoveL ficha_33,v400,z100,chupa\WObj:=Estante;
        
        MoveL ficha_approach_30,v400,z100,chupa\WObj:=Estante;
        MoveL ficha_approach_31,v400,z100,chupa\WObj:=Estante;
        MoveL ficha_approach_gen,v400,z100,chupa\WObj:=Estante;
    ENDPROC
    
    PROC get_ficha_4()
        MoveL ficha_approach_gen,v400,z100,chupa\WObj:=Estante;
        MoveL ficha_approach_41,v400,z100,chupa\WObj:=Estante;
        MoveL ficha_approach_40,v400,z100,chupa\WObj:=Estante;
        
        MoveL ficha_40,v400,z100,chupa\WObj:=Estante;
        MoveL ficha_41,v400,z100,chupa\WObj:=Estante;
        MoveL ficha_42,v400,z100,chupa\WObj:=Estante;
        MoveL ficha_43,v400,z100,chupa\WObj:=Estante;
        
        MoveL ficha_approach_40,v400,z100,chupa\WObj:=Estante;
        MoveL ficha_approach_41,v400,z100,chupa\WObj:=Estante;
        MoveL ficha_approach_gen,v400,z100,chupa\WObj:=Estante;
    ENDPROC
	
	 PROC get_ficha_5()
        MoveL ficha_approach_gen,v400,z100,chupa\WObj:=Estante;
        MoveL ficha_approach_51,v400,z100,chupa\WObj:=Estante;
        MoveL ficha_approach_50,v400,z100,chupa\WObj:=Estante;
        
        MoveL ficha_50,v400,z100,chupa\WObj:=Estante;
        MoveL ficha_51,v400,z100,chupa\WObj:=Estante;
        MoveL ficha_52,v400,z100,chupa\WObj:=Estante;
        MoveL ficha_53,v400,z100,chupa\WObj:=Estante;
        
        MoveL ficha_approach_50,v400,z100,chupa\WObj:=Estante;
        MoveL ficha_approach_51,v400,z100,chupa\WObj:=Estante;
        MoveL ficha_approach_gen,v400,z100,chupa\WObj:=Estante;
    ENDPROC
	
	 PROC get_ficha_6()
        MoveL ficha_approach_gen,v400,z100,chupa\WObj:=Estante;
        MoveL ficha_approach_61,v400,z100,chupa\WObj:=Estante;
        MoveL ficha_approach_60,v400,z100,chupa\WObj:=Estante;
        
        MoveL ficha_60,v400,z100,chupa\WObj:=Estante;
        MoveL ficha_61,v400,z100,chupa\WObj:=Estante;
        MoveL ficha_62,v400,z100,chupa\WObj:=Estante;
        MoveL ficha_63,v400,z100,chupa\WObj:=Estante;
        
        MoveL ficha_approach_60,v400,z100,chupa\WObj:=Estante;
        MoveL ficha_approach_61,v400,z100,chupa\WObj:=Estante;
        MoveL ficha_approach_gen,v400,z100,chupa\WObj:=Estante;
    ENDPROC
    
 
    PROC get_valde()
        MoveL get_valde_A_10,v400,z100,gancho\WObj:=Banda_Tr;
        MoveL get_valde_A_20,v400,z100,gancho\WObj:=Banda_Tr;
        MoveL get_valde_A_30,v400,z100,gancho\WObj:=Banda_Tr;
        MoveL get_valde_A_40,v400,z100,gancho\WObj:=Banda_Tr;
        MoveL get_valde_B_10,v400,z100,gancho\WObj:=valde_en_suelo;
        MoveL get_valde_B_20,v400,z100,gancho\WObj:=valde_en_suelo;
    ENDPROC
    PROC put_valde()
        MoveL put_valde_10,v400,z100,chupa\WObj:=valde_en_suelo;
        MoveL put_valde_20,v400,z100,chupa\WObj:=valde_en_suelo;
    ENDPROC
    

   
ENDMODULE