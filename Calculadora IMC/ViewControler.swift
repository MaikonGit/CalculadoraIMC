//
//  ViewControler.swift
//  Calculadora IMC
//
//  Created by Maikon Ferreira on 04/12/21.
//

import UIKit

class ViewController: UIViewController {

    //VARIAVEIS e CONSTANTES
    var calculadoraBrain = CalculadoraBrain()
    
    
    //LABELS
    @IBOutlet weak var alturaLabel: UILabel!
    @IBOutlet weak var pesoLabel: UILabel!
    //SLIDERS
    @IBOutlet weak var alturaSlider: UISlider!
    @IBOutlet weak var pesoSlider: UISlider!
    
     
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //SLIDER ALTURA
    @IBAction func alteracaoAlturaSlider(_ sender: UISlider) {
        let altura = round(sender.value * 100) / 100
        alturaLabel.text = "\(altura) M"
    }
    
    
    //SLIDER PESO
    @IBAction func alteracaoPesoSlider(_ sender: UISlider) {
        let peso = Int(sender.value)
        pesoLabel.text = "\(peso) Kg"
    }
    
    
    
    
    //BOTAO CALCULAR
    @IBAction func calcularApertado(_ sender: UIButton) {
        let altura = alturaSlider.value
        let peso = pesoSlider.value
        
        calculadoraBrain.imcCalculado(altura: altura, peso: peso)
        calculadoraBrain.nivelDeObesidade()
        
        performSegue(withIdentifier: "proximaTela", sender: self)
        }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       
        let proximaTelaSegue = segue.destination as! ResultadoViewController
        proximaTelaSegue.imcValor = calculadoraBrain.imcResultado()
        proximaTelaSegue.corDeFundo = calculadoraBrain.corDeFundoReturn()
        proximaTelaSegue.conselho = calculadoraBrain.conselhoReturn()
    }
    
    
    
    
  
}
