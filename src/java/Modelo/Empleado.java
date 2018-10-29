/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

import Controlador.Conector;

    
public class Empleado extends Conector {
  
    
    public String[][] consultar_IDhotel(){
        String datos[][];
        String query="SELECT id_hotel, nombre FROM HOTELES";
        datos=this.consulta_registros(query);
        return datos;
    }
    public void insertar_nuevo_empleado(String nombre_empleado, String estado, String direccion, 
                                            int id_hotel){
        String query="INSERT INTO empleados(nombre_empleado, estado, direccion, id_hotel) "
                + " VALUES ('"+nombre_empleado+ "', '"+estado+"', '"+direccion+"', "+id_hotel+" )";
        this.consulta_vacia(query);
    }
}
