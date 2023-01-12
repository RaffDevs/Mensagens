//
//  MessageColorViewController.swift
//  Mensagens
//
//  Created by Rafael Veronez Dias on 09/01/23.
//

import UIKit

class MessageColorViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        messageLabel.text = message.text
        messageLabel.textColor = message.textColor
        messageLabel.backgroundColor = message.backgroundColor

    }


    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vc = segue.destination as? ScreenColorViewController {
            vc.message = message
        }
    }
    
    
}

extension MessageColorViewController: ColorPickerDelegate {
    func applyColor(color: UIColor) {
        messageLabel.backgroundColor = color
        message.backgroundColor = color
    }
}
