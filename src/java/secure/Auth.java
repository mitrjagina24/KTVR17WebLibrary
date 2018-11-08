/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package secure;

import entity.Reader;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import session.ReaderFacade;

/**
 *
 * @author jvm
 */
class Auth {
    private ReaderFacade readerFacade;
    public Auth(){
        
        try {
            Context context;
            context= new InitialContext();
            readerFacade = (ReaderFacade) context.lookup("java:module/ReaderFacade");
            
        } catch (NamingException ex) {
            Logger.getLogger(Auth.class.getName()).log(Level.SEVERE, "Не наден бин", ex);
        }
    }
    public Reader isEnter(String login,String password){
        Reader reader = readerFacade.findByLogin(login);
        if(reader == null)return null;
        if(!password.equals(reader.getPassword()))return null;
        return reader;
    }
    
}
