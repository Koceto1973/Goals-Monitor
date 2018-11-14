//
//  ViewController.swift
//  Goals-Monitor
//
//  Created by K.K. on 13.11.18.
//  Copyright © 2018 K.K. All rights reserved.
//

import UIKit

class GoalsVC: UIViewController {
    
    // Outlets
    @IBOutlet weak var tableView: UITableView!
    
    // variables
    var goals: [Goal] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.delegate = self
        self.tableView.dataSource = self
        //self.tableView.isHidden = false
    }

    @IBAction func createGoalButtonPressed(_ sender: Any) {
        guard let createGoalVC = storyboard?.instantiateViewController(withIdentifier: "createGoalVC") else { return }
        presentDetail(createGoalVC)
    }    
}

extension GoalsVC: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return goals.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "goalCell") as? GoalCell else { return UITableViewCell() }
          let goal = goals[indexPath.row]
          cell.configureCell(goal: goal)
        return cell
    }
    
//    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
//        return true
//    }
//
//    func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCellEditingStyle {
//        return .none
//    }
//
//    func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
//        let deleteAction = UITableViewRowAction(style: .destructive, title: "DELETE") { (rowAction, indexPath) in
//            self.removeGoal(atIndexPath: indexPath)
//            self.fetchCoreDataObjects()
//            tableView.deleteRows(at: [indexPath], with: .automatic)
//        }
//
//        let addAction = UITableViewRowAction(style: .normal, title: "ADD 1") { (rowAction, indexPath) in
//            self.setProgress(atIndexPath: indexPath)
//            tableView.reloadRows(at: [indexPath], with: .automatic)
//        }
//
//        deleteAction.backgroundColor = #colorLiteral(red: 1, green: 0.1491314173, blue: 0, alpha: 1)
//        addAction.backgroundColor = #colorLiteral(red: 0.961445272, green: 0.650790751, blue: 0.1328578591, alpha: 1)
//
//        return [deleteAction, addAction]
//    }
}


