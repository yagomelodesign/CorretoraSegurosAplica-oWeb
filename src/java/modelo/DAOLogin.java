/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author 12046386671
 */
public class DAOLogin {
    
    public ResultSet getLogin(Login obj) {
        String sql = "select * from login where usuario = ?";
       ResultSet rs=null;
        try {
            PreparedStatement pst = Conexao.getPreparedStatement(sql);
            pst.setString(1, obj.getUsuarioLogin());
            rs = pst.executeQuery();
         
        } catch (SQLException e) {
            System.out.println("Erro de SQL no login: " + e.getMessage());
        }
        return rs;
              }
    
}