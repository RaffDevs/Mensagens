//
//  BaseViewController.swift
//  Mensagens
//
//  Created by Rafael Veronez Dias on 10/01/23.
//

import UIKit

class BaseViewController: UIViewController {
    
    @IBOutlet weak var messageLabel: UILabel!
    var message: Message!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func changeColor(_ sender: UIButton) {
        guard let reference = self as? ColorPickerDelegate else {return}
        
        if let colorPicker = storyboard?.instantiateViewController(withIdentifier: "ColorPickerViewController") as? ColorPickerViewController {
            colorPicker.modalPresentationStyle = .overCurrentContext
            colorPicker.delegate = reference
            present(colorPicker, animated: true, completion: nil)
        }
    }
    

}
