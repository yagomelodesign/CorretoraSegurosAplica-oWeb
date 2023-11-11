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
public class Funcionario {
    
     private Integer idFuncionario;
     private String cargoFuncionario;
     private String salarioFuncionario;
     private Pessoa idPessoa = new Pessoa();

    public Integer getIdFuncionario() {
        return idFuncionario;
    }

    public void setIdFuncionario(Integer idFuncionario) {
        this.idFuncionario = idFuncionario;
    }

    public String getCargoFuncionario() {
        return cargoFuncionario;
    }

    public void setCargoFuncionario(String cargoFuncionario) {
        this.cargoFuncionario = cargoFuncionario;
    }

    public String getSalarioFuncionario() {
        return salarioFuncionario;
    }

    public void setSalarioFuncionario(String salarioFuncionario) {
        this.salarioFuncionario = salarioFuncionario;
    }

    public Pessoa getIdPessoa() {
        return idPessoa;
    }

    public void setIdPessoa(Pessoa idPessoa) {
        this.idPessoa = idPessoa;
    }

   
     
     
     
}
