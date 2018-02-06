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
    // Cria uma constante para armazenar a chave para acesso posterior
    let chave = "minhaAnotacao"

    
    // Botão Salvar
    @IBAction func btnSalvar(_ sender: Any) {
        // recpera o que o usuário digitou no textoCampo
        if let texto = textoCampo.text{
            // UserDefauts utilizando uma chave para salvar o texto
            UserDefaults.standard.set(texto, forKey: chave)
        }
    }
    
    // Função para recuperar a anotação, retorna uma String
    func recuperarAnotacao() -> String {
        // Cria uma constante para recuperar a anotação utilizando a chave
        if let textoRecuperado = UserDefaults.standard.object(forKey: chave) {
            // Se for possível recuperar o texto retorna textoRecuperado se não retorna uma string vazia
            return textoRecuperado as! String // Faz um cast (conversão)
        }
        return ""
    }
    
    // Método para esconder a barra de status
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    
    // Método para esconder o teclado
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
        //print("Usuário pressionou a tela")
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

