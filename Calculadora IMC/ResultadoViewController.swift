//
//  ResultadoViewController.swift
//  Calculadora IMC
//
//  Created by Maikon Ferreira on 04/12/21.
//

import UIKit

class ResultadoViewController: UIViewController {
   
    
    //OUTLETS
    @IBOutlet weak var resultadoLabel: UILabel!
    @IBOutlet weak var conselhoLabel: UILabel!
    @IBOutlet var telaBackground: UIView!
    
    //VARS
    var imcValor: Float = 0.00
    var corDeFundo: UIColor = UIColor.clear
    var conselho: String = "conselho 6"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        resultadoLabel.text = "\(imcValor)"
        telaBackground.backgroundColor = corDeFundo
        conselhoLabel.text = conselho
    }
    
    //VOLTAR
    @IBAction func calcularNovamenteApertado(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    
}
