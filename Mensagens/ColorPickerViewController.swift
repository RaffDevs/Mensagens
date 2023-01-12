//
//  ColorPickerViewController.swift
//  Mensagens
//
//  Created by Rafael Veronez Dias on 10/01/23.
//

import UIKit

protocol ColorPickerDelegate: AnyObject {
    func applyColor(color: UIColor)
}

class ColorPickerViewController: UIViewController {

    @IBOutlet weak var colorView: UIView!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    weak var delegate: ColorPickerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func changeColor(_ sender: UISlider) {
        let red = CGFloat(redSlider.value)
        let green = CGFloat(greenSlider.value)
        let blue = CGFloat(blueSlider.value)
        
        colorView.backgroundColor = UIColor(red: red, green: green, blue: blue, alpha: 1.0)
    }
    
    @IBAction func chooseColor(_ sender: UIButton) {
        dismiss(animated: true)
        delegate?.applyColor(color: colorView.backgroundColor ?? UIColor.black)
    }
    
}
