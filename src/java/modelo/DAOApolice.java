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
public class DAOApolice {
        String mensagem="";
        ConverteData converte = new ConverteData();
        DAOSegurado daoSegurado = new DAOSegurado();
        DAOSeguradora daoSeguradora = new DAOSeguradora();
        DAOBonus daoBonus = new DAOBonus();

    
    public List<Apolice> listarApolice(){ // busca todas as cidades no BD e as mostra ao usuário
        List<Apolice> lista = new ArrayList<>();
        String sql = "select * from apolice";
            try{
                PreparedStatement pst = Conexao.getPreparedStatement(sql);
                ResultSet rs = pst.executeQuery();
                    while(rs.next()){
                        Apolice objApolice = new Apolice();
                        objApolice.setIdApolice(rs.getInt("idApolice"));
                        objApolice.setNumeroApolice(rs.getString("numeroApolice"));
                        objApolice.setDataEmissao(converte.converteCalendario(rs.getDate("dataEmissao")));
                        objApolice.setInicioVig(converte.converteCalendario(rs.getDate("inicioVig")));
                        objApolice.setFinalVig(converte.converteCalendario(rs.getDate("finalVig")));
                        objApolice.setCodCi(rs.getString("codCi"));
                        objApolice.setIdSegurado(daoSegurado.localizar(rs.getInt("idSegurado")));
                        objApolice.setIdSeguradora(daoSeguradora.localizar(rs.getInt("idSeguradora")));
                        objApolice.setIdBonus(daoBonus.localizar(rs.getInt("idBonus")));
                        lista.add(objApolice); 
                     }
            }catch(SQLException erro){
                System.out.println("Erro no listarApolice do DAOApolice: "+erro);
            }
            
        return lista;
    }
    public String inserir (Apolice obj) {
        String mensagem;
        String sql = "insert into apolice (numeroApolice,dataEmissao,inicioVig,finalVig,codCi,idSegurado,idSeguradora,idBonus) values (?,?,?,?,?,?,?,?)";
        try {
            PreparedStatement pst = Conexao.getPreparedStatement(sql);
            pst.setString(1, obj.getNumeroApolice());
            pst.setDate(2, converte.converteBanco(obj.getDataEmissao()));
            pst.setDate(3, converte.converteBanco(obj.getInicioVig()));
            pst.setDate(4, converte.converteBanco(obj.getFinalVig()));
            pst.setString(5, obj.getCodCi());
            pst.setInt(6, obj.getIdSegurado().getIdSegurado());
            pst.setInt(7, obj.getIdSeguradora().getIdSeguradora());
            pst.setInt(8, obj.getIdBonus().getIdBonus());
            
            if (pst.executeUpdate() > 0) {
                 
                mensagem = "Apólice cadastrada com sucesso";
            } else {
                mensagem = "Apólice não cadastrada!";
            }
            pst.close();
        } catch (SQLException e) {
            mensagem = e.getMessage();
        }
        return mensagem;
    }
     
     public String alterar(Apolice obj){
 String sql = "update apolice set numeroApolice=?,dataEmissao=?,inicioVig=?, finalVig=?,codCi=?,idSegurado=?,idSeguradora=?,idBonus=? where idApolice=?";
       try{
           PreparedStatement pst = Conexao.getPreparedStatement(sql);
           pst.setString(1, obj.getNumeroApolice());
            pst.setDate(2, converte.converteBanco(obj.getDataEmissao()));
            pst.setDate(3, converte.converteBanco(obj.getInicioVig()));
            pst.setDate(4, converte.converteBanco(obj.getFinalVig()));
            pst.setString(5, obj.getCodCi());
            pst.setInt(6, obj.getIdSegurado().getIdSegurado());
            pst.setInt(7, obj.getIdSeguradora().getIdSeguradora());
            pst.setInt(8, obj.getIdBonus().getIdBonus());
            pst.setInt(9, obj.getIdApolice());
          
           if(pst.executeUpdate()>0){
               mensagem = "Apólice alterada com sucesso!";
           }else{
               mensagem = "Apólice não alterada!";
           }
           pst.close();
       }catch(SQLException ex){
           mensagem= "Erro de SQL no método alterar do DAOAula"
                   +ex.getMessage()+"\nComando SQL = "+sql;
       }
        return mensagem;   
    }
      public String excluir(Apolice obj){
 String sql = "delete from apolice where idApolice=?";
       try{
           PreparedStatement pst = Conexao.getPreparedStatement(sql);
           pst.setInt(1, obj.getIdApolice());
          
           if(pst.executeUpdate()>0){
               mensagem = "Apólice excluída com sucesso!";
           }else{
               mensagem = "Apólice nao excluída!";
           }
           pst.close();
       }catch(SQLException ex){
           mensagem= "Erro de SQL no método excluir do DAOAula"
                   +ex.getMessage()+"\nComando SQL = "+sql;
       }
        return mensagem;   
    }
     public Apolice localizar(Integer id) {
        String sql = "select * from apolice where idApolice=?";
        Apolice obj = new Apolice();
        try{ 
            PreparedStatement pst = Conexao.getPreparedStatement(sql);
            pst.setInt(1,id);
            ResultSet rs = pst.executeQuery();
            while(rs.next()){
                obj.setIdApolice(rs.getInt("idApolice"));
                obj.setNumeroApolice(rs.getString("numeroApolice"));
                obj.setDataEmissao(converte.converteCalendario(rs.getDate("dataEmissao")));
                obj.setInicioVig(converte.converteCalendario(rs.getDate("inicioVig")));
                obj.setFinalVig(converte.converteCalendario(rs.getDate("finalVig")));
                obj.setCodCi(rs.getString("codCi"));
                obj.setIdSegurado(daoSegurado.localizar(rs.getInt("idSegurado")));
                obj.setIdSeguradora(daoSeguradora.localizar(rs.getInt("idSeguradora")));
                obj.setIdBonus(daoBonus.localizar(rs.getInt("idBonus")));
                return obj;
            }
            }catch(SQLException erro){
            System.out.println("Erro de SQL Localizar do DAOApolice"+erro.getMessage());
        }
        
        return null;
    }
    
}
