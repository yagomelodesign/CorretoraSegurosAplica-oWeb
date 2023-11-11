/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import java.util.Calendar;

/**
 *
 * @author 12046386671
 */
public class Apolice {
    
    private Integer idApolice;
    private String numeroApolice;
    private Calendar dataEmissao;
    private Calendar inicioVig;
    private Calendar finalVig;
    private String codCi;
    private Segurado idSegurado = new Segurado();
    private Seguradora idSeguradora = new Seguradora();
    private Bonus idBonus = new Bonus();

    public Integer getIdApolice() {
        return idApolice;
    }

    public void setIdApolice(Integer idApolice) {
        this.idApolice = idApolice;
    }

    public String getNumeroApolice() {
        return numeroApolice;
    }

    public void setNumeroApolice(String numeroApolice) {
        this.numeroApolice = numeroApolice;
    }

    public Calendar getDataEmissao() {
        return dataEmissao;
    }

    public void setDataEmissao(Calendar dataEmissao) {
        this.dataEmissao = dataEmissao;
    }

    public Calendar getInicioVig() {
        return inicioVig;
    }

    public void setInicioVig(Calendar inicioVig) {
        this.inicioVig = inicioVig;
    }

    public Calendar getFinalVig() {
        return finalVig;
    }

    public void setFinalVig(Calendar finalVig) {
        this.finalVig = finalVig;
    }

    public String getCodCi() {
        return codCi;
    }

    public void setCodCi(String codCi) {
        this.codCi = codCi;
    }

    public Segurado getIdSegurado() {
        return idSegurado;
    }

    public void setIdSegurado(Segurado idSegurado) {
        this.idSegurado = idSegurado;
    }

    public Seguradora getIdSeguradora() {
        return idSeguradora;
    }

    public void setIdSeguradora(Seguradora idSeguradora) {
        this.idSeguradora = idSeguradora;
    }

    public Bonus getIdBonus() {
        return idBonus;
    }

    public void setIdBonus(Bonus idBonus) {
        this.idBonus = idBonus;
    }

    
}
