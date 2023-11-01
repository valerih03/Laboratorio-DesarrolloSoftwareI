/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Models;

import java.util.Date;

public class ViewModelEmpleados {
        private int iDEmpleado;
	private String nombre;
	private String apellido;
	private int dUI; 
	private int iSSS;
	private Date fechadeNacimiento;
	private String telefono;
	private String email;
        private String genero;
        private int iDCargo;
        private int iDDireccion;
    /**
     * @return the iDEmpleado
     */
    public int getiDEmpleado() {
        return iDEmpleado;
    }

    /**
     * @param iDEmpleado the iDEmpleado to set
     */
    public void setiDEmpleado(int iDEmpleado) {
        this.iDEmpleado = iDEmpleado;
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
    public String getApellido() {
        return apellido;
    }

    /**
     * @param apellido the apellido to set
     */
    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    /**
     * @return the dUI
     */
    public int getdUI() {
        return dUI;
    }

    /**
     * @param dUI the dUI to set
     */
    public void setdUI(int dUI) {
        this.dUI = dUI;
    }

    /**
     * @return the iSSS
     */
    public int getiSSS() {
        return iSSS;
    }

    /**
     * @param iSSS the iSSS to set
     */
    public void setiSSS(int iSSS) {
        this.iSSS = iSSS;
    }

    /**
     * @return the fechadeNacimiento
     */
    public Date getFechadeNacimiento() {
        return fechadeNacimiento;
    }

    /**
     * @param fechadeNacimiento the fechadeNacimiento to set
     */
    public void setFechadeNacimiento(Date fechadeNacimiento) {
        this.fechadeNacimiento = fechadeNacimiento;
    }

    /**
     * @return the telefono
     */
    public String getTelefono() {
        return telefono;
    }

    /**
     * @param telefono the telefono to set
     */
    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    /**
     * @return the email
     */
    public String getEmail() {
        return email;
    }

    /**
     * @param email the email to set
     */
    public void setEmail(String email) {
        this.email = email;
    }

    /**
     * @return the genero
     */
    public String getGenero() {
        return genero;
    }

    /**
     * @param genero the genero to set
     */
    public void setGenero(String genero) {
        this.genero = genero;
    }

    /**
     * @return the iDCargo
     */
    public int getiDCargo() {
        return iDCargo;
    }

    /**
     * @param iDCargo the iDCargo to set
     */
    public void setiDCargo(int iDCargo) {
        this.iDCargo = iDCargo;
    }

    /**
     * @return the iDDireccion
     */
    public int getiDDireccion() {
        return iDDireccion;
    }

    /**
     * @param iDDireccion the iDDireccion to set
     */
    public void setiDDireccion(int iDDireccion) {
        this.iDDireccion = iDDireccion;
    }
    
}

