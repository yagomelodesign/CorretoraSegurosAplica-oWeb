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
public class DAOBonus {
        String mensagem="";
    
    public List<Bonus> listarBonus(){ // busca todas as cidades no BD e as mostra ao usuário
        List<Bonus> lista = new ArrayList<>();
        String sql = "select * from bonus";
            try{
                PreparedStatement pst = Conexao.getPreparedStatement(sql);
                ResultSet rs = pst.executeQuery();
                    while(rs.next()){
                        Bonus objBonus = new Bonus();
                        objBonus.setIdBonus(rs.getInt("idBonus"));
                        objBonus.setClasse(rs.getInt("classe"));
                        objBonus.setDesconto(rs.getDouble("desconto"));
                        lista.add(objBonus); 
                     }
            }catch(SQLException erro){
                System.out.println("Erro no listarBonus do DAOBonus: "+erro);
            }
            
        return lista;
    }
    public String inserir (Bonus obj) {
        String mensagem;
        String sql = "insert into bonus (classe,desconto) values (?,?)";
        try {
            PreparedStatement pst = Conexao.getPreparedStatement(sql);
            pst.setInt(1, obj.getClasse());
            pst.setDouble(2, obj.getDesconto());
            
            if (pst.executeUpdate() > 0) {
                 
                mensagem = "Bônus cadastrado com sucesso";
            } else {
                mensagem = "Bônus não cadastrado!";
            }
            pst.close();
        } catch (SQLException e) {
            mensagem = e.getMessage();
        }
        return mensagem;
    }
     
     public String alterar(Bonus obj){
 String sql = "update bonus set classe=?,desconto=? where idBonus=?";
       try{
           PreparedStatement pst = Conexao.getPreparedStatement(sql);
            pst.setInt(1, obj.getClasse());
            pst.setDouble(2, obj.getDesconto());
            pst.setInt(3, obj.getIdBonus());
          
           if(pst.executeUpdate()>0){
               mensagem = "Bônus alterado com sucesso!";
           }else{
               mensagem = "Bônus não alterado!";
           }
           pst.close();
       }catch(SQLException ex){
           mensagem= "Erro de SQL no método alterar do DAOBonus"
                   +ex.getMessage()+"\nComando SQL = "+sql;
       }
        return mensagem;   
    }
      public String excluir(Bonus obj){
 String sql = "delete from bonus where idBonus=?";
       try{
           PreparedStatement pst = Conexao.getPreparedStatement(sql);
           pst.setInt(1, obj.getIdBonus());
          
           if(pst.executeUpdate()>0){
               mensagem = "Bônus excluído com sucesso!";
           }else{
               mensagem = "Bônus nao excluído!";
           }
           pst.close();
       }catch(SQLException ex){
           mensagem= "Erro de SQL no método excluir do DAOBonus"
                   +ex.getMessage()+"\nComando SQL = "+sql;
       }
        return mensagem;   
    }
     public Bonus localizar(Integer id) {
        String sql = "select * from bonus where idBonus=?";
        Bonus obj = new Bonus();
        try{ 
            PreparedStatement pst = Conexao.getPreparedStatement(sql);
            pst.setInt(1,id);
            ResultSet rs = pst.executeQuery();
            while(rs.next()){
                obj.setIdBonus(rs.getInt("idBonus"));
                obj.setClasse(rs.getInt("classe"));
                obj.setDesconto(rs.getDouble("desconto"));
                return obj;
            }
            }catch(SQLException erro){
            System.out.println("Erro de SQL Localizar do DAOBonus"+erro.getMessage());
        }
        
        return null;
    }
    
}
