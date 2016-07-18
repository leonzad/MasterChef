package database;

public class Pedido {
	
	private String pedido;	
	
	public Pedido(String pedido) {
		this.setPedido(pedido);
	}

	public String getPedido() {
		return pedido;
	}

	public void setPedido(String pedido) {
		this.pedido = pedido;
	}	

}
