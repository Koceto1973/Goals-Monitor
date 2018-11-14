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
    
    func configureCell(goal: Goal) {
        self.goalDescriptionLbl.text = goal.describedAs
        self.goalTypeLbl.text = goal.typeAs
        self.goalProgressLbl.text = String(describing: goal.progressOf)
        
        
//        if goal.progressOf == goal.completionOf {
//            self.completionView.isHidden = false
//        } else {
//            self.completionView.isHidden = true
//        }
    }
    
}
