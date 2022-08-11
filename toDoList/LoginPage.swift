//
//  LoginPage.swift
//  toDoList
//
//  Created by Ana Dzebniauri on 10.08.22.
//
import UIKit
import Foundation
import Firebase
import FirebaseAuth

class LoginPage: UIViewController {
    
    
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var psswrd: UITextField!
    @IBOutlet weak var signIn: UIButton!
    @IBOutlet weak var signUp: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.email.layer.cornerRadius = 20
        self.email.layer.borderColor = .init(red: 111, green: 95, blue: 144, alpha: 1)
        self.email.layer.borderWidth = 0.5
        
        self.psswrd.layer.cornerRadius = 20
        self.psswrd.layer.borderColor = .init(red: 111, green: 95, blue: 144, alpha: 1)
        self.psswrd.layer.borderWidth = 2
        
        self.signIn.layer.cornerRadius = 20
        self.signUp.layer.cornerRadius = 20
        
    }
    
    
    @IBAction func signInBtn(_ sender: Any) {
    }
    
    
    @IBAction func signUpBtn(_ sender: Any) {
        let username = email
        let password = psswrd
        if email.text != username?.text || psswrd.text != password?.text {
            showAlert(sender)
        }
        else {
            let registrationPage = self.storyboard?.instantiateViewController(withIdentifier: "RegistrationPage") as? RegistrationPage
            guard let registrationPage = registrationPage else { return }
            navigationController?.pushViewController(registrationPage, animated: true)
        }
    }
        
    func showAlert(_ sender: Any) {
        let alertController = UIAlertController(title: "Oops", message: "incorrect credentials", preferredStyle: .actionSheet)
        let action = UIAlertAction(title: "ok", style: .cancel)
        alertController.addAction(action)
        self.present(alertController, animated: true)
    }
    
}
