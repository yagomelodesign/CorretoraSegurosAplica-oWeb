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
public class Segurado {
    
    private Integer idSegurado;
    private String cepSegurado;
    private String estadoCivilSegurado;
    private String profissaoSegurado;
    private String condutorSegurado;
    private Pessoa idPessoa = new Pessoa();    
    private Perfil idPerfil = new Perfil();    

    public Integer getIdSegurado() {
        return idSegurado;
    }

    public void setIdSegurado(Integer idSegurado) {
        this.idSegurado = idSegurado;
    }

    public String getCepSegurado() {
        return cepSegurado;
    }

    public void setCepSegurado(String cepSegurado) {
        this.cepSegurado = cepSegurado;
    }

    public String getEstadoCivilSegurado() {
        return estadoCivilSegurado;
    }

    public void setEstadoCivilSegurado(String estadoCivilSegurado) {
        this.estadoCivilSegurado = estadoCivilSegurado;
    }

    public String getProfissaoSegurado() {
        return profissaoSegurado;
    }

    public void setProfissaoSegurado(String profissaoSegurado) {
        this.profissaoSegurado = profissaoSegurado;
    }

    public String getCondutorSegurado() {
        return condutorSegurado;
    }

    public void setCondutorSegurado(String condutorSegurado) {
        this.condutorSegurado = condutorSegurado;
    }

    public Pessoa getIdPessoa() {
        return idPessoa;
    }

    public void setIdPessoa(Pessoa idPessoa) {
        this.idPessoa = idPessoa;
    }

    public Perfil getIdPerfil() {
        return idPerfil;
    }

    public void setIdPerfil(Perfil idPerfil) {
        this.idPerfil = idPerfil;
    }

   
    
    
    
}
