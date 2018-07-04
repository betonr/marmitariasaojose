package model;

public class Pedido {
	
	private Long id;
	private Long id_solicitacao;
	private Long id_produto;
	private Long id_tamanho;
	private int quantidade;
	private String observacao;
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public Long getId_produto() {
		return id_produto;
	}
	public void setId_produto(Long id_produto) {
		this.id_produto = id_produto;
	}
	public Long getId_tamanho() {
		return id_tamanho;
	}
	public void setId_tamanho(Long id_tamanho) {
		this.id_tamanho = id_tamanho;
	}
	public int getQuantidade() {
		return quantidade;
	}
	public void setQuantidade(int quantidade) {
		this.quantidade = quantidade;
	}
	public String getObservacao() {
		return observacao;
	}
	public void setObservacao(String observacao) {
		this.observacao = observacao;
	}
	public Long getId_solicitacao() {
		return id_solicitacao;
	}
	public void setId_solicitacao(Long id_solicitacao) {
		this.id_solicitacao = id_solicitacao;
	}
	
}
