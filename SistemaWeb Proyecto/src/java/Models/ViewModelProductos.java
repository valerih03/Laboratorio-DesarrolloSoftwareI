/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Models;

import java.math.BigDecimal;

/**
 *
 * @author padil
 */
public class ViewModelProductos {
  
    // ATRIBUTOS
    private int idProducto;
    private String nombre;
    private String descripcion;
    private BigDecimal precio;
    private int stock;

    //GET AND SET
    
    /**
     * @return the idEmpleado
     */
    public int getIdProducto() {
        return idProducto;
    }

    /**
     * @param idProducto the idEmpleado to set
     */
    public void setIdProducto(int idProducto) {
        this.idProducto = idProducto;
    }

    /**
     * @return the nombre
     */
    public String getNombre() {
        return nombre;
    }

    /**
     * @param nombre the nombre to set
     */
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    /**
     * @return the apellido
     */
    public String getDescripcion() {
        return descripcion;
    }

    /**
     * @param descripcion the apellido to set
     */
    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    /**
     * @return the dui
     */
    public BigDecimal getPrecio() {
        return precio;
    }

    public void setPrecio(BigDecimal precio) {
        this.precio = precio;
    }

    /**
     * @return the isss
     */
    public int getStock() {
        return stock;
    }

    /**
     * @param stock the isss to set
     */
    public void setStock(int stock) {
        this.stock = stock;
    }
}
