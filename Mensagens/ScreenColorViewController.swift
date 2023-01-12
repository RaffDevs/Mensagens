//
//  ScreenColorViewController.swift
//  Mensagens
//
//  Created by Rafael Veronez Dias on 09/01/23.
//

import UIKit

class ScreenColorViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        messageLabel.text = message.text
        messageLabel.textColor = message.textColor
        messageLabel.backgroundColor = message.backgroundColor
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(false, animated: true)

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vc = segue.destination as? ResultViewController {
            vc.message = message
        }
    }
    
    

}

extension ScreenColorViewController: ColorPickerDelegate {
    func applyColor(color: UIColor) {
        view.backgroundColor = color
        message.screenColor = color
    }
}
