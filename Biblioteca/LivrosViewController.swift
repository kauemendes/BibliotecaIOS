//
//  LivrosViewController.swift
//  Biblioteca
//
//  Created by Kaue Mendes on 3/17/15.
//  Copyright (c) 2015 Fellas Group. All rights reserved.
//

import UIKit

class LivrosViewController: UIViewController , DetalheViewControllerDelegate {
    
    private var livrosArr = ["Futebol - Uma janela para o Brasil",
        "A terra dos sonhos",
        "Manga",
        "Como se faz?"]
    
    
    @IBOutlet weak var livroFavoritado: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func visualizarLivros(sender: UIButton) {
        performSegueWithIdentifier("livroParaDetalheSegue", sender: sender)
    }
    
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        var detalheVC = segue.destinationViewController as  DetalheLivroViewController
        detalheVC.delegate = self
        
        if let i = sender?.tag{
            detalheVC.nomeLivro = livrosArr[i]
        }
    }
    
    func livroFavoritado(livro: String) {
        livroFavoritado.text = livro
    }
    
    
}
