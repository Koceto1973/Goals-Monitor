//
//  UIViewControllerExt.swift
//  Goals-Monitor
//
//  Created by K.K. on 14.11.18.
//  Copyright © 2018 K.K. All rights reserved.
//

import UIKit
// overriding the default animation of presenting the view controller
extension UIViewController {
    // presenting
    func presentDetail(_ viewControllerToPresent: UIViewController) {
        let transition = CATransition()
        transition.duration = 0.3
        transition.type = kCATransitionPush // check other options also
        transition.subtype = kCATransitionFromRight // check other options also
        self.view.window?.layer.add(transition, forKey: kCATransition)
        // true is the default transition
        present(viewControllerToPresent, animated: false, completion: nil)
    }
    
    // to jump over the GreateGoalVC during FinishGoalVC dismisal
    // and get back to GoalsVC
    func presentSecondaryDetail(_ viewControllerToPresent: UIViewController) {
        let transition = CATransition()
        transition.duration = 0.3
        transition.type = kCATransitionPush // check other options also
        transition.subtype = kCATransitionFromRight // check other options also
        
        guard let presentedViewController = presentedViewController else { return }
        presentedViewController.dismiss(animated: false) {
            self.view.window?.layer.add(transition, forKey: kCATransition)
            // true is the default transition
            self.present(viewControllerToPresent, animated: false, completion: nil)
        }
    }
    // dismissing
    func dismissDetail() {
        let transition = CATransition()
        transition.duration = 0.3
        transition.type = kCATransitionPush // check other options also
        transition.subtype = kCATransitionFromLeft // check other options also
        self.view.window?.layer.add(transition, forKey: kCATransition)
        // true is the default transition
        dismiss(animated: false, completion: nil)
    }
}

