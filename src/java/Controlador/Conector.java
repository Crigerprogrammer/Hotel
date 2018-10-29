/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.Statement;

/**
 *
 * @author programadorac
 */
public class Conector {

    Connection c1 = null;
    //usuario, IP, password y Base de Datos
    //son propiedades, hay que generar sus geter y seters
    String comilla = "'";
    private String usuario = "root";
    private String IP = "localhost";
    private String password = "";
    private String BaseDatos = "hotel";

    protected void conectar() {
        try {
            //encontrar la clase
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            //realizar la conexion
            c1 = DriverManager.getConnection("jdbc:mysql://" + IP + "/" + BaseDatos, usuario, password);
            System.out.println("Conexion Exitosa");
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }

    protected void desconectar() {
        try {
            c1.close();
        } catch (Exception e) {
        }
    }

    public void consulta_vacia(String SQL) {
        //aqui va a realizar la inserccion, modificacion o eliminacion
        //todas aquellas instrucciones que no devuelven ningun valor
        this.conectar();
        try {
            Statement st = c1.createStatement();
            st.executeUpdate(SQL);
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        this.desconectar();
    }

    public String[][] consulta_registros(String SQL) {
        ResultSet registros = null;//ResultSet es el conjunto de registros
        String[][] datos = new String[1][1];
        datos[0][0] = "Sin Resultados";
        int filas = 0;
        int columnas = 0; //es lo que vamos a enviar al JTable
        ResultSetMetaData metaDatos;
        this.conectar();
        //esta parte realiza la conexion y hace la consulta
        //cargando los datos en la variable registros
        try {
            Statement st = c1.createStatement();//Statement es una declaracion
            registros = st.executeQuery(SQL);// executeQuery significa ejecutar CD
            metaDatos = registros.getMetaData();//datos sobre los registros 
            //para contar cuantas columnas tiene la consulta
            columnas = metaDatos.getColumnCount();
            //para contar cuantas filas tiene la consulta
            registros.last();//con esto nos posicionamos en la ultima fila
            filas = registros.getRow();//obtego el numero de filas
            registros.beforeFirst();//me posiciono al inicio
            datos = new String[filas][columnas];
            int j = 0;
            while (registros.next()) {
                for (int i = 0; i < columnas; i++) {//el error era el i <=columnas se cambio
                    datos[j][i] = registros.getString(i + 1);
                }
                j++;
            }
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
//debemos convertir registros a un array para que tenga
// compatibilidad con la JTable
//debemos averiguar cuantas filas y cuantas columnas
//vienen como resultado de la consulta
        this.desconectar();
        return datos;

    }

    public int insercion_AI(String SQL) {
        int resultado = 0;
        this.conectar();
        ResultSet pkAI = null;
        try {
            Statement st = c1.createStatement();
            st.executeUpdate(SQL,Statement.RETURN_GENERATED_KEYS);
            //para la llave primaria que se va a generar
            pkAI = st.getGeneratedKeys();
            if (pkAI.next()) {
                resultado = pkAI.getInt(1);
            }
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }

        this.desconectar();
        return resultado;
    }

}
