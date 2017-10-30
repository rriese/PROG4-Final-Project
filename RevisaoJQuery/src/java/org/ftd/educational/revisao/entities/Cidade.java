package org.ftd.educational.revisao.entities;

/**
 *
 * @author Fabio Tavares Dippold
 * 
 */
public class Cidade {
    private int id;
    private String nome;
    private String estado;

    public Cidade(int id, String nome, String estado) {
        setId(id);
        setNome(nome);
        setEstado(estado);
    }
    
    public int getId() {
        return id;
    }

    public final void setId(int id) {
        this.id = id;
    }

    public String getNome() {
        return nome;
    }

    public final void setNome(String nome) {
        this.nome = nome;
    }

    public String getEstado() {
        return estado;
    }

    public final void setEstado(String estado) {
        this.estado = estado;
    }
    
}
