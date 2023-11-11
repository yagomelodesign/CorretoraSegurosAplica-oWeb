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
 * @author tulio
 */
public class Relatorio {
    
    //método para o relatório de cidade
     public ResultSet relatorioC() {
        String sql = "select * from apolice";
        ResultSet rs=null;
        try {
            PreparedStatement pst = Conexao.getPreparedStatement(sql);
            rs = pst.executeQuery();
        } catch (SQLException e) {
            System.out.println("Erro de SQL: " + e.getMessage());
        }
        return rs;
    }
    
   //para cada relatório crie um método 
     
     public ResultSet relatorioCorretora() {
        String sql = "select apolice.idApolice, apolice.numeroApolice,DATE_FORMAT(apolice.finalVig, '%d/ %m / %Y') as finalVig, DATE_FORMAT(apolice.inicioVig, '%d/ %m / %Y') as inicioVig, DATE_FORMAT(apolice.dataEmissao, '%d/ %m / %Y') as dataEmissao, apolice.codCi, seguradora.nome as nomeseguradora from apolice, seguradora where apolice.seguradora = cidade.idSeguradora";
        ResultSet rs=null;
        try {
            PreparedStatement pst = Conexao.getPreparedStatement(sql);
            rs = pst.executeQuery();
        } catch (SQLException e) {
            System.out.println("Erro de SQL: " + e.getMessage());
        }
        return rs;
    }
    
}
