package database;

public class Cliente {

	private String usuario;	
	private String senha;

	public Cliente(String usuario,String senha) {
		this.usuario = usuario;
		this.senha = senha;
	}	

	public String getUser() {
		return usuario;
	}

	public void setUser(String user) {
		this.usuario = user;
	}
	
	public String getSenha() {
		return senha;
	}

	public void setSenha(String senha) {
		this.senha = senha;
	}
}
	
	