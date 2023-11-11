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
public class DAOVeiculo {
        String mensagem="";
        DAOSegurado daoSegurado = new DAOSegurado();
    public List<Veiculo> listarVeiculo(){ // busca todas as cidades no BD e as mostra ao usuário
        List<Veiculo> lista = new ArrayList<>();
        String sql = "select * from veiculo";
            try{
                PreparedStatement pst = Conexao.getPreparedStatement(sql);
                ResultSet rs = pst.executeQuery();
                    while(rs.next()){
                        Veiculo objVeiculo = new Veiculo();
                        objVeiculo.setIdVeiculo(rs.getInt("idVeiculo"));
                        objVeiculo.setMarcaVeiculo(rs.getString("marcaVeiculo"));
                        objVeiculo.setNomeVeiculo(rs.getString("nomeVeiculo"));
                        objVeiculo.setAnoVeiculo(rs.getString("anoVeiculo"));
                        objVeiculo.setChassiVeiculo(rs.getString("chassiVeiculo"));
                        objVeiculo.setCategoriaVeiculo(rs.getString("categoriaVeiculo"));
                        objVeiculo.setPortasVeiculo(rs.getString("portasVeiculo"));
                        objVeiculo.setPlacaVeiculo(rs.getString("placaVeiculo"));
                        objVeiculo.setUsoVeiculo(rs.getString("usoVeiculo"));
                        objVeiculo.setCombustivelVeiculo(rs.getString("combustivelVeiculo"));
                        objVeiculo.setCambioVeiculo(rs.getString("cambioVeiculo"));
                        objVeiculo.setRenavamVeiculo(rs.getString("renavamVeiculo"));
                        objVeiculo.setCapacidadeVeiculo(rs.getInt("capacidadeVeiculo"));
                        objVeiculo.setTabelaFipe(rs.getDouble("tabelaFipe"));
                        objVeiculo.setPorcentagem(rs.getInt("porcentagem"));
                        objVeiculo.setIdSegurado(daoSegurado.localizar(rs.getInt("idSegurado")));
                        lista.add(objVeiculo); 
                     }
            }catch(SQLException erro){
                System.out.println("Erro no listarVeiculo do DAOVeiculo: "+erro);
            }
            
        return lista;
    }
    public String inserir (Veiculo obj) {
        String mensagem;
        String sql = "insert into veiculo (marcaVeiculo,nomeVeiculo,anoVeiculo,chassiVeiculo,categoriaVeiculo,portasVeiculo,placaVeiculo,usoVeiculo,combustivelVeiculo,cambioVeiculo,renavamVeiculo,capacidadeVeiculo,tabelaFipe,porcentagem,idSegurado) values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
        try {
            PreparedStatement pst = Conexao.getPreparedStatement(sql);
            pst.setString(1, obj.getMarcaVeiculo());
            pst.setString(2, obj.getNomeVeiculo());
            pst.setString(3, obj.getAnoVeiculo());
            pst.setString(4, obj.getChassiVeiculo());
            pst.setString(5, obj.getCategoriaVeiculo());
            pst.setString(6, obj.getPortasVeiculo());
            pst.setString(7, obj.getPlacaVeiculo());
            pst.setString(8, obj.getUsoVeiculo());
            pst.setString(9, obj.getCombustivelVeiculo());
            pst.setString(10, obj.getCambioVeiculo());
            pst.setString(11, obj.getRenavamVeiculo());
            pst.setInt(12, obj.getCapacidadeVeiculo());
            pst.setDouble(13, obj.getTabelaFipe());
            pst.setInt(14, obj.getPorcentagem());
            pst.setInt(15, obj.getIdSegurado().getIdSegurado());

            
            if (pst.executeUpdate() > 0) {
                 
                mensagem = "Veiculo cadastrado com sucesso";
            } else {
                mensagem = "Veiculo não cadastrado!";
            }
            pst.close();
        } catch (SQLException e) {
            mensagem = e.getMessage();
        }
        return mensagem;
    }
     
