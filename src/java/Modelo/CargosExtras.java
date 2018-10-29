/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

import Controlador.Conector;

/**
 *
 * @author vinic
 */
public class CargosExtras extends Conector {
    
    public void insertar_cargos_extra(String descripcion, int valor){
        String query = "Insert into cargosextras (descripcion, valor) values ('"+descripcion+"','"+valor+"')";
        this.consulta_vacia(query);
        
    }
    
    
    
}
