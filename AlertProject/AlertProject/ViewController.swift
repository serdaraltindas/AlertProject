//
//  ViewController.swift
//  AlertProject
//
//  Created by Serdar Altındaş on 8.03.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var passwordAgainText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    @IBOutlet weak var nameText: UITextField!
    @IBOutlet weak var myLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func sıgnUpClicked(_ sender: Any) {
        
        if nameText.text == "" {
            let alert = UIAlertController(title: "Error!", message: "Usurname Not Found!", preferredStyle: UIAlertController.Style.alert)
            let okButton = UIAlertAction(title:"OK", style: UIAlertAction.Style.cancel)
            alert.addAction(okButton)
            self.present(alert, animated: true)
        }
        else if passwordText.text == "" {
            let alert = UIAlertController(title: "Error!", message: "Password Is Wrong!", preferredStyle: UIAlertController.Style.alert)
            let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.cancel)
            alert.addAction(okButton)
            self.present(alert, animated: true)
        }
        else if passwordAgainText.text == "" {
            let alert = UIAlertController(title: "Error!", message: "Password Again Is Wrong!", preferredStyle: UIAlertController.Style.alert)
            let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.cancel)
            alert.addAction(okButton)
            self.present(alert, animated: true)
        }
        else if passwordText.text != passwordAgainText.text {
            let alert = UIAlertController(title: "Error!", message: "Passwords Are Not Equal!", preferredStyle: UIAlertController.Style.alert)
            let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.cancel)
            alert.addAction(okButton)
            self.present(alert, animated: true)
        }
        else {
            let alert = UIAlertController(title: "GOOD JOB!", message: "YOU SIGNED UP!", preferredStyle: UIAlertController.Style.alert)
            let okButton = UIAlertAction(title: "OK", style: .cancel)
            alert.addAction(okButton)
            self.present(alert, animated: true)
        }
    }
}

