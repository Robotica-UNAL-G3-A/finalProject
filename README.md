# Proyecto final 
Este proyecto consiste en la creación de una desarrollo de una rutina de pick and place que permita la integración de todos los aspectos necesarios para crear una rutina de trabajo de una celda robotica.


## Objetivo
Definir una rutina que consta de 3 partes:

- __Proceso de alistamiento:__ Se debe tomar el contenedor (balde) del extremo de la banda transportadora y
ubicarlo en un lugar de alistamiento.

- __Toma de piezas:__ Se deben tomar 3 piezas distintas de la estantería de madera y ubicarlas
en el balde. La estantería de madera tiene 6 posiciones (A,B,C,D,E,F), se deben ubicar
3 unidades de piezas en cada posición de la estantería.

- __Retorno de pedido:__ El pedido listo (balde+piezas) debe ser ubicado de regreso sobre la banda transportadora.

Para la rutina es necesario que la manipulación del valde se realice utilizando un gancho, mientras que la recolección de las piezas se realiza utilizando una ventosa accionada por electrovalvulas, ambos elementos proporcionados en el laboratorio.

## Herramienta
Dado los requerimientos de manejo de elementos distintos para la rutina de pick and place es necesario el diseño de una herramienta de doble proposito con dos TCPs(Tool Center Point) distintos uno para la ventosa y otro para el gancho.

