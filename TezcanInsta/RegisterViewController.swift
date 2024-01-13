//
//  RegisterViewController.swift
//  TezcanInsta
//
//  Created by Tezcan on 10.01.2024.
//

import UIKit
import Firebase
class RegisterViewController: UIViewController {
    @IBOutlet weak var mailTextField: UITextField!
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var passwordCheckTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
//testtt
    
    }
    
    @IBAction func registerClicked(_ sender: Any) {
        if mailTextField.text != "" && usernameTextField.text != "" && passwordTextField.text != "" {
            if passwordTextField.text == passwordCheckTextField.text {
                Auth.auth().createUser(withEmail: mailTextField.text!, password: passwordTextField.text!) { autDataRes, error in
                    if error != nil {
                        self.errorMessage(titleInput: "Error", messageInput: error?.localizedDescription ?? "Please check your connection and try again") }
                    else { self.performSegue(withIdentifier: "toLoginVC2", sender: nil) } } }
            else { errorMessage(titleInput: "Error", messageInput: "Password does not match") } }
        else { errorMessage(titleInput: "Error", messageInput: "Please fill all lines")
            return}
        }
    func errorMessage (titleInput: String , messageInput: String) {
        let alert = UIAlertController(title: titleInput, message: messageInput, preferredStyle: UIAlertController.Style.alert)
        let alertButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default)
        alert.addAction(alertButton)
        self.present(alert, animated: true) }
    

}
