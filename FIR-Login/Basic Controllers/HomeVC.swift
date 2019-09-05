//
//  HomeVC.swift
//  FIR-Login
//
//  Created by Vaibhav Mehta on 05/09/19.
//  Copyright © 2019 TheDeveloperHub. All rights reserved.
//

import UIKit
import Firebase

class HomeVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func logoutButton(_ sender: UIButton) {
        
        try! Auth.auth().signOut()
        self.dismiss(animated: false, completion: nil)
    }
}
