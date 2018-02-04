//
//  ViewController.swift
//  Minhas Anotações
//
//  Created by Ronaldo Cagliari on 04/02/2018.
//  Copyright © 2018 tresrw.com.br. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // Campo de texto para anotação
    @IBOutlet weak var textoCampo: UITextView!
    let chave = "minhaAnotacao"

    
    // Botão Salvar
    @IBAction func btnSalvar(_ sender: Any) {
        if let texto = textoCampo.text{
            UserDefaults.standard.set(texto, forKey: chave)
        }
    }
    
    // Função pararecuperar a anotação
    func recuperarAnotacao() -> String {
        
        if let textoRecuperado = UserDefaults.standard.object(forKey: chave) {
            return textoRecuperado as! String
        }
        
        return ""
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textoCampo.text = recuperarAnotacao()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

