MODULE Module1
    !*****************************************************
    !Module Name: 
    !Version:     0.beta
    !Description: pick and place routine
    !Date:        19/6/2023
    !Author:      Juan Sebastian D jsduenass@unal.edu.co
    !*****************************************************
    
    
    ! convetion  
    ! cruze speed v200
    ! medium speed v100
    ! slow speed v50
    
    ! Variable Declarations
    VAR num num_fichas_1 := 3;
    VAR num num_fichas_2 := 3;
    VAR num num_fichas_3 := 3;
    VAR num num_fichas_4 := 3;
    VAR num num_fichas_5 := 3;
    VAR num num_fichas_6 := 3;
    VAR num selected_ficha := 1;
    VAR num choose_fichas{3}:=[3,3,3];  
    VAR num user_option := 0;
    ! routines easy
    VAR num ROUTINES{4,3}:=[[2,4,2],[4,5,1],[1,3,5],[2,6,1]];    
    ! routines hard
    !VAR num ROUTINES{4,3}:=[[3,3,3],[1,2,4],[6,4,5],[2,6,1]];    
   
    
    VAR string message := "Hello, RobotStudio!";    
    
    
    CONST jointtarget HOME:=[[0,0,0,0,30,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST jointtarget banda_approach_old:=[[85,4,43,-97,85,42],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST jointtarget banda_approach:=[[12,24,26,100,79,218],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];

   
    CONST robtarget ficha_approach_gen_10:=[[200,100,180],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget ficha_approach_gen_20:=[[200,200,180],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    
    ! ficha 1
    CONST robtarget ficha_approach_10:=[[394.5,-51.5,320],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget ficha_approach_11:=[[394.5,51.5,320],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget ficha_10:=[[394.5,-51.5,298],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget ficha_11:=[[394.5,-51.5,301],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget ficha_12:=[[394.5,-51.5,304],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget ficha_13:=[[394.5,-51.5,307],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    
    ! ficha 2
    CONST robtarget ficha_approach_20:=[[134.5,-51.5,310],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget ficha_approach_21:=[[134.5,51.5,310],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget ficha_20:=[[134.5,-51.5,288],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget ficha_21:=[[134.5,-51.5,291],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget ficha_22:=[[134.5,-51.5,294],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget ficha_23:=[[134.5,-51.5,297],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    
    ! ficha 3
    CONST robtarget ficha_approach_30:=[[394.5,-51.5,180],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget ficha_approach_31:=[[394.5,51.5,180],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget ficha_30:=[[394.5,-51.5,160],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget ficha_31:=[[394.5,-51.5,163],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget ficha_32:=[[394.5,-51.5,166],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget ficha_33:=[[394.5,-51.5,169],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    
    ! ficha 4
	CONST robtarget ficha_approach_40:=[[134.5,-51.5,170],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget ficha_approach_41:=[[134.5,51.5,170],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
	CONST robtarget ficha_40:=[[134.5,-51.5,150],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget ficha_41:=[[134.5,-51.5,153],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget ficha_42:=[[134.5,-51.5,156],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget ficha_43:=[[134.5,-51.5,159],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    
    ! ficha 5
	CONST robtarget ficha_approach_50:=[[394.5,-51.5,40],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget ficha_approach_51:=[[394.5,51.5,40],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
	CONST robtarget ficha_50:=[[394.5,-51.5,22],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget ficha_51:=[[394.5,-51.5,25],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget ficha_52:=[[394.5,-51.5,28],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget ficha_53:=[[394.5,-51.5,31],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
   
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

    CONST robtarget get_valde_B_10:=[[0.000499897,0.00002139,433.389814206],[0.363513977,-0.700008659,-0.408457288,-0.45935619],[0,-2,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget get_valde_B_20:=[[0.000470652,-0.000018612,190],[0.363513973,-0.700008597,-0.408457405,-0.459356184],[0,-2,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget get_valde_B_30:=[[0,0,165],[0.363509927,-0.700010224,-0.408452735,-0.459361059],[0,-2,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget get_valde_B_40:=[[0.000463321,6.600697306,150],[0.363513958,-0.700008579,-0.408457501,-0.459356138],[0,-2,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget get_valde_B_50:=[[0.000470652,-0.000018612,145],[0.363513973,-0.700008597,-0.408457405,-0.459356184],[0,-2,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget get_valde_B_60:=[[0.000472496,-129.959394283,145],[0.363514037,-0.700008559,-0.408457414,-0.459356184],[0,-2,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    
    CONST robtarget put_valde_10:=[[-83.007905016,-21.784827301,180.00001869],[0.000000016,-0.466568243,0.884485203,-0.000000071],[0,-1,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget put_valde_20:=[[-41.438608698,-21.784702645,133.518907054],[0.243389654,0.44855593,-0.850338437,-0.128388458],[0,-1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget put_valde_30:=[[-83.008017704,-21.784820069,179.999983063],[0.349392753,-0.309209681,0.586176945,0.662352373],[-1,1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget put_valde_40:=[[1.651159255,-21.784821076,180.000028319],[0.349392751,-0.30920971,0.586176929,0.662352375],[-1,1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    
    ! calib
    CONST robtarget esquinaSuperior:=[[0,0,428],[1,0,0,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Estante_calib_10:=[[200.000036469,100.000009659,490],[0.00000008,-0.000000002,1,-0.000000234],[0,-1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Estante_calib_20:=[[7.106937599,100.000017468,490],[0.000000106,-0.000000009,1,-0.000000277],[0,-1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Estante_calib_30:=[[0,0,490],[0.000000093,0.000000005,1,-0.000000388],[-1,-1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Estante_calib_40:=[[0,0,528],[0.000000093,0.000000005,1,-0.000000388],[-1,-1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    
    CONST robtarget Banda_calib_10:=[[174.447511267,6.684315413,300],[0.495128462,-0.525234807,-0.617234084,-0.313046783],[0,-1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Banda_calib_20:=[[174.447511267,6.684315413,100],[0.495128462,-0.525234807,-0.617234084,-0.313046783],[0,-1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    
    CONST robtarget Valde_calib_10:=[[0,0,556],[0.363514005,-0.700008618,-0.408457344,-0.459356182],[-1,-2,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Valde_calib_20:=[[0,0,100],[0.363514005,-0.700008618,-0.408457344,-0.459356182],[-1,-2,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    
    
    
    
    PROC main()
        ! neumatic valve  activate
        Reset DO_02;  
        ! neumatic valve  deactivate
        RESET DO_01;
        ! boton de rutina
        RESET DO_03;
        
       ! HomeP;
        !calib;
        
        
        HomeP;
!        FOR k FROM 1 TO 3 DO
!            TPReadNum   user_option, "Select ficha"; 
!            choose_fichas{k}:= user_option;
!        ENDFOR
        
        
        FOR j FROM 1 TO 4 DO
            TPReadNum   user_option, "Select routine"; 
            FOR k FROM 1 TO 3 DO
                choose_fichas{k}:=ROUTINES{user_option,k}; 
            ENDFOR    
            Set DO_03;
            
            get_valde;
                   
            FOR k FROM 1 TO 3 DO
                selected_ficha := choose_fichas{k};    
                get_ficha;          
            ENDFOR
            
            return_valde;
            HomeP;
            RESET DO_03;
            
        ENDFOR
        
        
        
    ENDPROC
    
    PROC HomeP()
        MoveAbsJ HOME,v200,z10,chupa\WObj:=Estante;
    ENDPROC
    
    PROC get_ficha()
        IF selected_ficha=1 THEN
            get_ficha_1;
        ELSEIF    selected_ficha=2 THEN        
            get_ficha_2;
        ELSEIF    selected_ficha=3 THEN
            get_ficha_3;
        ELSEIF    selected_ficha=4 THEN
            get_ficha_4;
        ELSEIF  selected_ficha=5 THEN
            get_ficha_5;
        ELSEIF    selected_ficha=6 THEN
            get_ficha_6;
        ELSE
            TPWrite("ficha seleccionada no valida");
        ENDIF
                put_valde;  
    ENDPROC
    
    PROC get_valde()
        TPWrite("Recogiendo valde");
        ! get from banda
        MoveL get_valde_A_10,v200,z100,gancho\WObj:=Banda_Tr;
        MoveL get_valde_A_20,v200,z100,gancho\WObj:=Banda_Tr;
        MoveL get_valde_A_30,v50,z100,gancho\WObj:=Banda_Tr;
        
        WaitTime(2);

        ! put in floor
        MoveL get_valde_B_10,v100,z100,gancho\WObj:=valde_en_suelo; 
        WaitTime 2;
        MoveL get_valde_B_20,v100,z100,gancho\WObj:=valde_en_suelo;
        WaitTime(2);
        MoveL get_valde_B_30,v50,z100,gancho\WObj:=valde_en_suelo;
        MoveL get_valde_B_40,v50,z100,gancho\WObj:=valde_en_suelo;
        
        MoveL get_valde_B_50,v50,z100,gancho\WObj:=valde_en_suelo;
        MoveL get_valde_B_60,v200,z100,gancho\WObj:=valde_en_suelo;
        
    ENDPROC
 
PROC return_valde()
        TPWrite("Dejando valde");
        MoveL ficha_approach_gen_20,v200,z100,chupa\WObj:=Estante;
        WaitTime(2);
    
        ! get from floor
        MoveL get_valde_B_60,v200,z100,gancho\WObj:=valde_en_suelo;
        MoveL get_valde_B_50,v50,z100,gancho\WObj:=valde_en_suelo;
        MoveL get_valde_B_40,v50,z100,gancho\WObj:=valde_en_suelo;
        MoveL get_valde_B_30,v50,z100,gancho\WObj:=valde_en_suelo;
        WaitTime(2);
        MoveL get_valde_B_20,v100,z100,gancho\WObj:=valde_en_suelo;
        MoveL get_valde_B_10,v100,z100,gancho\WObj:=valde_en_suelo;
        WaitTime 2;
        
        ! return to banda
        MoveL get_valde_A_30,v50,z100,gancho\WObj:=Banda_Tr;
        MoveL get_valde_A_20,v200,z100,gancho\WObj:=Banda_Tr;
        MoveL get_valde_A_10,v200,z100,gancho\WObj:=Banda_Tr;
        
        
        
    ENDPROC
     
    PROC put_valde()    ! put pieza in valde       
        MoveL put_valde_10,v200,z100,chupa\WObj:=valde_en_suelo;
        WaitTime(1);
    
        MoveL put_valde_30,v10,z100,chupa\WObj:=valde_en_suelo;
        MoveL put_valde_40,v100,z100,chupa\WObj:=valde_en_suelo;
        WaitTime(2);
        
        ! deactivate valve
        RESET DO_02;
        SET DO_01;
        TPWrite("valvula desactivada: dejando ficha"); 
        
        WaitTime(1);
        RESET DO_01;       
        
    ENDPROC
    
    PROC get_ficha_1()
        MoveL ficha_approach_gen_10,v200,z100,chupa\WObj:=Estante;
        MoveL ficha_approach_11,v200,z100,chupa\WObj:=Estante;
        MoveL ficha_approach_10,v200,z100,chupa\WObj:=Estante;
        
        SET DO_02;
        RESET DO_01;        
        TPWrite("valvula activada: recogiendo ficha 1");
        
        IF num_fichas_1 = 3 THEN
            MoveL ficha_13,v50,z100,chupa\WObj:=Estante;
        ELSEIF num_fichas_1 = 2 THEN
            MoveL ficha_12,v50,z100,chupa\WObj:=Estante;
        ELSEIF num_fichas_1 = 1 THEN
            MoveL ficha_11,v50,z100,chupa\WObj:=Estante;
        ELSEIF num_fichas_1 <= 0 THEN 
            TPWrite("no hay fichas 1 por favor llenar stock");
        ENDIF
        
        num_fichas_1 := num_fichas_1-1;
        RESET DO_02;
        
        WaitTime(3);
        
        MoveL ficha_approach_10,v200,z100,chupa\WObj:=Estante;
        MoveL ficha_approach_11,v200,z100,chupa\WObj:=Estante;
        MoveL ficha_approach_gen_10,v200,z100,chupa\WObj:=Estante;
    ENDPROC
    
    
    PROC get_ficha_2()
        MoveL ficha_approach_gen_10,v200,z100,chupa\WObj:=Estante;
        MoveL ficha_approach_21,v200,z100,chupa\WObj:=Estante;
        MoveL ficha_approach_20,v200,z100,chupa\WObj:=Estante;
        
        SET DO_02;
        RESET DO_01;
        TPWrite("valvula activada: recogiendo ficha 2");
        IF num_fichas_2 = 3 THEN
            MoveL ficha_23,v50,z100,chupa\WObj:=Estante;
        ELSEIF num_fichas_2 = 2 THEN
            MoveL ficha_22,v50,z100,chupa\WObj:=Estante;
        ELSEIF num_fichas_2 = 1 THEN
            MoveL ficha_21,v50,z100,chupa\WObj:=Estante;
        ELSEIF num_fichas_2 <= 0 THEN 
            TPWrite("no hay fichas 2 por favor llenar stock");
        ENDIF
        num_fichas_2 := num_fichas_2-1;
        RESET DO_02;
        
        WaitTime(3);
        
        MoveL ficha_approach_20,v200,z100,chupa\WObj:=Estante;
        MoveL ficha_approach_21,v200,z100,chupa\WObj:=Estante;
        MoveL ficha_approach_gen_10,v200,z100,chupa\WObj:=Estante;
    ENDPROC
    
    PROC get_ficha_3()
        MoveL ficha_approach_gen_10,v200,z100,chupa\WObj:=Estante;
        MoveL ficha_approach_31,v200,z100,chupa\WObj:=Estante;
        MoveL ficha_approach_30,v200,z100,chupa\WObj:=Estante;
        
        SET DO_02;
        RESET DO_01;        
        TPWrite("valvula activada: recogiendo ficha 3");
        IF num_fichas_3 = 3 THEN
            MoveL ficha_33,v50,z100,chupa\WObj:=Estante;  
        ELSEIF num_fichas_3 = 2 THEN
            MoveL ficha_32,v50,z100,chupa\WObj:=Estante;
        ELSEIF num_fichas_3 = 1 THEN
            MoveL ficha_31,v50,z100,chupa\WObj:=Estante;
        ELSEIF num_fichas_3 <= 0 THEN 
            TPWrite("no hay fichas 2 por favor llenar stock");
        ENDIF
        num_fichas_3 := num_fichas_3-1;
        RESET DO_02;
        
        WaitTime(3);
        MoveL ficha_approach_30,v200,z100,chupa\WObj:=Estante;
        MoveL ficha_approach_31,v200,z100,chupa\WObj:=Estante;
        MoveL ficha_approach_gen_10,v200,z100,chupa\WObj:=Estante;
    ENDPROC
    
    PROC get_ficha_4()
        MoveL ficha_approach_gen_10,v200,z100,chupa\WObj:=Estante;
        MoveL ficha_approach_41,v200,z100,chupa\WObj:=Estante;
        MoveL ficha_approach_40,v200,z100,chupa\WObj:=Estante;
        
        SET DO_02;
        RESET DO_01;
        TPWrite("valvula activada: recogiendo ficha 4");
        IF num_fichas_4 = 3 THEN
            MoveL ficha_43,v50,z100,chupa\WObj:=Estante;
        ELSEIF num_fichas_4 = 2 THEN
            MoveL ficha_42,v50,z100,chupa\WObj:=Estante;
        ELSEIF num_fichas_4 = 1 THEN
            MoveL ficha_41,v50,z100,chupa\WObj:=Estante;
        ELSEIF num_fichas_4 <= 0 THEN 
            TPWrite("no hay fichas 4 por favor llenar stock");
        ENDIF
        num_fichas_4 := num_fichas_4-1;
        RESET DO_02;
        WaitTime(3);
        
        MoveL ficha_approach_40,v200,z100,chupa\WObj:=Estante;
        MoveL ficha_approach_41,v200,z100,chupa\WObj:=Estante;
        MoveL ficha_approach_gen_10,v200,z100,chupa\WObj:=Estante;
    ENDPROC
	
	 PROC get_ficha_5()
        MoveL ficha_approach_gen_10,v200,z100,chupa\WObj:=Estante;
        MoveL ficha_approach_51,v200,z100,chupa\WObj:=Estante;
        MoveL ficha_approach_50,v200,z100,chupa\WObj:=Estante;
        
        SET DO_02;
        RESET DO_01;
        TPWrite("valvula activada: recogiendo ficha 5");
        IF num_fichas_5 = 3 THEN
            MoveL ficha_53,v50,z100,chupa\WObj:=Estante;      
        ELSEIF num_fichas_5 = 2 THEN
            MoveL ficha_52,v50,z100,chupa\WObj:=Estante;
        ELSEIF num_fichas_5 = 1 THEN
            MoveL ficha_51,v50,z100,chupa\WObj:=Estante;
        ELSEIF num_fichas_5 <= 0 THEN 
            TPWrite("no hay fichas 5 por favor llenar stock");
        ENDIF 
        num_fichas_5 := num_fichas_5-1;
        RESET DO_02;
        
        WaitTime(3);
        MoveL ficha_approach_50,v200,z100,chupa\WObj:=Estante;
        MoveL ficha_approach_51,v200,z100,chupa\WObj:=Estante;
        MoveL ficha_approach_gen_10,v200,z100,chupa\WObj:=Estante;
    ENDPROC
	
	 PROC get_ficha_6()
        MoveL ficha_approach_gen_10,v200,z100,chupa\WObj:=Estante;
        MoveL ficha_approach_61,v200,z100,chupa\WObj:=Estante;
        MoveL ficha_approach_60,v200,z100,chupa\WObj:=Estante;
        
        SET DO_02;           
        RESET DO_01;
        TPWrite("valvula activada: recogiendo ficha 6");
        IF num_fichas_6 = 3 THEN
            MoveL ficha_63,v50,z100,chupa\WObj:=Estante; 
        ELSEIF num_fichas_6 = 2 THEN
            MoveL ficha_62,v50,z100,chupa\WObj:=Estante;
        ELSEIF num_fichas_6 = 1 THEN
            MoveL ficha_61,v50,z100,chupa\WObj:=Estante;
        ELSEIF num_fichas_6 <= 0 THEN 
            TPWrite("no hay fichas 6 por favor llenar stock");
        ENDIF
        
        num_fichas_6 := num_fichas_6-1;
        RESET DO_02;
        WaitTime(3);
        
        MoveL ficha_approach_60,v200,z100,chupa\WObj:=Estante;
        MoveL ficha_approach_61,v200,z100,chupa\WObj:=Estante;
        MoveL ficha_approach_gen_10,v200,z100,chupa\WObj:=Estante;
    ENDPROC
    PROC fichas1()

    ENDPROC
    
    PROC Estante_calib()
        MoveL Estante_calib_10,v200,z100,chupa\WObj:=Estante;
        MoveL Estante_calib_20,v50,z100,chupa\WObj:=Estante;  
        MoveL Estante_calib_30,v50,z100,chupa\WObj:=Estante;
        MoveL Estante_calib_40,v50,z100,chupa\WObj:=Estante;
    
        WaitTime 5;
        MoveL Estante_calib_30,v50,z100,chupa\WObj:=Estante;
        MoveL Estante_calib_20,v50,z100,chupa\WObj:=Estante;  
        MoveL Estante_calib_10,v50,z100,chupa\WObj:=Estante;
        WaitTime 3;
    
    ENDPROC
    
    PROC Banda_calib()
        MoveL Banda_calib_10,v200,z100,gancho\WObj:=Banda_Tr;
        WaitTime 5;
        MoveL Banda_calib_20,v50,z100,gancho\WObj:=Banda_Tr;
        
        WaitTime 3;
       
        
    ENDPROC
    
    PROC Valde_calib()
        MoveL Valde_calib_10,v200,z100,gancho\WObj:=valde_en_suelo;
        WaitTime 3;
        MoveL Valde_calib_20,v50,z100,gancho\WObj:=valde_en_suelo;
        WaitTime 3;
    ENDPROC
    
    PROC calib()
        Valde_calib;
        
        Banda_calib;
        
        Estante_calib;
        
    ENDPROC

    PROC Path_40()
        MoveL esquinaSuperior,v1000,z100,gancho\WObj:=Estante;
    ENDPROC
   
    
ENDMODULE