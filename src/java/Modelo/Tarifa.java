/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

import Controlador.Conector;

    
public class Tarifa extends Conector {
  
    
    
    public void insertar_nueva_tarifa(String descripcion, int valor){
        String query="INSERT INTO tarifas(descripcion, valor) "
                + " VALUES ('"+descripcion+ "',  "+valor+" )";
        this.consulta_vacia(query);
    }
}
