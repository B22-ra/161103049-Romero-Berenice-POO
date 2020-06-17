/**
 *
 * @author bere
 */
public class Excepciones {
    public static void main(String args[]){
        int numerador=20;
        Integer denominador=2;
        float division= 0;
        
        System.out.println("Antes de la division: ");
        try{
        division= numerador/denominador;
        }catch(ArithmeticException e){
            System.out.println(e.getMessage());
            division=0;
        }catch(NullPointerException e){
            System.out.println(e.getMessage());
        }
        System.out.println(division);
        System.out.println("Despues de la division: ");
        
    }
}
