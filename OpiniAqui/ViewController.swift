//
//  ViewController.swift
//  OpiniAqui
//
//  Created by Luís Antônio de Oliveira Santos on 03/05/2018.
//  Copyright © 2018 Luís Antônio de Oliveira Santos. All rights reserved.
//

import UIKit
import FirebaseAuth

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let autenticacao = Auth.auth()
/*
        //deslogar
        
        do {
         try autenticacao.signOut()
         } catch {
         print("Erro ao deslogar usuario")
         }
*/
        autenticacao.addStateDidChangeListener { (autenticacao, usuario) in
            
            if let usuarioLogado = usuario {
                self.performSegue(withIdentifier: "loginAutomaticoSegue", sender: nil)
            }
            
        }
        
        
    }
    
    //Ocultar barra de navegação
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(true, animated: false)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

