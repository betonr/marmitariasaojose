package model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity(name="pessoa")
public class Pessoa {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(columnDefinition = "serial")
	private Long id;
	
	private String nome_completo;
	
	private String cpf;
	
	private String telefone;
	
	private Date data_registro;
	
	public Pessoa(){}
	
	public Pessoa(String nome_completo, String cpf, String telefone) {
		this.setNome_completo(nome_completo);
		this.setCpf(cpf);
		this.setTelefone(telefone);
		this.setData_registro(new java.sql.Date((new Date()).getTime()));
	}
	
	public Long getId() {
	    return id;
	}

	public void setId(Long id) {
	    this.id = id;
	}

	public String getNome_completo() {
		return nome_completo;
	}

	public void setNome_completo(String nome_completo) {
		this.nome_completo = nome_completo;
	}

	public String getCpf() {
		return cpf;
	}

	public void setCpf(String cpf) {
		this.cpf = cpf;
	}

	public String getTelefone() {
		return telefone;
	}

	public void setTelefone(String telefone) {
		this.telefone = telefone;
	}

	public Date getData_registro() {
		return data_registro;
	}

	public void setData_registro(Date data_registro) {
		this.data_registro = data_registro;
	}

}