package Controller;


import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

public class Vagone {
    
    private ArrayList<Posto> posti;
    private Tipologia  tipo;
    private int numeroposti;
    private int numvagone;

    public Vagone(Tipologia tipo,int numeroposti) {
        this.posti = new ArrayList();
        this.tipo = tipo;
        this.numeroposti=numeroposti;
        this.numvagone=0;
                
       
    
    }

    public int getNumvagone() {
        return numvagone;
    }

    public void setNumvagone(int numvagone) {
        this.numvagone = numvagone;
    }
    
    

    public ArrayList<Posto> getPosti() {
        return posti;
    }

    public Tipologia getTipo() {
        return tipo;
    }

    public int getNumeroposti() {
        return numeroposti;
    }
    
    
    
    public void denominazioneposti(int num){
        
        int i;
        
        
            for(i=num+1;i<=num+numeroposti;i++){
                
                if(tipo==Tipologia.PRIMA_CUCCETTA){
                    posti.add(new Posto(i+"B"));
                }
                if(tipo==Tipologia.PRIMA_STANDARD){
                    posti.add(new Posto(i+"A"));
                }
                 if(tipo==Tipologia.SECONDA_CUCETTA){
                    posti.add(new Posto(i+"D"));
                }
                 if(tipo==Tipologia.SECONDA_STANDARD){
                    posti.add(new Posto(i+"C"));
                }
            
        
            }
    }
    
}