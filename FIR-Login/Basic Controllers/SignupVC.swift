//
//  SignupVC.swift
//  FIR-Login
//
//  Created by Vaibhav Mehta on 05/09/19.
//  Copyright © 2019 TheDeveloperHub. All rights reserved.
//

import UIKit
import Firebase

class SignupVC: UIViewController {

    @IBOutlet weak var usernameTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func signupButton(_ sender: UIButton) {
        
        guard let username = usernameTF.text else {return}
        guard let password = passwordTF.text else {return}
        
        Auth.auth().createUser(withEmail: username, password: password) {user, error in
            
            if error == nil && user != nil{
                print("User Created")
                
                let story = UIStoryboard(name: "Main", bundle: nil)
                let vcc = story.instantiateViewController(withIdentifier: "homevc")
                vcc.modalPresentationStyle = .overCurrentContext
                self.present(vcc, animated: true, completion: nil)
            }
            
            else{
                
                let alert = UIAlertController(title: "Alert", message: "Error: \(error!.localizedDescription)", preferredStyle: UIAlertController.Style.alert)
                alert.addAction(UIAlertAction(title: "Try Again", style: UIAlertAction.Style.default, handler: nil))
                self.present(alert, animated: true, completion: nil)
            }
        }
    }
}
