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
public class DAOSegurado {
        String mensagem="";
        DAOPessoa daoPessoa = new DAOPessoa();
        DAOPerfil daoPerfil = new DAOPerfil();
        

    
    public List<Segurado> listarSegurado(){ // busca todas as cidades no BD e as mostra ao usuário
        List<Segurado> lista = new ArrayList<>();
        String sql = "select * from segurado";
            try{
                PreparedStatement pst = Conexao.getPreparedStatement(sql);
                ResultSet rs = pst.executeQuery();
                    while(rs.next()){
                        Segurado objSegurado = new Segurado();
                        objSegurado.setIdSegurado(rs.getInt("idSegurado"));
                        objSegurado.setCepSegurado(rs.getString("cepSegurado"));
                        objSegurado.setEstadoCivilSegurado(rs.getString("estadoCivilSegurado"));
                        objSegurado.setProfissaoSegurado(rs.getString("profissaoSegurado"));
                        objSegurado.setCondutorSegurado(rs.getString("condutorSegurado"));
                        objSegurado.setIdPessoa(daoPessoa.localizar(rs.getInt("idPessoa")));
                        objSegurado.setIdPerfil(daoPerfil.localizar(rs.getInt("idPerfil")));

                        lista.add(objSegurado); 
                     }
            }catch(SQLException erro){
                System.out.println("Erro no listarSegurado do DAOSegurado: "+erro);
            }
            
        return lista;
    }
    public String inserir (Segurado obj) {
        String sql = "insert into segurado (cepSegurado,estadoCivilSegurado,profissaoSegurado,condutorSegurado, idPessoa, idPerfil) values (?,?,?,?,?,?)";
        try {
            PreparedStatement pst = Conexao.getPreparedStatement(sql);
            pst.setString(1, obj.getCepSegurado());
            pst.setString(2, obj.getEstadoCivilSegurado());
            pst.setString(3, obj.getProfissaoSegurado());
            pst.setString(4, obj.getCondutorSegurado());
            pst.setInt(5, obj.getIdPessoa().getIdPessoa());
            pst.setInt(6, obj.getIdPerfil().getIdPerfil());

            
            if (pst.executeUpdate() > 0) {
                 
                mensagem = "Segurado cadastrado com sucesso";
            } else {
                mensagem = "Segurado não cadastrado!";
            }
            pst.close();
        } catch (SQLException e) {
            mensagem = e.getMessage();
        }
        return mensagem;
    }
     
     public String alterar(Segurado obj){
 String sql = "update segurado set cepSegurado=?,estadoCivilSegurado=?,profissaoSegurado=?,condutorSegurado=?,idPessoa=?,idPerfil=? where idSegurado=?";
       try{
           PreparedStatement pst = Conexao.getPreparedStatement(sql);
            pst.setString(1, obj.getCepSegurado());
            pst.setString(2, obj.getEstadoCivilSegurado());
            pst.setString(3, obj.getProfissaoSegurado());
            pst.setString(4, obj.getCondutorSegurado());
            pst.setInt(5, obj.getIdPessoa().getIdPessoa());
            pst.setInt(6, obj.getIdPerfil().getIdPerfil());
            pst.setInt(7, obj.getIdSegurado());
          
           if(pst.executeUpdate()>0){
               mensagem = "Segurado alterado com sucesso!";
           }else{
               mensagem = "Segurado não alterado!";
           }
           pst.close();
       }catch(SQLException ex){
           mensagem= "Erro de SQL no método alterar do DAOSegurado"
                   +ex.getMessage()+"\nComando SQL = "+sql;
       }
        return mensagem;   
    }
      public String excluir(Segurado obj){
 String sql = "delete from segurado where idSegurado=?";
       try{
           PreparedStatement pst = Conexao.getPreparedStatement(sql);
           pst.setInt(1, obj.getIdSegurado());
          
           if(pst.executeUpdate()>0){
               mensagem = "Segurado excluída com sucesso!";
           }else{
               mensagem = "Segurado nao excluída!";
           }
           pst.close();
       }catch(SQLException ex){
           mensagem= "Erro de SQL no método excluir do DAOSegurado"
                   +ex.getMessage()+"\nComando SQL = "+sql;
       }
        return mensagem;   
    }
     public Segurado localizar(Integer id) {
        String sql = "select * from segurado where idSegurado=?";
        Segurado obj = new Segurado();
        try{ 
            PreparedStatement pst = Conexao.getPreparedStatement(sql);
            pst.setInt(1,id);
            ResultSet rs = pst.executeQuery();
            while(rs.next()){
                obj.setIdSegurado(rs.getInt("idSegurado"));
                obj.setCepSegurado(rs.getString("cepSegurado"));
                obj.setEstadoCivilSegurado(rs.getString("estadoCivilSegurado"));
                obj.setProfissaoSegurado(rs.getString("profissaoSegurado"));
                obj.setCondutorSegurado(rs.getString("condutorSegurado"));
                obj.setIdPessoa(daoPessoa.localizar(rs.getInt("idPessoa")));
                obj.setIdPerfil(daoPerfil.localizar(rs.getInt("idPerfil")));
                return obj;
            }
            }catch(SQLException erro){
            System.out.println("Erro de SQL Localizar do DAOSegurado"+erro.getMessage());
        }
        
        return null;
    }
    
}