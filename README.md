# Proyecto final 
Este proyecto consiste en la creación de una desarrollo de una rutina de pick and place que permita la integración de todos los aspectos necesarios para crear una rutina de trabajo de una celda robotica.


## Objetivo
Definir una rutina que consta de 3 partes:

- _Proceso de alistamiento:_ Se debe tomar el contenedor (balde) del extremo de la banda transportadora y
ubicarlo en un lugar de alistamiento. 

- _Toma de piezas:_ Se deben tomar 3 piezas distintas de la estantería de madera y ubicarlas
en el balde. La estantería de madera tiene 6 posiciones (A,B,C,D,E,F), se deben ubicar
3 unidades de piezas en cada posición de la estantería.

- _Retorno de pedido:_ El pedido listo (balde+piezas) debe ser ubicado de regreso sobre la banda transportadora.

Para la rutina es necesario que la manipulación del valde se realice utilizando un gancho, mientras que la recolección de las piezas se realiza utilzando una ventosa accionada por electrovalvulas, ambos elementos proporcionados en el laboratorio.

## Herramienta
Dado los requerimientos de manejo de elementos distintos para la rutina de pick and place es necesario el diseño de una herramienta de doble proposito con dos TCPs(Tool Center Point) distintos uno para la bentosa y otro para el gancho.


La herramienta fue exportada como libreria de robot estudio para facilidad de uso. Esta puede encontrarse  en la carpeta [lib](./lib) de repositori.

## Rutina 
Para el desarrollo en codigo RAPID de se tuvo en cuenta las partes antes mencinada de las que se compone la rutina y se descompuso en procesos indenpendientes importante que cada proceso arrancara y finalizara en punto seguro apartir del cual se pudiera ejecurtar cualquier otro proceso.

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

## Video 

## Conclusiones 
- El manejo de la herramienta de tipo gancho asi como la manija del valde, dificultan el proceso de diseño de rutina, dado que al no existir una conexión rigida no se pueda determinar la ubicación  del objeto a partir de la posición del efector final. 
- El movimiento relativo entre efector final y objeto de trabajo (causado por la falta de una conexión rigida) afecta la repetibilidad. Al existir variación en la posición en la que puede ubicarse el contenedor (valde) enfatiza la necesidad de generar una solución robusta que funcione bajo un margen de incertidumbre elevado respecto a posición del valde.
- Se debe diseñar la rutina para disminuir la dinamica de movimiento lo más posible sin embargo esto entra en conflicto con el objetivo de intentar reducir lo más posible el tiempo de ejecución. Por tanto es necesario balance de estos dos objetivos en el diseño de la rutina de trabajo. 

## Contributors
- [Juan Sebastian Duenas](https://github.com/jsduenass) (jsduenass@unal.edu.co)
- [German Andres Urbina Gutierrez](https://github.com/gurbinaUn)  (gurbina@unal.edu.co)
- [Brayan Daniel Barrera Galvis](https://github.com/brayandan) (bdbarrerag@unal.edu.co)

## Referencias

<!---
!PERS tooldata chupa_reflected:=[TRUE,[[74.07,62.084,306.409],[0.923879533,0.382683432,0,0]],[1,[0,0,1],[1,0,0,0],0,0,0]];
    !PERS tooldata gancho_reflected:=[TRUE,[[-88.879,9.998,167.25],[0.5,-0.5,-0.5,0.5]],[1,[0,0,1],[1,0,0,0],0,0,0]];
-->
