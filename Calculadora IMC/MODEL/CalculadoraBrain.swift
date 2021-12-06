//
//  CalculadoraBrain.swift
//  Calculadora IMC
//
//  Created by Maikon Ferreira on 04/12/21.
//

import UIKit

struct CalculadoraBrain {
    
    var imcValor: Float = 0.0
    var corDeFundo: UIColor = UIColor.clear
    var conselho: String = "conselho"
    
    //CALCULO IMC
    mutating func imcCalculado(altura: Float, peso: Float) {
        imcValor = peso / (altura * altura)
       

        
    }
    //RETORNANDO IMC
    func imcResultado() -> Float {

        let resultado = round(imcValor * 10) / 10
        return resultado
      
    }
    
    //RETORNANDO COR
    func corDeFundoReturn() -> UIColor {
        let corDeFundo = corDeFundo
        return corDeFundo
    }
    
    //RETORNANDO CONSELHO
    func conselhoReturn() -> String {
        let conselho = conselho
        return conselho
    }

    mutating func nivelDeObesidade() {
        if imcResultado() < 18.5 {
            corDeFundo = UIColor.red
            conselho = "Cuidado, voce está muito magro"
        } else if imcResultado()  <= 24.9 {
            corDeFundo = UIColor.verdeOpaco
            conselho = "Relaxe, seu IMC está normal"
        } else if imcResultado() <= 29.9 {
            corDeFundo = UIColor.orange
            conselho = "Cuidado, voce está acima do peso"
        } else if imcResultado() > 29.9 {
            corDeFundo = UIColor.red
            conselho = "Cuidado, voce está gordola"
        }
    }
    
}






