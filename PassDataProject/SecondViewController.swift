//
//  SecondViewController.swift
//  PassDataProject
//
//  Created by Сергей on 07.02.2023.
//

import UIKit

class SecondViewController: UIViewController {

    
    var login: String?
    
    @IBOutlet weak var lableOutlet: UILabel!
    
    @IBOutlet weak var buttonOutlet: UIButton!
    
    @IBAction func buttonAction(_ sender: UIButton) {
        performSegue(withIdentifier: "goHome", sender: nil)
        
    }
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let login = self.login else { return }
        lableOutlet.text = "Hello,\(login)"
        
        
    }
    

}
