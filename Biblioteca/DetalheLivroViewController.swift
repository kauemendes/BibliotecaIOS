//
//  DetalheLivroViewController.swift
//  Biblioteca
//
//  Created by Kaue Mendes on 3/17/15.
//  Copyright (c) 2015 Fellas Group. All rights reserved.
//

import UIKit

protocol DetalheViewControllerDelegate:class{
    
    func livroFavoritado(livro:String)
    
}

class DetalheLivroViewController: UIViewController {
    
    var nomeLivro: String = ""
    weak var delegate: DetalheViewControllerDelegate?
    
    @IBOutlet weak var nomeLivroLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nomeLivroLabel.text = nomeLivro
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func fechar(sender: UIButton) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    
    @IBAction func marcarFavorito(sender: UIButton) {
        delegate?.livroFavoritado(nomeLivro)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
