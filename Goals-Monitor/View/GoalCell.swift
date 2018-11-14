//
//  GoalCell.swift
//  Goals-Monitor
//
//  Created by K.K. on 13.11.18.
//  Copyright © 2018 K.K. All rights reserved.
//

import UIKit

class GoalCell: UITableViewCell {
    
    @IBOutlet weak var goalDescriptionLbl: UILabel!
    @IBOutlet weak var goalTypeLbl: UILabel!
    @IBOutlet weak var goalProgressLbl: UILabel!
    //@IBOutlet weak var completionView: UIView!
    
    func configureCell(adescription: String, atype: String, aprogress: Int) {
    //func configureCell(goal: Goal) {
        self.goalDescriptionLbl.text = adescription //goal.goalDescription
        self.goalTypeLbl.text = atype //goal.goalType
        self.goalProgressLbl.text = String( describing: aprogress) //String(describing: goal.goalProgress)
        
//        if goal.goalProgress == goal.goalCompletionValue {
//            self.completionView.isHidden = false
//        } else {
//            self.completionView.isHidden = true
//        }
    }
    
}
