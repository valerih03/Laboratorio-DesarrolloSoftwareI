/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/GUIForms/JFrame.java to edit this template
 */
package com.mycompany.ejercicio2;

import java.text.DecimalFormat;
import javax.swing.JComboBox;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JTextField;

/**
 *
 * @author hvale
 */
public class NotasFrame extends javax.swing.JFrame {

    /**
     * Creates new form NotasFrame
     */
    public NotasFrame() {
        initComponents();
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        buttonGroup1 = new javax.swing.ButtonGroup();
        jLabel1 = new javax.swing.JLabel();
        jLabel2 = new javax.swing.JLabel();
        jLabel3 = new javax.swing.JLabel();
        jLabel4 = new javax.swing.JLabel();
        jLabel5 = new javax.swing.JLabel();
        txNombre = new javax.swing.JTextField();
        txCUM = new javax.swing.JTextField();
        cbCarrera = new javax.swing.JComboBox<>();
        cbMateria4 = new javax.swing.JComboBox<>();
        jLabel6 = new javax.swing.JLabel();
        jLabel7 = new javax.swing.JLabel();
        jLabel8 = new javax.swing.JLabel();
        cbMateria5 = new javax.swing.JComboBox<>();
        jComboBox4 = new javax.swing.JComboBox<>();
        uv3 = new javax.swing.JComboBox<>();
        uv4 = new javax.swing.JComboBox<>();
        cbMateria3 = new javax.swing.JComboBox<>();
        cbMateria1 = new javax.swing.JComboBox<>();
        uv5 = new javax.swing.JComboBox<>();
        cbMateria2 = new javax.swing.JComboBox<>();
        btCalcular = new javax.swing.JButton();
        uv2 = new javax.swing.JComboBox<>();
        txNota1 = new javax.swing.JTextField();
        txNota2 = new javax.swing.JTextField();
        txNota3 = new javax.swing.JTextField();
        txNota4 = new javax.swing.JTextField();
        txNota5 = new javax.swing.JTextField();
        jLabel10 = new javax.swing.JLabel();
        lbEst1 = new javax.swing.JLabel();
        lbEst2 = new javax.swing.JLabel();
        lbEst3 = new javax.swing.JLabel();
        lbEst4 = new javax.swing.JLabel();
        lbEst5 = new javax.swing.JLabel();
        jLabel16 = new javax.swing.JLabel();
        lbCalcular = new javax.swing.JLabel();
        uv1 = new javax.swing.JComboBox<>();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

        jLabel1.setFont(new java.awt.Font("Arial", 0, 18)); // NOI18N
        jLabel1.setText("Control de Notas");

        jLabel2.setText("Nombre");

        jLabel3.setText("Ciclo");

        jLabel4.setText("Carrera");

        jLabel5.setText("CUM");

        cbCarrera.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "Seleccione una opción", "Ing. Sistemas", "Ing. Industrial", "Ing. Electrica", "Ing. Agronegocios" }));

        cbMateria4.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "Seleccione una opción:", "Investigacion de Operaciones ", "Desarrollo de Software", "Base de Datos II", "Legislacion Aplicada a la Empresa", "Electronica" }));

        jLabel6.setFont(new java.awt.Font("Segoe UI", 0, 14)); // NOI18N
        jLabel6.setText("Materia");

        jLabel7.setFont(new java.awt.Font("Segoe UI", 0, 14)); // NOI18N
        jLabel7.setText("UV");

        jLabel8.setFont(new java.awt.Font("Segoe UI", 0, 14)); // NOI18N
        jLabel8.setText("Nota");

        cbMateria5.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "Seleccione una opción:", "Investigacion de Operaciones ", "Desarrollo de Software", "Base de Datos II", "Legislacion Aplicada a la Empresa", "Electronica", " " }));

        jComboBox4.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "Seleccione una opción", "Ciclo 1", "Ciclo 2", " " }));
        jComboBox4.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jComboBox4ActionPerformed(evt);
            }
        });

        uv3.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "3", "4" }));

        uv4.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "3", "4", " " }));

        cbMateria3.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "Seleccione una opción:", "Investigacion de Operaciones ", "Desarrollo de Software", "Base de Datos II", "Legislacion Aplicada a la Empresa", "Electronica" }));

        cbMateria1.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "Seleccione una opción:", "Investigacion de Operaciones ", "Desarrollo de Software", "Base de Datos II", "Legislacion Aplicada a la Empresa", "Electronica" }));
        cbMateria1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                cbMateria1ActionPerformed(evt);
            }
        });

        uv5.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "3", "4" }));

        cbMateria2.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "Seleccione una opción:", "Investigacion de Operaciones ", "Desarrollo de Software", "Base de Datos II", "Legislacion Aplicada a la Empresa", "Electronica" }));

        btCalcular.setText("Calcular");
        btCalcular.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btCalcularActionPerformed(evt);
            }
        });

        uv2.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "3", "4" }));

        jLabel10.setFont(new java.awt.Font("Microsoft YaHei UI", 0, 12)); // NOI18N
        jLabel10.setText("Estado");

        lbEst1.setFont(new java.awt.Font("Microsoft YaHei UI", 0, 12)); // NOI18N
        lbEst1.setText("Estado");

        lbEst2.setFont(new java.awt.Font("Microsoft YaHei UI", 0, 12)); // NOI18N
        lbEst2.setText("Estado");

        lbEst3.setFont(new java.awt.Font("Microsoft YaHei UI", 0, 12)); // NOI18N
        lbEst3.setText("Estado");

        lbEst4.setFont(new java.awt.Font("Microsoft JhengHei UI", 0, 12)); // NOI18N
        lbEst4.setText("Estado");

        lbEst5.setFont(new java.awt.Font("Microsoft JhengHei UI", 0, 12)); // NOI18N
        lbEst5.setText("Estado");

        jLabel16.setText("No me funciono la imagen :((");

        uv1.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "3", "4" }));

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createSequentialGroup()
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(layout.createSequentialGroup()
                                .addGap(133, 133, 133)
                                .addComponent(jLabel2)
                                .addGap(107, 107, 107)
                                .addComponent(jLabel4))
                            .addGroup(layout.createSequentialGroup()
                                .addGap(120, 120, 120)
                                .addComponent(txNombre, javax.swing.GroupLayout.PREFERRED_SIZE, 88, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addGap(33, 33, 33)
                                .addComponent(cbCarrera, javax.swing.GroupLayout.PREFERRED_SIZE, 153, javax.swing.GroupLayout.PREFERRED_SIZE)))
                        .addGap(8, 8, 8))
                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                        .addComponent(jLabel6)
                        .addGap(107, 107, 107)))
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createSequentialGroup()
                        .addGap(32, 32, 32)
                        .addComponent(jComboBox4, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(71, 71, 71)
                        .addComponent(txCUM, javax.swing.GroupLayout.PREFERRED_SIZE, 89, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                    .addGroup(layout.createSequentialGroup()
                        .addGap(78, 78, 78)
                        .addComponent(jLabel3)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addComponent(jLabel5)
                        .addGap(127, 127, 127))
                    .addGroup(layout.createSequentialGroup()
                        .addGap(72, 72, 72)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                            .addComponent(txNota5, javax.swing.GroupLayout.PREFERRED_SIZE, 75, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addGroup(layout.createSequentialGroup()
                                .addComponent(jLabel7)
                                .addGap(93, 93, 93)
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                                    .addComponent(txNota4, javax.swing.GroupLayout.PREFERRED_SIZE, 75, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                            .addComponent(txNota1, javax.swing.GroupLayout.PREFERRED_SIZE, 75, javax.swing.GroupLayout.PREFERRED_SIZE)
                                            .addComponent(txNota2, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.PREFERRED_SIZE, 75, javax.swing.GroupLayout.PREFERRED_SIZE)
                                            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                                                .addComponent(jLabel8)
                                                .addGap(28, 28, 28)))
                                        .addComponent(txNota3, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.PREFERRED_SIZE, 75, javax.swing.GroupLayout.PREFERRED_SIZE)))))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(lbEst1, javax.swing.GroupLayout.Alignment.TRAILING)
                            .addComponent(jLabel10, javax.swing.GroupLayout.Alignment.TRAILING)
                            .addComponent(lbEst2, javax.swing.GroupLayout.Alignment.TRAILING)
                            .addComponent(lbEst3, javax.swing.GroupLayout.Alignment.TRAILING)
                            .addComponent(lbEst4, javax.swing.GroupLayout.Alignment.TRAILING)
                            .addComponent(lbEst5, javax.swing.GroupLayout.Alignment.TRAILING))
                        .addGap(63, 63, 63))))
            .addGroup(layout.createSequentialGroup()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                    .addGroup(layout.createSequentialGroup()
                        .addGap(296, 296, 296)
                        .addComponent(jLabel1))
                    .addGroup(layout.createSequentialGroup()
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(layout.createSequentialGroup()
                                .addContainerGap()
                                .addComponent(jLabel16))
                            .addGroup(layout.createSequentialGroup()
                                .addGap(52, 52, 52)
                                .addComponent(btCalcular)))
                        .addGap(31, 31, 31)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(layout.createSequentialGroup()
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                    .addComponent(cbMateria2, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addComponent(cbMateria3, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addComponent(cbMateria4, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addComponent(cbMateria5, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addComponent(cbMateria1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                                .addGap(50, 50, 50)
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                                    .addComponent(uv4, javax.swing.GroupLayout.Alignment.TRAILING, 0, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                    .addComponent(uv3, javax.swing.GroupLayout.Alignment.TRAILING, 0, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                    .addComponent(uv2, javax.swing.GroupLayout.Alignment.TRAILING, 0, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                    .addComponent(uv5, javax.swing.GroupLayout.Alignment.TRAILING, 0, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                    .addComponent(uv1, javax.swing.GroupLayout.Alignment.TRAILING, 0, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)))
                            .addComponent(lbCalcular, javax.swing.GroupLayout.PREFERRED_SIZE, 450, javax.swing.GroupLayout.PREFERRED_SIZE))))
                .addContainerGap(192, Short.MAX_VALUE))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGap(11, 11, 11)
                .addComponent(jLabel1)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jLabel5, javax.swing.GroupLayout.Alignment.TRAILING)
                    .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                        .addComponent(jLabel2)
                        .addComponent(jLabel3)
                        .addComponent(jLabel4)))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                        .addComponent(cbCarrera, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addComponent(jComboBox4, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addComponent(txCUM, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addComponent(txNombre, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(42, 42, 42)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel6)
                    .addComponent(jLabel10)
                    .addComponent(jLabel8)
                    .addComponent(jLabel7))
                .addGap(33, 33, 33)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                    .addGroup(layout.createSequentialGroup()
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(uv1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(txNota1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(lbEst1))
                        .addGap(18, 18, 18)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(txNota2, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(lbEst2)
                            .addComponent(jLabel16)
                            .addComponent(uv2, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)))
                    .addGroup(layout.createSequentialGroup()
                        .addComponent(cbMateria1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(18, 18, 18)
                        .addComponent(cbMateria2, javax.swing.GroupLayout.PREFERRED_SIZE, 22, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addGap(18, 18, 18)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(uv3, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(txNota3, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(lbEst3)
                    .addComponent(cbMateria3, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(18, 18, 18)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(uv4, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(cbMateria4, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(txNota4, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(lbEst4))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(uv5, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(cbMateria5, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(txNota5, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(lbEst5)
                    .addComponent(btCalcular))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(lbCalcular, javax.swing.GroupLayout.PREFERRED_SIZE, 38, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void jComboBox4ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jComboBox4ActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_jComboBox4ActionPerformed

    private void btCalcularActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btCalcularActionPerformed
        String Nombre = txNombre.getText();
        String NombreA = ""; //para la vaiable bandera
        String Carrera = "";//para la vaiable bandera
        String CarreraSeleccionada = (String)this.cbCarrera.getSelectedItem();
        String Ciclo = "";//para la vaiable bandera
        String CicloSeleccionado = (String)this.cbMateria4.getSelectedItem();
        JComboBox[] Materias = {cbMateria1, cbMateria2, cbMateria3, cbMateria4, cbMateria5};//Para hacer de una las validadciones de las materias
        String MateriaA="";//para la vaiable bandera
        JComboBox[] UV = {uv1, uv2, uv3, uv4, uv5};//Para hacer de una las validadciones de las UV
        String UVa="";//para la vaiable bandera
        JTextField[] Notas = {txNota1, txNota2, txNota3, txNota4, txNota5};//Para hacer de una las validadciones de las notas
        String NotasA="";//para la vaiable bandera
        double notaP; //Para parsearla
        double UVp;//Para parsearla
        double AlmacenNotaUV=0.00;
        double AlmacenUV=0.00;
        JLabel[] Estados = {lbEst1, lbEst2, lbEst3, lbEst4, lbEst5};// servira para las notas aprobadas
        int cA = 0;//contadores
        int cR = 0;//contadores
        double CUM=0.00; 
        String CUMtf="";//cum pasado a string para mostrarlo en tf
        if(Nombre.isEmpty()){
           NombreA = "-1";
           JOptionPane.showMessageDialog(this, "Digite su nombre", "Error",JOptionPane.ERROR_MESSAGE);
       }
       
       //Validacon Carrera
       if("-".equals(CarreraSeleccionada)){
           Carrera="-1";
           JOptionPane.showMessageDialog(this, "Seleccione una carrera","Error",JOptionPane.ERROR_MESSAGE);
       }
       //Validacion Ciclos
       if("-".equals(CicloSeleccionado)){
           Ciclo="-1";
           JOptionPane.showMessageDialog(this, "Seleccione el ciclo que cursa actualmente","Error", JOptionPane.ERROR_MESSAGE);
       }
       
       //Validacion Materias
       for(int i=0;i<5;i++){
           if("-".equals(Materias[i].getSelectedItem())){
               MateriaA="-1";
               JOptionPane.showMessageDialog(this,"Seleccione una materia "+(i+1), "Error", JOptionPane.ERROR_MESSAGE);
           }
       }
       //Validacon UV
       for(int i=0;i<5;i++){
           if("0".equals(UV[i].getSelectedItem())){
               UVa="-1";
               JOptionPane.showMessageDialog(this,"Seleccione el UV dependiendo su materia"+(i+1), "Error", JOptionPane.ERROR_MESSAGE);
           }
       }
       
       //Validacion notas
       for(int i=0;i<5;i++){
           if(Notas[i].getText().isEmpty()){
               NotasA="-1";
               JOptionPane.showMessageDialog(this, "Digite su nota "+(i+1),"Error",JOptionPane.ERROR_MESSAGE);
           }
       }
       //Estados Aprobados o Reprobados
       for(int i=0;i<5;i++){
           notaP=Double.parseDouble(Notas[i].getText());
           if(notaP<6 && notaP>-1){
               Estados[i].setText("Reprobado");
               cR++;
           }else if(notaP>5 && notaP<11){
                    Estados[i].setText("Aprobado");
                    cA++;
           }else{
               Estados[i].setText("Estado");
           }
       }
       //Calculo CUM
       
       for(int i=0;i<5;i++){
           notaP=Double.parseDouble(Notas[i].getText());;
           UVp=Double.parseDouble(UV[i].getSelectedItem().toString());
           AlmacenNotaUV+=(notaP*UVp);
           AlmacenUV+=UVp;
           
           CUM=AlmacenNotaUV/AlmacenUV;
           
           // para dejar cum en formato de 2 decimales
           DecimalFormat formato = new DecimalFormat("#.##");
           
           CUMtf=formato.format(CUM);
           
           
           txCUM.setText(CUMtf);
           
       }
       //Para el label del final
       if(!"-1".equals(NombreA) && !"-1".equals(Carrera)&& !"-1".equals(Ciclo)&& !"-1".equals(MateriaA)&& !"-1".equals(UVa)&& !"-1".equals(NotasA)){
            lbCalcular.setText(Nombre + " su estado actual es de "
                    +cA+" materias aprobadas y "
                    +cR+" materias reprobadas "
                    +CUM
            );
        }
    }//GEN-LAST:event_btCalcularActionPerformed
    
    private void cbMateria1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_cbMateria1ActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_cbMateria1ActionPerformed

    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(NotasFrame.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(NotasFrame.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(NotasFrame.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(NotasFrame.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new NotasFrame().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton btCalcular;
    private javax.swing.ButtonGroup buttonGroup1;
    private javax.swing.JComboBox<String> cbCarrera;
    private javax.swing.JComboBox<String> cbMateria1;
    private javax.swing.JComboBox<String> cbMateria2;
    private javax.swing.JComboBox<String> cbMateria3;
    private javax.swing.JComboBox<String> cbMateria4;
    private javax.swing.JComboBox<String> cbMateria5;
    private javax.swing.JComboBox<String> jComboBox4;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel10;
    private javax.swing.JLabel jLabel16;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JLabel jLabel6;
    private javax.swing.JLabel jLabel7;
    private javax.swing.JLabel jLabel8;
    private javax.swing.JLabel lbCalcular;
    private javax.swing.JLabel lbEst1;
    private javax.swing.JLabel lbEst2;
    private javax.swing.JLabel lbEst3;
    private javax.swing.JLabel lbEst4;
    private javax.swing.JLabel lbEst5;
    private javax.swing.JTextField txCUM;
    private javax.swing.JTextField txNombre;
    private javax.swing.JTextField txNota1;
    private javax.swing.JTextField txNota2;
    private javax.swing.JTextField txNota3;
    private javax.swing.JTextField txNota4;
    private javax.swing.JTextField txNota5;
    private javax.swing.JComboBox<String> uv1;
    private javax.swing.JComboBox<String> uv2;
    private javax.swing.JComboBox<String> uv3;
    private javax.swing.JComboBox<String> uv4;
    private javax.swing.JComboBox<String> uv5;
    // End of variables declaration//GEN-END:variables
}
