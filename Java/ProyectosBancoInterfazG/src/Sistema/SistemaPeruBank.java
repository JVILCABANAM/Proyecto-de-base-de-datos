
package Sistema;
import javax.swing.JOptionPane;

public class SistemaPeruBank {
    //------[ Variables lovales ] ------]//
    public static double SaldoActual;
    //-----------------------------------//
    
    //[Constructor]
    public SistemaPeruBank(){
    SaldoActual = 0;
    
    }
    
    // [Metodos]
    
    public void Depositar(double Deposito){
    SaldoActual += Deposito;
    
    }
    public void Retirar(double Retiro){
    if(SaldoActual >= Retiro){
    SaldoActual -= Retiro;
    }
    else{
       JOptionPane.showMessageDialog(null, "[Error] -Saldo insuficiente-");
    }
    }
    public double ObtenerSaldo(){
    return SaldoActual;
    }
}
