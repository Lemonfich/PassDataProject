//
//  ViewController.swift
//  PassDataProject
//
//  Created by Сергей on 07.02.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var NameLable: UILabel!
    
    @IBOutlet weak var loginFielderLable: UITextField!
    
    @IBOutlet weak var passwordFielderLable: UITextField!
    
    @IBOutlet weak var bottonOutlet: UIButton!
    
    
    @IBOutlet weak var resultLable: UILabel!
    
    @IBAction func buttonAction(_ sender: UIButton) {
        performSegue(withIdentifier: "detailsegue", sender: nil)
        
    }
    
    @IBAction func unwindSegueToMainScreen(segue: UIStoryboardSegue) {
        guard segue.identifier == "goHome" else { return }
        guard let svc = segue.source as? SecondViewController else { return }
        resultLable.text = svc.lableOutlet.text
        
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
       guard let dvc = segue.destination as? SecondViewController else { return }
        dvc.login = loginFielderLable.text
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true )
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()



    }


}

