//package clases;
import java.util.Scanner;

import static java.lang.System.*;

public class rockola {
    private static cancion c;
    public String ca="";



    //private Cancion canciones[] = new Cancion[20]; //se crea array clase cancion
    rockola(String c) {


    }

    public rockola() {

    }


    public static void main(String[] args){
        String ca="";
        cancion cancion = new cancion("viernes"); //Cambiar por amor de tres,eres,secreto de amor,viernes,rosas,sabor a mi
        // ,la planta,la flaca,para que salga que no encontro resultados se debe poner un parametro diferente a los anteriores
        cancion.resultado(ca);
        System.out.println("\nResultado: " + cancion.getResultadoCancion());




 }


}//lave de cierre
