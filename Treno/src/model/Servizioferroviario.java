package model;

/**
 * classe che rappresenta l'intero sistema ferroviario 
 * @author laurence
 */

import java.text.SimpleDateFormat;

import java.util.ArrayList;
import java.util.Iterator;


public class Servizioferroviario {
    
    private ArrayList<Compagnia> compagnie;
    private ArrayList<Itinerario> itinerari;
    private ArrayList<Viaggio> viaggicorr=new ArrayList();
    private ArrayList<Viaggio> viaggip=new ArrayList();
    private ArrayList<Viaggio> viaggia=new ArrayList();
    private String stazioneincroccio;
    private Itinerario i1;
    private Itinerario i2;
    private Viaggio v1;
    private Viaggio v2;
    private ArrayList<String> posti;
    

  

   
    public Servizioferroviario() {
        
        this.compagnie=new ArrayList<Compagnia>();
        this.itinerari=new ArrayList<Itinerario>();
        this.posti=new ArrayList<String>();
        this.stazioneincroccio=null;
        this.i1=null;
        this.i2=null;
        this.v1=null;
        this.v2=null;
    

    }

    public ArrayList<String> getPosti() {
        return posti;
    }

    public String getStazioneincroccio() {
        return stazioneincroccio;
    }

    
                       
            
    public ArrayList<Compagnia> getCompagnie() {
        return compagnie;
    }

    public ArrayList<Itinerario> getItinerari() {
        return itinerari;
    }

    public void setCompagnie(ArrayList<Compagnia> compagnie) {
        this.compagnie = compagnie;
    }

    public void setItinerari(ArrayList<Itinerario> itinerari) {
        this.itinerari = itinerari;
    }

    public Viaggio getV1() {
        return v1;
    }

    public Viaggio getV2() {
        return v2;
    }
    
    
    
    public ArrayList<Viaggio> getViaggicorr() {
		return viaggicorr;
	}

	

