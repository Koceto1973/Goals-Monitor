//
//  CreateGoalVC.swift
//  Goals-Monitor
//
//  Created by K.K. on 13.11.18.
//  Copyright © 2018 K.K. All rights reserved.
//

import UIKit

class CreateGoalVC: UIViewController, UITextViewDelegate {
    
    // Outlets
    @IBOutlet weak var goalTextView: UITextView!
    @IBOutlet weak var shortTermBtn: UIButton!
    @IBOutlet weak var longTermBtn: UIButton!
    @IBOutlet weak var nextBtn: UIButton!
    
    // variables
    var goalType: GoalType = .shortTerm
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        goalTextView.delegate = self
        nextBtn.bindToKeyboard()
        shortTermBtn.setSelectedColor()
        longTermBtn.setDeselectedColor()
    }
    
    @IBAction func shortTermBtnWasPressed(_ sender: Any) {
        shortTermBtn.setSelectedColor()
        longTermBtn.setDeselectedColor()
        goalType = .shortTerm
    }
    
    @IBAction func longTermBtnWasPressed(_ sender: Any) {
        shortTermBtn.setDeselectedColor()
        longTermBtn.setSelectedColor()
        goalType = .longTerm
    }
    
    @IBAction func nextBtnWasPressed(_ sender: Any) {
        // text view has no placeholder
        if goalTextView.text != "" && goalTextView.text != "What is your goal?" {
            guard let finishGoalVC = storyboard?.instantiateViewController(withIdentifier: "finishGoalVC") as? FinishGoalVC else { return }
            finishGoalVC.initData(description: goalTextView.text!, type: goalType)
            presentingViewController?.presentSecondaryDetail(finishGoalVC)
        }
    }
    
    // empty the text  view when going in
    func textViewDidBeginEditing(_ textView: UITextView) {
        goalTextView.text = ""
    }
    
    @IBAction func backBtnWasPressed(_ sender: Any) {
        dismissDetail()
    }
    
    // keyboard dismissal
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
}
