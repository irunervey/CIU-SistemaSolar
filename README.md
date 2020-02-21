# CIU-SistemaSolar
Practica 3 de CIU.

### Descripcion.
La práctica consiste en crear un sistema solar el cual se mueva utilizando el metodo translate() y rotate().

Para la coloración de los planetas lo he hecho de forma aleatoria mientras que le he puesto un tono gris a los trazos para que se puedan ver mejor tanto los planetas como las lunas.

Para la creaccion de los planetas es necesario pasarle varios parametros. Estos serían:
- El nombre el cual se mostrara encima del planeta.
- size el cual es el tamaño del planeta.
- posi la cual sera la distancia que se encuentra del eje de cordenadas en el eje x.
- increment se el desplazamiento en el eje x que se produce para crear una elipse en la orbita del planeta. En caso de ser muy grande podria producir una orbita extraña.
- velocidad la cual establece la velocdad de traslación del planeta.
- velocidadr la cual establece la velocidad de rotación del planeta.
 Ademas se le podra añadir lunas con el método añadirLuna() a la cual se le tendran que pasar los mismos parametros como si fuera un planeta excepto por el nombre. Hay que tener en cuenta que el eje de cordenadas de las lunas es el planeta.
 
 Se ha implementado un modo de pausa al pulsar la p que tambien es la forma de ponerlo en movimiento de nuevo.


### Herramientas utilizadas.
Para crear el gif que muestro a continuación utilize la herramienta de gif-animation que puedes encontrar en este [enlace](https://github.com/extrapixel/gif-animation)

### Resultado.

![](https://github.com/irunervey/CIU-SistemaSolar/blob/master/Practica3/Data/animation.gif)

Por Iru Nervey Navarro Alejo.
