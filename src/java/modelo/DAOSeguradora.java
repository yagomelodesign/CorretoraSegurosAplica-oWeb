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
 * @author 12046386671
 */
public class DAOSeguradora {
        String mensagem="";
    
    public List<Seguradora> listarSeguradora(){ // busca todas as cidades no BD e as mostra ao usuário
        List<Seguradora> lista = new ArrayList<>();
        String sql = "select * from seguradora";
            try{
                PreparedStatement pst = Conexao.getPreparedStatement(sql);
                ResultSet rs = pst.executeQuery();
                    while(rs.next()){
                        Seguradora objSeguradora = new Seguradora();
                        objSeguradora.setIdSeguradora(rs.getInt("idSeguradora"));
                        objSeguradora.setNomeSeguradora(rs.getString("nomeSeguradora"));
                        objSeguradora.setTelefoneSeguradora(rs.getString("telefoneSeguradora"));
                        objSeguradora.setSiteSeguradora(rs.getString("siteSeguradora"));
                        objSeguradora.setEmailSeguradora(rs.getString("emailSeguradora"));
                        lista.add(objSeguradora); 
                     }
            }catch(SQLException erro){
                System.out.println("Erro no listarSeguradora do DAOSeguradora: "+erro);
            }
            
        return lista;
    }
    public String inserir (Seguradora obj) {
        String sql = "insert into seguradora (nomeSeguradora,telefoneSeguradora,siteSeguradora,emailSeguradora) values (?,?,?,?)";
        try {
            PreparedStatement pst = Conexao.getPreparedStatement(sql);
            pst.setString(1, obj.getNomeSeguradora());
            pst.setString(2, obj.getTelefoneSeguradora());
            pst.setString(3, obj.getSiteSeguradora());
            pst.setString(4, obj.getEmailSeguradora());
            
            if (pst.executeUpdate() > 0) {
                 
                mensagem = "Seguradora cadastrada com sucesso";
            } else {
                mensagem = "Seguradora não cadastrada!";
            }
            pst.close();
        } catch (SQLException e) {
            mensagem = e.getMessage();
        }
        return mensagem;
    }
     
     public String alterar(Seguradora obj){
 String sql = "update seguradora set nomeSeguradora=?,telefoneSeguradora=?,siteSeguradora=?,emailSeguradora=? where idSeguradora=?";
       try{
           PreparedStatement pst = Conexao.getPreparedStatement(sql);
            pst.setString(1, obj.getNomeSeguradora());
            pst.setString(2, obj.getTelefoneSeguradora());
            pst.setString(3, obj.getSiteSeguradora());
            pst.setString(4, obj.getEmailSeguradora());
            pst.setInt(5, obj.getIdSeguradora());
          
           if(pst.executeUpdate()>0){
               mensagem = "Seguradora alterada com sucesso!";
           }else{
               mensagem = "Seguradora não alterada!";
           }
           pst.close();
       }catch(SQLException ex){
           mensagem= "Erro de SQL no método alterar do DAOSeguradora"
                   +ex.getMessage()+"\nComando SQL = "+sql;
       }
        return mensagem;   
    }
      public String excluir(Seguradora obj){
 String sql = "delete from seguradora where idSeguradora=?";
       try{
           PreparedStatement pst = Conexao.getPreparedStatement(sql);
           pst.setInt(1, obj.getIdSeguradora());
          
           if(pst.executeUpdate()>0){
               mensagem = "Seguradora excluída com sucesso!";
           }else{
               mensagem = "Seguradora nao excluída!";
           }
           pst.close();
       }catch(SQLException ex){
           mensagem= "Erro de SQL no método excluir do DAOSeguradora"
                   +ex.getMessage()+"\nComando SQL = "+sql;
       }
        return mensagem;   
    }
     public Seguradora localizar(Integer id) {
        String sql = "select * from seguradora where idSeguradora=?";
        Seguradora obj = new Seguradora();
        try{ 
            PreparedStatement pst = Conexao.getPreparedStatement(sql);
            pst.setInt(1,id);
            ResultSet rs = pst.executeQuery();
            while(rs.next()){
                obj.setIdSeguradora(rs.getInt("idSeguradora"));
                obj.setNomeSeguradora(rs.getString("nomeSeguradora"));
                obj.setTelefoneSeguradora(rs.getString("telefoneSeguradora"));
                obj.setSiteSeguradora(rs.getString("siteSeguradora"));
                obj.setEmailSeguradora(rs.getString("emailSeguradora"));
                return obj;
            }
            }catch(SQLException erro){
            System.out.println("Erro de SQL Localizar do DAOSeguradora"+erro.getMessage());
        }
        
        return null;
    }
    
}