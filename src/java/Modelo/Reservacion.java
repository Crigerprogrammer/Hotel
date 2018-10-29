/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

import Controlador.Conector;

    
public class Reservacion extends Conector {
  
    
    public String[][] consultar_IDhotel(){
        String datos[][];
        String query="SELECT id_habitacion, tipo_habitacion FROM habitaciones";
        datos=this.consulta_registros(query);
        return datos;
    }
    
    public String[][] consultar_nit(){
        String datos[][];
        String query="SELECT nit_cliente, nombre_cliente FROM clientes";
        datos=this.consulta_registros(query);
        return datos;
    }    
   
    public String[][] consultar_IDtarifa(){
        String datos[][];
        String query="SELECT id_tarifa, descripcion FROM tarifas";
        datos=this.consulta_registros(query);
        return datos;
    }
    
    public void insertar_nueva_reservacion(String fecha_ingreso, String fecha_salida, int idhabitacion, String nit, int tarifa){
        String query="INSERT INTO reservaciones(fecha_ingreso, fecha_salida, id_habitacion, nit_cliente, id_tarifa) "
                + " VALUES ('"+fecha_ingreso+ "', '"+fecha_salida+"', "+idhabitacion+", '"+nit+"', "+tarifa+")";
        this.consulta_vacia(query);
    }
}
