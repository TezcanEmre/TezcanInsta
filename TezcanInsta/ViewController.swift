//
//  ViewController.swift
//  TezcanInsta
//
//  Created by Tezcan on 9.01.2024.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var appNameLabel: UILabel!
    @IBOutlet weak var appDescribLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toLoginVC" { let destinationVC = segue.destination as! LoginViewController }
        else if segue.identifier == "toRegisterVC" { let destinationVC = segue.destination as! RegisterViewController } }
    
    @IBAction func loginButtonClicked(_ sender: Any) { performSegue(withIdentifier: "toLoginVC", sender: nil) }
    @IBAction func registerButtonClicked(_ sender: Any) { performSegue(withIdentifier: "toRegisterVC", sender: nil) }
    }

