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
public class DAOServicos {
        String mensagem="";
    
    public List<Servicos> listarServicos(){ // busca todas as cidades no BD e as mostra ao usuário
        List<Servicos> lista = new ArrayList<>();
        String sql = "select * from servicos";
            try{
                PreparedStatement pst = Conexao.getPreparedStatement(sql);
                ResultSet rs = pst.executeQuery();
                    while(rs.next()){
                        Servicos objServicos = new Servicos();
                        objServicos.setIdServicos(rs.getInt("idServicos"));
                        objServicos.setTipoServico(rs.getString("tipoServico"));
                        objServicos.setValorServico(rs.getInt("valorServico"));
                        lista.add(objServicos); 
                     }
            }catch(SQLException erro){
                System.out.println("Erro no listarServicos do DAOServicos: "+erro);
            }
            
        return lista;
    }
    public String inserir (Servicos obj) {
        String mensagem;
        String sql = "insert into servicos (tipoServico,valorServico) values (?,?)";
        try {
            PreparedStatement pst = Conexao.getPreparedStatement(sql);
            pst.setString(1, obj.getTipoServico());
            pst.setInt(2, obj.getValorServico());
            
            if (pst.executeUpdate() > 0) {
                 
                mensagem = "Servico cadastrado com sucesso";
            } else {
                mensagem = "Servico não cadastrado!";
            }
            pst.close();
        } catch (SQLException e) {
            mensagem = e.getMessage();
        }
        return mensagem;
    }
     
     public String alterar(Servicos obj){
 String sql = "update servicos set tipoServico=?,valorServico=? where idServicos=?";
       try{
           PreparedStatement pst = Conexao.getPreparedStatement(sql);
            pst.setString(1, obj.getTipoServico());
            pst.setInt(2, obj.getValorServico());
            pst.setInt(3, obj.getIdServicos());
          
           if(pst.executeUpdate()>0){
               mensagem = "Servico alterado com sucesso!";
           }else{
               mensagem = "Servico não alterado!";
           }
           pst.close();
       }catch(SQLException ex){
           mensagem= "Erro de SQL no método alterar do DAOServicos"
                   +ex.getMessage()+"\nComando SQL = "+sql;
       }
        return mensagem;   
    }
      public String excluir(Servicos obj){
 String sql = "delete from servicos where idServicos=?";
       try{
           PreparedStatement pst = Conexao.getPreparedStatement(sql);
           pst.setInt(1, obj.getIdServicos());
          
           if(pst.executeUpdate()>0){
               mensagem = "Servico excluído com sucesso!";
           }else{
               mensagem = "Servico nao excluído!";
           }
           pst.close();
       }catch(SQLException ex){
           mensagem= "Erro de SQL no método excluir do DAOServicos"
                   +ex.getMessage()+"\nComando SQL = "+sql;
       }
        return mensagem;   
    }
     public Servicos localizar(Integer id) {
        String sql = "select * from servicos where idServicos=?";
        Servicos obj = new Servicos();
        try{ 
            PreparedStatement pst = Conexao.getPreparedStatement(sql);
            pst.setInt(1,id);
            ResultSet rs = pst.executeQuery();
            while(rs.next()){
                obj.setIdServicos(rs.getInt("idServicos"));
                obj.setTipoServico(rs.getString("tipoServico"));
                obj.setValorServico(rs.getInt("valorServico"));
                return obj;
            }
            }catch(SQLException erro){
            System.out.println("Erro de SQL Localizar do DAOServicos"+erro.getMessage());
        }
        
        return null;
    }
    
}