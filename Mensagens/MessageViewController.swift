//
//  ViewController.swift
//  Mensagens
//
//  Created by Rafael Veronez Dias on 09/01/23.
//

import UIKit

class ViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.navigationBar.titleTextAttributes = [
            NSAttributedString.Key.foregroundColor: UIColor.black
        ]
        
        message = Message()
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vc = segue.destination as? MessageColorViewController {
            vc.message = message
        }
    }
    

}


extension ViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        message.text = textField.text
        messageLabel.text = textField.text
        
        textField.resignFirstResponder()
        
        return true
    }
}

extension ViewController: ColorPickerDelegate {
    func applyColor(color: UIColor) {
        messageLabel.textColor = color
        message.textColor = color
    }
}

