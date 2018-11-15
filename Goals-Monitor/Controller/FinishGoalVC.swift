//
//  FinishGoalVC.swift
//  Goals-Monitor
//
//  Created by K.K. on 14.11.18.
//  Copyright © 2018 K.K. All rights reserved.
//

import UIKit

class FinishGoalVC: UIViewController, UITextFieldDelegate {
    // Outlets
    @IBOutlet weak var pointsTextField: UITextField!
    @IBOutlet weak var createGoalBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pointsTextField.delegate = self
        createGoalBtn.bindToKeyboard()
    }
        
    @IBAction func createGoalBtnWasPressed(_ sender: Any) {
    }
    
    // keyboard dismissal
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    func textFieldShouldReturn(_ textField:UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
