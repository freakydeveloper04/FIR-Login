//
//  MenuVC.swift
//  FIR-Login
//
//  Created by Vaibhav Mehta on 05/09/19.
//  Copyright © 2019 TheDeveloperHub. All rights reserved.
//

import UIKit
import Firebase

class MenuVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if Auth.auth().currentUser != nil{
            
            self.performSegue(withIdentifier: "toHome", sender: self)
        }
    }
    
    @IBAction func loginButton(_ sender: UIButton) {
        
            self.dismiss(animated: true, completion: nil)
            let story = UIStoryboard(name: "Main", bundle: nil)
            let vcc = story.instantiateViewController(withIdentifier: "login")
            vcc.modalPresentationStyle = .overCurrentContext
            self.present(vcc, animated: true, completion: nil)
    }
    
    @IBAction func signupButton(_ sender: UIButton) {
        
        self.dismiss(animated: true, completion: nil)
        let story = UIStoryboard(name: "Main", bundle: nil)
        let vcc = story.instantiateViewController(withIdentifier: "signup")
        vcc.modalPresentationStyle = .overCurrentContext
        self.present(vcc, animated: true, completion: nil)
        
    }
    
}