![image](https://github.com/Robotica-UNAL-G3-A/finalProject/assets/25491198/5fa46667-7ed7-45dc-9aed-f60f4a1094c3)

La herramienta fue exportada como libreria de robot estudio para facilidad de uso. Esta puede encontrarse  en la carpeta [lib](./lib) de repositorio.


## Piezas
Las piezas fueron fabricadas utilizando MDF, se dejo una zona de agarre cuadrada para ser sujetada por la ventosa y se seleccionaron figuras de animales para distiguir entre cada una de las piezas.  
![image](https://github.com/Robotica-UNAL-G3-A/finalProject/assets/25491198/0676eac0-e057-4f5e-995b-fc2f59bb395e)


## Rutina 
Para el desarrollo en codigo RAPID de se tuvo en cuenta secciones las antes mencinadas de las que se compone la rutina, y se descompuso en procesos indenpendientes, siendo importante que cada proceso arrancara y finalizara en punto seguro apartir del cual se pudiera ejecutar cualquier otro proceso.

```
PROC get_valde()
! take the container and place it at the point
ENDPROC

PROC return_valde()
! return container to conveyor belt
ENDPROC

PROC get_ficha()
! grab piece from shelve
ENDPROC

put_valde()
! put piece in valde
ENDPROC
```
## Definición de workobjects
Para la realización de trayectorias de movimiento se definio 3 workobjcts correspondintes a la estanteria, al valde ubicado en la banda y al valde ubicado en el punto de alistamiento.

```
    TASK PERS wobjdata Estante:=[FALSE,TRUE,"",[[200,-400,34],[1,0,0,0]],[[0,0,0],[1,0,0,0]]];
    TASK PERS wobjdata Banda_Tr:=[FALSE,TRUE,"",[[250,600,260],[1,0,0,0]],[[0,0,0],[1,0,0,0]]];
    TASK PERS wobjdata valde_en_suelo:=[FALSE,TRUE,"",[[739.904,-27.626,32],[1,0,0,0]],[[0,0,0],[1,0,0,0]]];
```    
### Definición de variables
El siguiente fragmento de codigo muestra la inizialización de variables utilizadas para la rutina.

```
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
    VAR num ROUTINES{4,3}:=[[2,4,2],[4,5,1],[1,3,5],[2,6,1]]; 
```
### Toma de pieza 
Dentro del proceso `get_ficha()` se implemento la logica para definir que ficha recoger utilizando  la variable `selected_ficha`, la cual establece que proceso se realizara basado en un número de 1 a 6 representando cada una de las posiciones del estante.
```
PROC get_ficha()
    ! grab piece from shelve
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
```

Dentro de cada uno de estos procesos `get_ficha_n()` esta la rutina de movimiento asi como la activación y desactivación de las entradas digitales que accionan las electrovalvulas que controlaran el accionamiento de la ventosa. Igualmente se implementa la logica donde se ajusta la ubicación, especificamente la altura, de la ficha dependiendo de cuantas fichas quedan en la pila.

```
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
```

### Selección de pieza por usuario
Al usuario se le da la opción de seleccionar entre 4 rutinas de movimiento a traves del ingreso de un número de 1 a 4 con el cual se seleccionara uno de los arreglos de la variable `ROUTINES{4,3}:=[[2,4,2],[4,5,1],[1,3,5],[2,6,1]];`. Cada uno de estos tiene establecido una combinación de fichas que se pasara a `choose_fichas` para ser tomadas durante la rutina. igualmente se activa la señal digital `DO_03`al inicio del proceso y se apaga al finalizar para señalar la ejecución de la rutina. Esta señal digital esta conectada a una luz indicadora que iluminara mientras que se ejecute la rutina.

```
    TPReadNum   user_option, "Select routine"; 
    FOR k FROM 1 TO 3 DO
        choose_fichas{k}:=ROUTINES{user_option,k}; 
    ENDFOR 
        
    ! turn on routine light
    Set DO_03;
    
    get_valde;
            
    FOR k FROM 1 TO 3 DO
        selected_ficha := choose_fichas{k};    
        get_ficha;          
    ENDFOR
    
    return_valde;
    HomeP;
    
    ! turn off routine light
    RESET DO_03;
```

Para más detalle el código fuente puede encontrarse en la carpeta [RAPID](./RAPID/) y una versión pack and go del proyecto de RobotStudio puede encontrarse en el [release](https://github.com/Robotica-UNAL-G3-A/finalProject/releases/tag/v.beta) del repo.

## Video 

## Conclusiones 
- El manejo de la herramienta de tipo gancho asi como la manija del valde, dificultan el proceso de diseño de rutina, dado que al no existir una conexión rigida no se pueda determinar la ubicación  del objeto a partir de la posición del efector final. 
- El movimiento relativo entre efector final y objeto de trabajo (causado por la falta de una conexión rigida) afecta la repetibilidad. Al existir variación en la posición en la que puede ubicarse el contenedor (valde) enfatiza la necesidad de generar una solución robusta que funcione bajo un margen de incertidumbre elevado respecto a posición del valde.
- Se debe diseñar la rutina para disminuir la dinamica de movimiento lo más posible sin embargo esto entra en conflicto con el objetivo de intentar reducir lo más posible el tiempo de ejecución. Por tanto es necesario balance de estos dos objetivos en el diseño de la rutina de trabajo.
- El ambiente de simulación de robotStudio es una excelente herramienta para no realiza alertas como por ejemplo el acercamiento a puntos de singularidad. Notificaciones que de haber aparecido al momento de diseñar la rutina hubiera impulzado a realizar la  busqueda de una trayectoria diferente.
- La presencia de estas alertas impactaron el desempeño de la puesta en practica de la rutina y esto evidencia la discrepancia entre los tiempos obtenidos durante la simulación y las pruebas con el robot.
- De cara a evitar singularidades es importante evitar en la mayor medida trayectorias que impliquen desplazamientos lineales que produzcan movimientos considerables en las articulaciones, y para esto se debe hacer una correcta planeación que va desde la disposición y orientación de cada uno de los elementos a ensamblar hasta la misma ubicación de las estaciones de trabajo.

## Contributors
- [Juan Sebastian Duenas](https://github.com/jsduenass) (jsduenass@unal.edu.co)
- [German Andres Urbina Gutierrez](https://github.com/gurbinaUn)  (gurbina@unal.edu.co)
- [Brayan Daniel Barrera Galvis](https://github.com/brayandan) (bdbarrerag@unal.edu.co)
- [Paula Sofía Medina Diaz](https://github.com/psmedinadi22) (psmedinadi@unal.edu.co)

## Referencias

<!---
!PERS tooldata chupa_reflected:=[TRUE,[[74.07,62.084,306.409],[0.923879533,0.382683432,0,0]],[1,[0,0,1],[1,0,0,0],0,0,0]];
    !PERS tooldata gancho_reflected:=[TRUE,[[-88.879,9.998,167.25],[0.5,-0.5,-0.5,0.5]],[1,[0,0,1],[1,0,0,0],0,0,0]];
-->
