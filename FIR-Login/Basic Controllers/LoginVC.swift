//
//  LoginVC.swift
//  FIR-Login
//
//  Created by Vaibhav Mehta on 05/09/19.
//  Copyright © 2019 TheDeveloperHub. All rights reserved.
//

import UIKit
import Firebase

class LoginVC: UIViewController {

    @IBOutlet weak var usernameTxt: UITextField!
    @IBOutlet weak var passwordTxt: UITextField!
   
    override func viewDidLoad() {
        super.viewDidLoad()

        usernameTxt.text = ""
        passwordTxt.text = ""
    }

 
    @IBAction func loginButton(_ sender: UIButton) {
        
        guard let username = usernameTxt.text else {return}
        guard let password = passwordTxt.text else {return}
            
            Auth.auth().signIn(withEmail: username, password: password){ user, error in
                
                if error == nil && user != nil{
                print("User Logged In")
                    
                    let story = UIStoryboard(name: "Main", bundle: nil)
                    let vcc = story.instantiateViewController(withIdentifier: "homevc")
                    vcc.modalPresentationStyle = .overCurrentContext
                    self.present(vcc, animated: true, completion: nil)
                }
                else{
                    
                    let alert = UIAlertController(title: "Alert", message: "Error logging in: \(error!.localizedDescription)", preferredStyle: UIAlertController.Style.alert)
                    alert.addAction(UIAlertAction(title: "Try Again", style: UIAlertAction.Style.default, handler: nil))
                    self.present(alert, animated: true, completion: nil)
                }
            }
        }
}
