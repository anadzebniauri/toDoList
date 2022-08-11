//
//  RegistrationPage.swift
//  toDoList
//
//  Created by Ana Dzebniauri on 09.08.22.
//

import UIKit
import Foundation
import FirebaseAuth

class RegistrationPage: UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet private weak var passwordTextField: UITextField!
    private var model = RegistrationPageModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        }
    
    
    @IBAction func didClickOnSignIn(_ sender: UIButton) {
        model.signUp(email: self.emailTextField.text ?? "", password: self.passwordTextField.text ?? "")
        
    }
}

class RegistrationPageModel {
    func signUp(email: String, password: String) {
        FirebaseAuth.Auth.auth().createUser(withEmail: email,
                                            password: password) { result, error in
            print(result)
        }
    }
}
