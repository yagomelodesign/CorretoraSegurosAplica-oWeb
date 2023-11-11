/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

/**
 *
 * @author 12046386671
 */
public class ApoliceXServico {
    
    private Integer idApoliceXServico;
    private Apolice idApolice = new Apolice();
    private Servicos idServicos = new Servicos();

    public Integer getIdApoliceXServico() {
        return idApoliceXServico;
    }

    public void setIdApoliceXServico(Integer idApoliceXServico) {
        this.idApoliceXServico = idApoliceXServico;
    }

    public Apolice getIdApolice() {
        return idApolice;
    }

    public void setIdApolice(Apolice idApolice) {
        this.idApolice = idApolice;
    }

    public Servicos getIdServicos() {
        return idServicos;
    }

    public void setIdServicos(Servicos idServicos) {
        this.idServicos = idServicos;
    }

   
    
    
}
