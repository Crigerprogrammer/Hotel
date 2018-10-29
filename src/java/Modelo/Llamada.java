/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

import Controlador.Conector;

    
public class Llamada extends Conector {
  
    
    public String[][] consultar_IDhotel(){
        String datos[][];
        String query="SELECT id_habitacion, tipo_habitacion FROM habitaciones";
        datos=this.consulta_registros(query);
        return datos;
    }
    
    public String[][] consultar_IDtarifa(){
        String datos[][];
        String query="SELECT id_tarifa, descripcion FROM tarifas";
        datos=this.consulta_registros(query);
        return datos;
    }
    
    public String[][] consultar_nit(){
        String datos[][];
        String query="SELECT nit_cliente, nombre_cliente FROM clientes";
        datos=this.consulta_registros(query);
        return datos;
    }
    
    
    public void insertar_nueva_llamada(int telefono, int duracion, int idhabitacion, int idtarifa, String nit){
        String query="INSERT INTO llamadas(telefono_marcado, duracion, id_habitacion, id_tarifa, nit_cliente) "
                + " VALUES ("+telefono+ ", "+duracion+", "+idhabitacion+", "+idtarifa+", '"+nit+"')";
        this.consulta_vacia(query);
    }
}
