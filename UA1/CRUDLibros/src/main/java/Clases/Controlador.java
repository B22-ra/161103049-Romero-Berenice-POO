package Clases;
/**
 * @author bere
 */
import java.sql.ResultSet;
public class Controlador extends Conexion{
    public Controlador(){}
    public ResultSet DevolverRegistro(String sql){
        try{
            this.st=this.Conectarjspmysql().createStatement();
            this.rs=this.st.executeQuery(sql);
        }catch(Exception e){
        }
        return this.rs;
    }
}
