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
public class DAOFuncionario {
        String mensagem="";
        DAOPessoa daoPessoa = new DAOPessoa();
    
    public List<Funcionario> listarFuncionario(){ // busca todas as cidades no BD e as mostra ao usuário
        List<Funcionario> lista = new ArrayList<>();
        String sql = "select * from funcionario";
            try{
                PreparedStatement pst = Conexao.getPreparedStatement(sql);
                ResultSet rs = pst.executeQuery();
                    while(rs.next()){
                        Funcionario objFuncionario = new Funcionario();
                        objFuncionario.setIdFuncionario(rs.getInt("idFuncionario"));
                        objFuncionario.setCargoFuncionario(rs.getString("cargoFuncionario"));
                        objFuncionario.setSalarioFuncionario(rs.getString("salarioFuncionario"));
                        objFuncionario.setIdPessoa(daoPessoa.localizar(rs.getInt("idPessoa")));
                        lista.add(objFuncionario); 
                     }
            }catch(SQLException erro){
                System.out.println("Erro no listarFuncionario do DAOFuncionario: "+erro);
            }
            
        return lista;
    }
    public String inserir (Funcionario obj) {
        String sql = "insert into funcionario (cargoFuncionario,salarioFuncionario,idPessoa) values (?,?,?)";
        try {
            PreparedStatement pst = Conexao.getPreparedStatement(sql);
            pst.setString(1, obj.getCargoFuncionario());
            pst.setString(2, obj.getSalarioFuncionario());
            pst.setInt(3, obj.getIdPessoa().getIdPessoa());
            
            if (pst.executeUpdate() > 0) {
                 
                mensagem = "Funcionario cadastrado com sucesso";
            } else {
                mensagem = "Funcionario não cadastrado!";
            }
            pst.close();
        } catch (SQLException e) {
            mensagem = e.getMessage();
        }
        return mensagem;
    }
     
     public String alterar(Funcionario obj){
 String sql = "update funcionario set cargoFuncionario=?,salarioFuncionario=?,idPessoa=? where idFuncionario=?";
       try{
           PreparedStatement pst = Conexao.getPreparedStatement(sql);
            pst.setString(1, obj.getCargoFuncionario());
            pst.setString(2, obj.getSalarioFuncionario());
            pst.setInt(3, obj.getIdPessoa().getIdPessoa());
            pst.setInt(4, obj.getIdFuncionario());
          
           if(pst.executeUpdate()>0){
               mensagem = "Funcionario alterado com sucesso!";
           }else{
               mensagem = "Funcionario não alterado!";
           }
           pst.close();
       }catch(SQLException ex){
           mensagem= "Erro de SQL no método alterar do DAOFuncionario"
                   +ex.getMessage()+"\nComando SQL = "+sql;
       }
        return mensagem;   
    }
      public String excluir(Funcionario obj){
 String sql = "delete from funcionario where idFuncionario=?";
       try{
           PreparedStatement pst = Conexao.getPreparedStatement(sql);
           pst.setInt(1, obj.getIdFuncionario());
          
           if(pst.executeUpdate()>0){
               mensagem = "Funcionario excluída com sucesso!";
           }else{
               mensagem = "Funcionario nao excluída!";
           }
           pst.close();
       }catch(SQLException ex){
           mensagem= "Erro de SQL no método excluir do DAOFuncionario"
                   +ex.getMessage()+"\nComando SQL = "+sql;
       }
        return mensagem;   
    }
     public Funcionario localizar(Integer id) {
        String sql = "select * from funcionario where idFuncionario=?";
        Funcionario obj = new Funcionario();
        try{ 
            PreparedStatement pst = Conexao.getPreparedStatement(sql);
            pst.setInt(1,id);
            ResultSet rs = pst.executeQuery();
            while(rs.next()){
                obj.setIdFuncionario(rs.getInt("idFuncionario"));
                obj.setCargoFuncionario(rs.getString("cargoFuncionario"));
                obj.setSalarioFuncionario(rs.getString("salarioFuncionario"));
                obj.setIdPessoa(daoPessoa.localizar(rs.getInt("idPessoa")));
                return obj;
            }
            }catch(SQLException erro){
            System.out.println("Erro de SQL Localizar do DAOFuncionario"+erro.getMessage());
        }
        
        return null;
    }
    
}