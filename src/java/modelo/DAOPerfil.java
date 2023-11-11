/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author trist
 */
public class DAOPerfil {
        String mensagem="";
    
    public List<Perfil> listarPerfil(){ // busca todas as cidades no BD e as mostra ao usuário
        List<Perfil> lista = new ArrayList<>();
        String sql = "select * from perfil";
            try{
                PreparedStatement pst = Conexao.getPreparedStatement(sql);
                ResultSet rs = pst.executeQuery();
                    while(rs.next()){
                        Perfil objPerfil = new Perfil();
                        objPerfil.setIdPerfil(rs.getInt("idPerfil"));
                        objPerfil.setDescricao(rs.getString("descricao"));
                        objPerfil.setValor(rs.getDouble("valor"));
                        lista.add(objPerfil); 
                     }
            }catch(SQLException erro){
                System.out.println("Erro no listarPerfil do DAOPerfil: "+erro);
            }
            
        return lista;
    }
    public String inserir (Perfil obj) {
        String mensagem;
        String sql = "insert into perfil (descricao,valor) values (?,?)";
        try {
            PreparedStatement pst = Conexao.getPreparedStatement(sql);
            pst.setString(1, obj.getDescricao());
            pst.setDouble(2, obj.getValor());
            
            if (pst.executeUpdate() > 0) {
                 
                mensagem = "Perfil cadastrado com sucesso";
            } else {
                mensagem = "Perfil não cadastrado!";
            }
            pst.close();
        } catch (SQLException e) {
            mensagem = e.getMessage();
        }
        return mensagem;
    }
     
     public String alterar(Perfil obj){
 String sql = "update perfil set descricao=?,valor=? where idPerfil=?";
       try{
           PreparedStatement pst = Conexao.getPreparedStatement(sql);
            pst.setString(1, obj.getDescricao());
            pst.setDouble(2, obj.getValor());
            pst.setInt(3, obj.getIdPerfil());
          
           if(pst.executeUpdate()>0){
               mensagem = "Perfil alterado com sucesso!";
           }else{
               mensagem = "Perfil não alterado!";
           }
           pst.close();
       }catch(SQLException ex){
           mensagem= "Erro de SQL no método alterar do DAOPerfil"
                   +ex.getMessage()+"\nComando SQL = "+sql;
       }
        return mensagem;   
    }
      public String excluir(Perfil obj){
 String sql = "delete from perfil where idPerfil=?";
       try{
           PreparedStatement pst = Conexao.getPreparedStatement(sql);
           pst.setInt(1, obj.getIdPerfil());
          
           if(pst.executeUpdate()>0){
               mensagem = "Perfil excluído com sucesso!";
           }else{
               mensagem = "Perfil nao excluído!";
           }
           pst.close();
       }catch(SQLException ex){
           mensagem= "Erro de SQL no método excluir do DAOPerfil"
                   +ex.getMessage()+"\nComando SQL = "+sql;
       }
        return mensagem;   
    }
     public Perfil localizar(Integer id) {
        String sql = "select * from perfil where idPerfil=?";
        Perfil obj = new Perfil();
        try{ 
            PreparedStatement pst = Conexao.getPreparedStatement(sql);
            pst.setInt(1,id);
            ResultSet rs = pst.executeQuery();
            while(rs.next()){
                obj.setIdPerfil(rs.getInt("idPerfil"));
                obj.setDescricao(rs.getString("descricao"));
                obj.setValor(rs.getDouble("valor"));
                return obj;
            }
            }catch(SQLException erro){
            System.out.println("Erro de SQL Localizar do DAOPerfil"+erro.getMessage());
        }
        
        return null;
    }
    
}