	/**
	 * metodo che ricerca in tutte le compagnia del sistema  delle soluzioni di viaggio
	 * @param p prenotazione che si desidera effettuare
	 * @return ritorna le descrizioni delle soluzioni di viaggio ritrovate
	 */
	public String[] checktreno(Prenotazione p){
        
        int i,j,k,l,m,b1=0,b2=0;
        ArrayList<Viaggio> viaggi1=new ArrayList();
        ArrayList<Viaggio> viaggi2=new ArrayList();
        
        SimpleDateFormat str=new SimpleDateFormat("HH:mm");
        
        viaggicorr.clear();
        viaggip.clear();
        viaggia.clear();
        stazioneincroccio=null;
        
        
        for(i=0;i<itinerari.size();i++){
            
            b1=itinerari.get(i).controllostazione(p.getStazionepartenza());
            b2=itinerari.get(i).controllostazione(p.getStazionearrivo());
            if(b1!=0 && b2!=0){
            	break;
            }
        
        }   
            
        if(b1!=0 && b2!=0){
        	
        	i1=itinerari.get(i);
        	for(j=0;j<compagnie.size();j++){
                    
        		viaggicorr.addAll(compagnie.get(j).checkviaggi(i1,i1.checkmodalita(p.getStazionepartenza(),p.getStazionearrivo()), p.getDatapartenza()));
                
            }
               
            String[] viag=new String[viaggicorr.size()];
            for(j=0;j<viaggicorr.size();j++){
                 if(itinerari.get(i).checkmodalita(p.getStazionepartenza(),p.getStazionearrivo())==Modalita.DIRETTA){
                	 viaggicorr.get(j).getData().setMinutes(viaggicorr.get(j).getData().getMinutes()+i1.calcolodurata(i1.getTratte().get(1).getStazione1(),p.getStazionepartenza()));
                     viag[j]=(p.getStazionepartenza()+"/"+p.getStazionearrivo()+"/"+str.format(viaggicorr.get(j).getData())+" - ");
                     viaggicorr.get(j).getData().setMinutes(viaggicorr.get(j).getData().getMinutes()+i1.calcolodurata(p.getStazionepartenza(),p.getStazionearrivo()));
                     viag[j]=viag[j].concat(str.format(viaggicorr.get(j).getData())+"/"+viaggicorr.get(j).getCodviaggio().split("-")[0]);
                     viaggicorr.get(j).getData().setMinutes(viaggicorr.get(j).getData().getMinutes()-i1.calcolodurata(i1.getTratte().get(1).getStazione1(),p.getStazionearrivo()));
                        
                 }
                 else{
                     viaggicorr.get(j).getData().setMinutes(viaggicorr.get(j).getData().getMinutes()+i1.calcolodurata(i1.getTratte().get(i1.getTratte().size()).getStazione2(),p.getStazionepartenza()));
                     viag[j]=(p.getStazionepartenza()+"/"+p.getStazionearrivo()+"/"+str.format(viaggicorr.get(j).getData())+" - ");
                     viaggicorr.get(j).getData().setMinutes(viaggicorr.get(j).getData().getMinutes()+i1.calcolodurata(p.getStazionepartenza(),p.getStazionearrivo()));
                     viag[j]=viag[j].concat(str.format(viaggicorr.get(j).getData())+"/"+viaggicorr.get(j).getCodviaggio().split("-")[0]);
                     viaggicorr.get(j).getData().setMinutes(viaggicorr.get(j).getData().getMinutes()-i1.calcolodurata(i1.getTratte().get(i1.getTratte().size()).getStazione2(),p.getStazionearrivo()));
                 }
             }
             return viag;
        
            }
            if(b1==0 || b2==0){
            
                for(i=0;i<itinerari.size();i++){
                    
                    b1=itinerari.get(i).controllostazione(p.getStazionepartenza());
                    if(b1!=0){
                    	break;
                    }
                
                }  
                i1=itinerari.get(i);
       
                for(i=0;i<itinerari.size();i++){
                    
           
                    b2=itinerari.get(i).controllostazione(p.getStazionearrivo());
                    if(b2!=0){
                    	break;
                    }
                
                }  
                i2=itinerari.get(i);
                
                for(i=1;i<=i2.getTratte().size();i++){
                    if(i1.controllostazione(i2.getTratte().get(i).getStazione1())!=0){
                        stazioneincroccio=i2.getTratte().get(i).getStazione1();
                        break;
                    }
                }  
               
                   
     
                for(l=0;l<compagnie.size();l++){
                	viaggi1.addAll(compagnie.get(l).checkviaggi(i1,i1.checkmodalita(p.getStazionepartenza(), stazioneincroccio), p.getDatapartenza()));
                    viaggi2.addAll(compagnie.get(l).checkviaggi(i2,i2.checkmodalita(stazioneincroccio,p.getStazionearrivo()), p.getDatapartenza()));
                }
                
                String[] viag=new String[viaggi1.size()];
 
                for(l=0;l<viaggi1.size();l++){
                	if(i1.checkmodalita(p.getStazionepartenza(), stazioneincroccio)==Modalita.DIRETTA){
                		viaggi1.get(l).getData().setMinutes(viaggi1.get(l).getData().getMinutes()+i1.calcolodurata(i1.getTratte().get(1).getStazione1(), stazioneincroccio));
                     }
                     if(i1.checkmodalita(p.getStazionepartenza(), stazioneincroccio)==Modalita.INVERSA){
                        viaggi1.get(l).getData().setMinutes(viaggi1.get(l).getData().getMinutes()+i1.calcolodurata(i1.getTratte().get(i1.getTratte().size()).getStazione2(), stazioneincroccio));
                      }
                
                     for(m=0;m<viaggi2.size();m++){
                    	 if(viaggi1.get(l).getTreno().getCodice().split("-")[0].equals(viaggi2.get(m).getTreno().getCodice().split("-")[0])){
                    		 if(i2.checkmodalita( stazioneincroccio,p.getStazionearrivo())==Modalita.DIRETTA){
                    			 viaggi2.get(m).getData().setMinutes(viaggi2.get(m).getData().getMinutes()+i2.calcolodurata(i2.getTratte().get(1).getStazione1(), stazioneincroccio));           
                    		 }
                    		 if(i2.checkmodalita(stazioneincroccio,p.getStazionearrivo())==Modalita.INVERSA){
                    			 viaggi2.get(m).getData().setMinutes(viaggi2.get(m).getData().getMinutes()+i2.calcolodurata(i2.getTratte().get(i2.getTratte().size()).getStazione2(), stazioneincroccio));
                    		 }    
                    		
                    		
                    		 if(viaggi1.get(l).getData().before(viaggi2.get(m).getData())){
                    			 
                    			 viaggi1.get(l).getData().setMinutes(viaggi1.get(l).getData().getMinutes()-i1.calcolodurata(p.getStazionepartenza(), stazioneincroccio));
                    			 
                    			 viag[l]=(p.getStazionepartenza()+"/"+stazioneincroccio+"/"+str.format(viaggi1.get(l).getData())+"-");
                    			
                    			 viaggi1.get(l).getData().setMinutes(viaggi1.get(l).getData().getMinutes()+i1.calcolodurata(p.getStazionepartenza(), stazioneincroccio));
                    			 viag[l]=viag[l].concat(str.format(viaggi1.get(l).getData()));
                    			 
                    			 if(i1.checkmodalita(p.getStazionepartenza(), stazioneincroccio)==Modalita.DIRETTA){
                             		viaggi1.get(l).getData().setMinutes(viaggi1.get(l).getData().getMinutes()-i1.calcolodurata(i1.getTratte().get(1).getStazione1(), stazioneincroccio));
                                  }
                                  if(i1.checkmodalita(p.getStazionepartenza(), stazioneincroccio)==Modalita.INVERSA){
                                     viaggi1.get(l).getData().setMinutes(viaggi1.get(l).getData().getMinutes()-i1.calcolodurata(i1.getTratte().get(i1.getTratte().size()).getStazione2(), stazioneincroccio));
                                  }
                                
                                 viag[l]=viag[l].concat("/"+stazioneincroccio+"/"+p.getStazionearrivo()+"/"+str.format(viaggi2.get(m).getData())+"-");
                                
                                 viaggi2.get(m).getData().setMinutes(viaggi2.get(m).getData().getMinutes()+i2.calcolodurata(stazioneincroccio,p.getStazionearrivo()));
                    			 viag[l]=viag[l].concat(str.format(viaggi2.get(m).getData())+"/"+viaggi2.get(m).getCodviaggio().split("-")[0]);
                    			 
                    			 if(i2.checkmodalita( stazioneincroccio,p.getStazionearrivo())==Modalita.DIRETTA){
                        			 viaggi2.get(m).getData().setMinutes(viaggi2.get(m).getData().getMinutes()-i2.calcolodurata(i2.getTratte().get(1).getStazione1(),p.getStazionearrivo()));           
                        		 }
                        		 if(i2.checkmodalita(stazioneincroccio,p.getStazionearrivo())==Modalita.INVERSA){
                        			 viaggi2.get(m).getData().setMinutes(viaggi2.get(m).getData().getMinutes()-i2.calcolodurata(i2.getTratte().get(i2.getTratte().size()).getStazione2(),p.getStazionearrivo()));
                        		 } 
                        		
                    			 viaggip.add(viaggi1.get(l));
                    			 viaggia.add(viaggi2.get(m));
                    			 break;
                                    
                    		 }
                                          
                    	 }
                                    
                     }
                }
                return viag;
                        
                        
                    
                    
                
                
            }
       
        
        return null;
    }
    
