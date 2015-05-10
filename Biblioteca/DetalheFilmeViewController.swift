//
//  DetalheFilmeViewController.swift
//  Biblioteca
//
//  Created by Kaue Mendes on 3/17/15.
//  Copyright (c) 2015 Fellas Group. All rights reserved.
//

import UIKit

class DetalheFilmeViewController: UIViewController {

    var nomeFilme: String = ""
    @IBOutlet weak var nameFilmeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nameFilmeLabel.text = nomeFilme
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func fechar(sender: UIButton) {
        dismissViewControllerAnimated(true, completion: nil)
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