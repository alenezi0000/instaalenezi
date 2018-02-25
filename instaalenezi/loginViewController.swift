//
//  loginViewController.swift
//  instaalenezi
//
//  Created by Aziz Alenezi on 2/25/18.
//  Copyright © 2018 Aziz Alenezi. All rights reserved.
//

import UIKit
import parse

class loginViewController: UIViewController {

    @IBOutlet weak var usernameField: UITextField!
    
    @IBOutlet weak var passwordField: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onSignIn(_ sender: Any) {
    }
    
    @IBAction func onSingUp(_ sender: Any) {
        let newUser = PFUser()
        let newUser = PFUser()
        
      
        newUser.username = usernameLabel.text
        newUser.email = emailLabel.text
        newUser.password = passwordLabel.text
        
        
        newUser.signUpInBackground { (success: Bool, error: Error?) in
            if let error = error {
                print(error.localizedDescription)
            } else {
                print("User Registered successfully")
                
            }
        }
    }
    }
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
