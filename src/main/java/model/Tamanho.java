package model;

//import javax.persistence.Entity;
//import javax.persistence.GeneratedValue;
//import javax.persistence.Id;

//@Entity(name="tamanho")
public class Tamanho {
	
//	@Id
//	@GeneratedValue
	private Long id;
	
	private String descricao;
	
	private double preco;

	public String getDescricao() {
		return descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}

	public double getPreco() {
		return preco;
	}

	public void setPreco(double preco) {
		this.preco = preco;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}
	
}
