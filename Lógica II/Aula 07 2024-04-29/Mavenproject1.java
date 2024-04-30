package com.mycompany.mavenproject1;

import javax.swing.JOptionPane;

public class Mavenproject1 {

    public static void main(String[] args) {
        // JOptionPane.showMessageDialog é utilizado para apresentar mensagem
        // JOptionPane.showMessageDialog(null, "Olá mundo");

        // String é utilizado para armazenar texto
        // JOptionPane.showInputDialog é utilizado para solicitar uma informação
        String nome = JOptionPane.showInputDialog("Digite o seu nome");
        // Integer.parseInt é um conversor de String(texto) para int(inteiro)
        int idade = Integer.parseInt(JOptionPane.showInputDialog("Digite a idade"));
        // double é utilizado para números reais
        double peso = Double.parseDouble(JOptionPane.showInputDialog("Digite o peso"));
        double altura = Double.parseDouble(JOptionPane.showInputDialog("Digite a altura"));
        double imc = peso / (altura * altura);
        String status = "";
        if (imc < 18.5) {
            status = "Abaixo do peso";
        } else if (imc < 25) {
            status = "Peso normal";
        } else {
            status = "Sobrepeso";
        }
        JOptionPane.showMessageDialog(null, "Nome: " + nome
                + "\nIdade: " + idade
                + "\nPeso: " + peso
                + "\nAltura: " + altura
                + "\nImc: " + imc
                + "\nStatus: " + status);
    }
}