    /**
     * metodo che calcola il prezzo di un posto per diverse classi
     * @param num del viaggio selezionato all'interno delle soluzioni di viaggio
     * @param p stazione partenza
     * @param a stazione arrivo
     * @return ritorna per ogni classe il prezzo del posto fissato dalla compagnia che offre il viaggio
     */
    public String[] stampaprezzi(int num,String p,String a){
    
        v1=null;
        v2=null;
        int i,j=1;
        double d;
        Compagnia c=null;
        String[] prezzi=new String[Tipologia.values().length];
        
        if(viaggip.isEmpty() && (num)<=viaggicorr.size()){
            d=viaggicorr.get(num-1).getPercorso().calcololunghezza(p,a);
            v1=viaggicorr.get(num-1);
            
            for(i=0;i<compagnie.size();i++){
                if(compagnie.get(i).getNome().equals(viaggicorr.get(num-1).getCodviaggio().split("-")[0])){
                    c=compagnie.get(i);
                
                }
            }
            for(i=0;i<Tipologia.values().length;i++){
        
                if(c.getPrezzi().size()==Tipologia.values().length)
                    prezzi[i]=(Tipologia.values()[i]+":"+(Math.rint(d*c.getPrezzi().get(Tipologia.values()[i])))+" euros");
                    j++;
            }
        }
        
        if(!(viaggip.isEmpty()) && num<=viaggia.size()){
        
            d=i1.calcololunghezza(p,stazioneincroccio);
            d+=i2.calcololunghezza(stazioneincroccio, a);
            v1=viaggip.get(num-1);
            v2=viaggia.get(num-1);
           
            
            for(i=0;i<compagnie.size();i++){
                if(compagnie.get(i).getNome().equals(viaggia.get(num-1).getCodviaggio().split("-")[0])){
                    c=compagnie.get(i);
                }
            }
            for(i=0;i<Tipologia.values().length;i++){
        
                if(c.getPrezzi().size()==Tipologia.values().length){
                    prezzi[i]=(Tipologia.values()[i]+":"+(Math.rint(d*c.getPrezzi().get(Tipologia.values()[i])))+" euros");
                    j++;
               }
            }
            
        }
        return prezzi;
    }   
    
    
    /**
     * metodo che ritorna l'insieme dei vagoni apparteneti ad una determinata classe nel treno che verr� impiegato in un viaggio
     * @param num indice della classe nell'Array dei valori dell'enum
     * @param v viaggio in cui ricercare i vagoni
     * @return ritorna un ArrayList di vagoni
     */
    public ArrayList<Vagone> visualizzaposti(int num,Viaggio v){
        
        int i,j,k=0;
        ArrayList<Vagone> vag=new ArrayList();
        
            
            for(i=1;i<=v.getTreno().getVagoni().size();i++){
                if(v.getTreno().getVagoni().get(i).getTipo()==Tipologia.values()[num-1]){
                
                    vag.add(v.getTreno().getVagoni().get(i));
                }
            }
        return vag;
    }
            

    /**
     * metodo che permette di risalire alla compagnia che offre un viaggio dato il codice del viaggio.
     * @param cod
     * @return  ritorna l'indice della compagnia nell'arraylist delle compagnie presenti nel sistema ferroviario
     */
    public int returncompagnia(String cod){
        int i;
        for(i=0;i<compagnie.size();i++){
            if(cod.equals(compagnie.get(i).getNome())){
            
                return i;
            }
        
        }
        return -1;
    }
    
    
    
      
}