     public String alterar(Veiculo obj){
 String sql = "update veiculo set marcaVeiculo=?,nomeVeiculo=?,anoVeiculo=?,chassiVeiculo=?,categoriaVeiculo=?,portasVeiculo=?,placaVeiculo=?,usoVeiculo=?,combustivelVeiculo=?,cambioVeiculo=?,renavamVeiculo=?,capacidadeVeiculo=?,tabelaFipe=?,porcentagem=?,idSegurado=? where idVeiculo=?";
       try{
           PreparedStatement pst = Conexao.getPreparedStatement(sql);
           pst.setString(1, obj.getMarcaVeiculo());
            pst.setString(2, obj.getNomeVeiculo());
            pst.setString(3, obj.getAnoVeiculo());
            pst.setString(4, obj.getChassiVeiculo());
            pst.setString(5, obj.getCategoriaVeiculo());
            pst.setString(6, obj.getPortasVeiculo());
            pst.setString(7, obj.getPlacaVeiculo());
            pst.setString(8, obj.getUsoVeiculo());
            pst.setString(9, obj.getCombustivelVeiculo());
            pst.setString(10, obj.getCambioVeiculo());
            pst.setString(11, obj.getRenavamVeiculo());
            pst.setInt(12, obj.getCapacidadeVeiculo());
            pst.setDouble(13, obj.getTabelaFipe());
            pst.setInt(14, obj.getPorcentagem());
            pst.setInt(15, obj.getIdSegurado().getIdSegurado());
            pst.setInt(16, obj.getIdVeiculo());
          
           if(pst.executeUpdate()>0){
               mensagem = "veiculo alterado com sucesso!";
           }else{
               mensagem = "Veiculo não alterado!";
           }
           pst.close();
       }catch(SQLException ex){
           mensagem= "Erro de SQL no método alterar do DAOVeiculo"
                   +ex.getMessage()+"\nComando SQL = "+sql;
       }
        return mensagem;   
    }
      public String excluir(Veiculo obj){
 String sql = "delete from veiculo where idVeiculo=?";
       try{
           PreparedStatement pst = Conexao.getPreparedStatement(sql);
           pst.setInt(1, obj.getIdVeiculo());
            
           if(pst.executeUpdate()>0){
               mensagem = "Veiculo excluido com sucesso!";
           }else{
               mensagem = "Veiculo nao excluido!";
           }
           pst.close();
       }catch(SQLException ex){
           mensagem= "Erro de SQL no método excluir do DAOVeiculo"
                   +ex.getMessage()+"\nComando SQL = "+sql;
       }
        return mensagem;   
    }
     public Veiculo localizar(Integer id) {
        String sql = "select * from veiculo where idVeiculo=?";
        Veiculo obj = new Veiculo();
        try{ 
            PreparedStatement pst = Conexao.getPreparedStatement(sql);
            pst.setInt(1,id);
            ResultSet rs = pst.executeQuery();
            while(rs.next()){
            obj.setIdVeiculo(rs.getInt("idVeiculo"));
            obj.setMarcaVeiculo(rs.getString("marcaVeiculo"));
            obj.setNomeVeiculo(rs.getString("nomeVeiculo"));
            obj.setAnoVeiculo(rs.getString("anoVeiculo"));
            obj.setChassiVeiculo(rs.getString("chassiVeiculo"));
            obj.setCategoriaVeiculo(rs.getString("categoriaVeiculo"));
            obj.setPortasVeiculo(rs.getString("portasVeiculo"));
            obj.setPlacaVeiculo(rs.getString("placaVeiculo"));
            obj.setUsoVeiculo(rs.getString("usoVeiculo"));
            obj.setCombustivelVeiculo(rs.getString("combustivelVeiculo"));
            obj.setCambioVeiculo(rs.getString("cambioVeiculo"));
            obj.setRenavamVeiculo(rs.getString("renavamVeiculo"));
            obj.setCapacidadeVeiculo(rs.getInt("capacidadeVeiculo"));
            obj.setTabelaFipe(rs.getDouble("tabelaFipe"));
            obj.setPorcentagem(rs.getInt("porcentagem"));
            obj.setIdSegurado(daoSegurado.localizar(rs.getInt("idSegurado")));

                return obj;
            }
            }catch(SQLException erro){
            System.out.println("Erro de SQL Localizar do DAOVeiculo"+erro.getMessage());
        }
        
        return null;
    }
    
}