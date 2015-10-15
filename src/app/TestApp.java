package app;

import clases.Usuario;
import java.util.ArrayList;

/**
 *
 * @author programadorbipolar
 */
public class TestApp {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        ArrayList<Usuario> usuarios = Usuario.getUsuarios();
        for(Usuario us : usuarios )
        {
            System.out.println(us.getUsuario());
        }
    }
    
}
