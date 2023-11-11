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
public class DAOPessoa {
        String mensagem="";
          ConverteData converte = new ConverteData();
    
    public List<Pessoa> listarPessoa(){ // busca todas as cidades no BD e as mostra ao usuário
        List<Pessoa> lista = new ArrayList<>();
        String sql = "select * from pessoa";
            try{
                PreparedStatement pst = Conexao.getPreparedStatement(sql);
                ResultSet rs = pst.executeQuery();
                    while(rs.next()){
                        Pessoa objPessoa = new Pessoa();
                        objPessoa.setIdPessoa(rs.getInt("idPessoa"));
                        objPessoa.setNomePessoa(rs.getString("nomePessoa"));
                        objPessoa.setCpfPessoa(rs.getString("cpfPessoa"));
                        objPessoa.setRgPessoa(rs.getString("rgPessoa"));
                        objPessoa.setNascPessoa(converte.converteCalendario(rs.getDate("nascPessoa")));
                        objPessoa.setTelefonePessoa(rs.getString("telefonePessoa"));
                        objPessoa.setEmailPessoa(rs.getString("emailPessoa"));
                        objPessoa.setSexoPessoa(rs.getString("sexoPessoa"));
                        objPessoa.setEnderecoPessoa(rs.getString("enderecoPessoa"));
                        objPessoa.setBairroPessoa(rs.getString("bairroPessoa"));
                        objPessoa.setCidadePessoa(rs.getString("cidadePessoa"));
                        objPessoa.setUf(rs.getString("uf"));
                        lista.add(objPessoa); 
                     }
            }catch(SQLException erro){
                System.out.println("Erro no listarPessoa do DAOPessoa: "+erro);
            }
            
        return lista;
    }
    public String inserir (Pessoa obj) {
        String sql = "insert into pessoa (nomePessoa,cpfPessoa,rgPessoa,nascPessoa,telefonePessoa,emailPessoa,sexoPessoa,enderecoPessoa,bairroPessoa,cidadePessoa,uf) values (?,?,?,?,?,?,?,?,?,?,?)";
        try {
            PreparedStatement pst = Conexao.getPreparedStatement(sql);
            pst.setString(1, obj.getNomePessoa());
            pst.setString(2, obj.getCpfPessoa());
            pst.setString(3, obj.getRgPessoa());
            pst.setDate(4, converte.converteBanco(obj.getNascPessoa()));
            pst.setString(5, obj.getTelefonePessoa());
            pst.setString(6, obj.getEmailPessoa());
            pst.setString(7, obj.getSexoPessoa());
            pst.setString(8, obj.getEnderecoPessoa());
            pst.setString(9, obj.getBairroPessoa());
            pst.setString(10, obj.getCidadePessoa());
            pst.setString(11, obj.getUf());
            
            if (pst.executeUpdate() > 0) {
                 
                mensagem = "Pessoa cadastrada com sucesso";
            } else {
                mensagem = "Pessoa não cadastrada!";
            }
            pst.close();
        } catch (SQLException e) {
            mensagem = e.getMessage();
        }
        return mensagem;
    }
     
     public String alterar(Pessoa obj){
 String sql = "update pessoa set nomePessoa=?,cpfPessoa=?,rgPessoa=?,nascPessoa=?,telefonePessoa=?,emailPessoa=?,sexoPessoa=?,enderecoPessoa=?,bairroPessoa=?,cidadePessoa=?,uf=? where idPessoa=?";
       try{
           PreparedStatement pst = Conexao.getPreparedStatement(sql);
            pst.setString(1, obj.getNomePessoa());
            pst.setString(2, obj.getCpfPessoa());
            pst.setString(3, obj.getRgPessoa());
            pst.setDate(4, converte.converteBanco(obj.getNascPessoa()));
            pst.setString(5, obj.getTelefonePessoa());
            pst.setString(6, obj.getEmailPessoa());
            pst.setString(7, obj.getSexoPessoa());
            pst.setString(8, obj.getEnderecoPessoa());
            pst.setString(9, obj.getBairroPessoa());
            pst.setString(10, obj.getCidadePessoa());
            pst.setString(11, obj.getUf());
            pst.setInt(12, obj.getIdPessoa());
          
           if(pst.executeUpdate()>0){
               mensagem = "Pessoa alterada com sucesso!";
           }else{
               mensagem = "Pessoa não alterada!";
           }
           pst.close();
       }catch(SQLException ex){
           mensagem= "Erro de SQL no método alterar do DAOPessoa"
                   +ex.getMessage()+"\nComando SQL = "+sql;
       }
        return mensagem;   
    }
     public String excluir(Pessoa obj){
 String sql = "delete from pessoa where idPessoa=?";
       try{
           PreparedStatement pst = Conexao.getPreparedStatement(sql);
           pst.setInt(1, obj.getIdPessoa());
          
           if(pst.executeUpdate()>0){
               mensagem = "Pessoa excluída com sucesso!";
           }else{
               mensagem = "Pessoa não excluída!";
           }
           pst.close();
       }catch(SQLException ex){
           mensagem= "Erro de SQL no método excluir do DAOAula"
                   +ex.getMessage()+"\nComando SQL = "+sql;
       }
        return mensagem;   
    }
     public Pessoa localizar(Integer id) {
        String sql = "select * from pessoa where idPessoa=?";
        Pessoa obj = new Pessoa();
        try{ 
            PreparedStatement pst = Conexao.getPreparedStatement(sql);
            pst.setInt(1,id);
            ResultSet rs = pst.executeQuery();
            while(rs.next()){
            obj.setIdPessoa(rs.getInt("idPessoa"));
            obj.setNomePessoa(rs.getString("nomePessoa"));
            obj.setCpfPessoa(rs.getString("cpfPessoa"));
            obj.setRgPessoa(rs.getString("rgPessoa"));
            obj.setNascPessoa(converte.converteCalendario(rs.getDate("nascPessoa")));
            obj.setTelefonePessoa(rs.getString("telefonePessoa"));
            obj.setEmailPessoa(rs.getString("emailPessoa"));
            obj.setSexoPessoa(rs.getString("sexoPessoa"));
            obj.setEnderecoPessoa(rs.getString("enderecoPessoa"));
            obj.setBairroPessoa(rs.getString("bairroPessoa"));
            obj.setCidadePessoa(rs.getString("cidadePessoa"));
            obj.setUf(rs.getString("uf"));  
            return obj;
            }
            }catch(SQLException erro){
            System.out.println("Erro de SQL Localizar do DAOPessoa"+erro.getMessage());
        }
        
        return null;
    }
    
}