package com.company;
import java.util.ArrayList;
import java.util.Scanner;


public class AnagramCheck {


        public static void main(String[] args) {
            // TODO Auto-generated method stub
            String palabra1="";
            String palabra2="";

            Scanner sc=new Scanner(System.in);

            System.out.print("Primera palabra a comparar: ");
            palabra1=sc.nextLine().trim();
            System.out.print("Segunda palabra a comparar: ");
            palabra2=sc.nextLine().trim();


            if (palabra1.length() == palabra2.length()) { // se valida si tienen el mismo tamaño


                for (int i = 0; i < palabra1.length(); i++) {  //recorre el largo de la primera palabra


                    if (!palabra2.contains(String.valueOf(palabra1.charAt(i)))) { //si la segunda palabra no contiene algun caracter de la primera palabra
                        System.out.println("NO es un Anagrama"); //Imprime si no es anagrama
                        return;
                    }
                }

                System.out.println("SI es un Anagrama"); //Imprime si es un anagrama
            } else {
                System.out.println("La longitud de caracteres no es la misma");
            }
        }

}