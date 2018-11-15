//
//  FinishGoalVC.swift
//  Goals-Monitor
//
//  Created by K.K. on 14.11.18.
//  Copyright © 2018 K.K. All rights reserved.
//

import UIKit
import CoreData

class FinishGoalVC: UIViewController, UITextFieldDelegate {
    // Outlets
    @IBOutlet weak var pointsTextField: UITextField!
    @IBOutlet weak var createGoalBtn: UIButton!
    
    // variables
    var goalDescription: String! = ""
    var goalType: GoalType = .shortTerm
    
    func initData(description:String, type:GoalType) {
        self.goalDescription = description
        self.goalType = type
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pointsTextField.delegate = self
        createGoalBtn.bindToKeyboard()
    }
    
    func save(completion: (_ finished: Bool) -> ()) {
//        guard let managedContext = appDelegate?.persistentContainer.viewContext else { return }
//        let goal = Goal(context: managedContext)
//
//        goal.goalDescription = goalDescription
//        goal.goalType = goalType.rawValue
//        goal.goalCompletionValue = Int32(pointsTextField.text!)!
//        goal.goalProgress = Int32(0)
//
//        do {
//            try managedContext.save()
//            print("Successfully saved data.")
//            completion(true)
//        } catch {
//            debugPrint("Could not save: \(error.localizedDescription)")
//            completion(false)
//        }
    }
        
    @IBAction func createGoalBtnWasPressed(_ sender: Any) {
        if pointsTextField.text != "" {
            self.save { (complete) in
                if complete {
                    dismiss(animated: true, completion: nil)
                }
            }
        }
    }
    
    @IBAction func backBtnWasPressed(_ sender: Any) {
        dismissDetail()
    }
    
    // keyboard dismissal
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }    
}
