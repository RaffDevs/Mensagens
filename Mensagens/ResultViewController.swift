//
//  ResultViewController.swift
//  Mensagens
//
//  Created by Rafael Veronez Dias on 09/01/23.
//

import UIKit

class ResultViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        navigationController?.setNavigationBarHidden(true, animated: true)
        
        messageLabel.text = message.text
        messageLabel.textColor = message.textColor
        messageLabel.backgroundColor = message.backgroundColor
        view.backgroundColor = message.screenColor
    }
    

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        navigationController?.popViewController(animated: true)
    }

}
