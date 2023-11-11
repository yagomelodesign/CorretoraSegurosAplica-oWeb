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
public class DAOApoliceXServico {
        String mensagem="";
        DAOApolice daoApolice = new DAOApolice();
        DAOServicos daoServicos = new DAOServicos();
    
    public List<ApoliceXServico> listarApoliceXServico(){ // busca todas as cidades no BD e as mostra ao usuário
        List<ApoliceXServico> lista = new ArrayList<>();
        String sql = "select * from apolicexservico";
            try{
                PreparedStatement pst = Conexao.getPreparedStatement(sql);
                ResultSet rs = pst.executeQuery();
                    while(rs.next()){
                        ApoliceXServico objApoliceXServico = new ApoliceXServico();
                        objApoliceXServico.setIdApoliceXServico(rs.getInt("idApoliceXServico"));
                        objApoliceXServico.setIdApolice(daoApolice.localizar(rs.getInt("idApolice")));
                        objApoliceXServico.setIdServicos(daoServicos.localizar(rs.getInt("idServicos")));

                        lista.add(objApoliceXServico); 
                     }
            }catch(SQLException erro){
                System.out.println("Erro no listarApoliceXServico do DAOApoliceXServico: "+erro);
            }
            
        return lista;
    }
    public String inserir (ApoliceXServico obj) {
        String sql = "insert into apolicexservico (idApolice,idServicos) values (?,?)";
        try {
            PreparedStatement pst = Conexao.getPreparedStatement(sql);
           
            pst.setInt(1, obj.getIdApolice().getIdApolice());
            pst.setInt(2, obj.getIdServicos().getIdServicos());
            
            if (pst.executeUpdate() > 0) {
                 
                mensagem = "ApoliceXServico cadastrado com sucesso";
            } else {
                mensagem = "ApoliceXServico não cadastrado!";
            }
            pst.close();
        } catch (SQLException e) {
            mensagem = e.getMessage();
        }
        return mensagem;
    }
     
     public String alterar(ApoliceXServico obj){
 String sql = "update apolicexservico set idApolice=?,idServicos=? where idApoliceXServico=?";
       try{
           PreparedStatement pst = Conexao.getPreparedStatement(sql);
           pst.setInt(1, obj.getIdApolice().getIdApolice());
           pst.setInt(2, obj.getIdServicos().getIdServicos());
           pst.setInt(3, obj.getIdApoliceXServico());
          
           if(pst.executeUpdate()>0){
               mensagem = "ApoliceXServico alterado com sucesso!";
           }else{
               mensagem = "ApoliceXServico não alterado!";
           }
           pst.close();
       }catch(SQLException ex){
           mensagem= "Erro de SQL no método alterar do DAOApoliceXServico"
                   +ex.getMessage()+"\nComando SQL = "+sql;
       }
        return mensagem;   
    }
      public String excluir(ApoliceXServico obj){
 String sql = "delete from apolicexservico where idApoliceXServico=?";
       try{
           PreparedStatement pst = Conexao.getPreparedStatement(sql);
           pst.setInt(1, obj.getIdApoliceXServico());
          
           if(pst.executeUpdate()>0){
               mensagem = "ApoliceXServico excluída com sucesso!";
           }else{
               mensagem = "ApoliceXServico nao excluída!";
           }
           pst.close();
       }catch(SQLException ex){
           mensagem= "Erro de SQL no método excluir do DAOApoliceXServico"
                   +ex.getMessage()+"\nComando SQL = "+sql;
       }
        return mensagem;   
    }
     public ApoliceXServico localizar(Integer id) {
        String sql = "select * from apolicexservico where idApoliceXServico=?";
        ApoliceXServico obj = new ApoliceXServico();
        try{ 
            PreparedStatement pst = Conexao.getPreparedStatement(sql);
            pst.setInt(1,id);
            ResultSet rs = pst.executeQuery();
            while(rs.next()){
                obj.setIdApoliceXServico(rs.getInt("idApoliceXServico"));
                obj.setIdApolice(daoApolice.localizar(rs.getInt("idApolice")));
                obj.setIdServicos(daoServicos.localizar(rs.getInt("idServicos")));
                return obj;
            }
            }catch(SQLException erro){
            System.out.println("Erro de SQL Localizar do DAOApoliceXServico"+erro.getMessage());
        }
        
        return null;
    }
    
}