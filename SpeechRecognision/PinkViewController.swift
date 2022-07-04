//
//  PinkViewController.swift
//  SpeechRecognision
//
//  Created by Rambod Azimi on 4/27/22.
//

import UIKit

class PinkViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource, UITextFieldDelegate {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData.count
    }
    func pickerView(_ pickerView: UIPickerView, attributedTitleForRow row: Int, forComponent component: Int) -> NSAttributedString? {
        let color = (row == pickerView.selectedRow(inComponent: component)) ? UIColor.white : UIColor.white
        return NSAttributedString(string: self.pickerData[row], attributes: [NSAttributedString.Key.foregroundColor: color])
       // return pickerData[row]
    }
    
    @IBOutlet var beginButton: UIButton!
    @IBOutlet var ageLabel: UILabel!
    @IBOutlet var ageSlider: UISlider!
    var pickerData: [String] = [String]()
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!

        
    static var name: String? = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Pink Screen"
        self.nameTextField.delegate = self
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        return nameTextField.resignFirstResponder()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    @IBAction func ageSliderChanged(_ sender: UISlider) {
        let currentValue = Int(sender.value)
        ageLabel.text = "\(currentValue)"
    }
    
    @IBAction func nameTextFieldChanged(_ textField: UITextField) {
        PinkViewController.name = nameTextField.text!
      }
    
}

