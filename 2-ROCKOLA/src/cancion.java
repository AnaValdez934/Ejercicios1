
public class cancion extends rockola {
    public String cancion;


    public cancion(String c) {
        super(); //Contructor
        this.cancion = c;

    }

    public String getCancion(){
        return cancion;
    }

    public void setCancion(){
        this.cancion=cancion;
    }
   public String getResultadoCancion(){
        return cancion;
   }


    public void resultado(String c) {

        if (cancion == "amor de tres") {
           System.out.print("Aroma - Amor de tres");


        } else if (cancion == "eres") {
            System.out.print("Cafe tacuva - Eres");


        } else if (cancion == "secreto de amor") {
            System.out.print("Joan Sebastian - Secreto de Amor");


        }else if(cancion == "viernes"){
            System.out.print("DLD - Viernes");

        }else if(cancion == "rosas"){
            System.out.print("La Oreja de Vango - Rosas");

        }else if(cancion == "sabor a mi"){
            System.out.print("Jose Jose - Sabor a Mi");

        }else if(cancion == "La planta"){
            System.out.print("Caos - La planta");

        }else if(cancion == "la flaca"){
            System.out.print("Jarabe de palo - La flaca");

        } else {
           cancion = "No se encontro resultados";

        }




    }

}
