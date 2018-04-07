//
//  DiceViewController.swift
//  Present
//
//  Created by omrobbie on 08/04/18.
//  Copyright © 2018 omrobbie. All rights reserved.
//

import Foundation
import UIKit

class DiceViewController: UIViewController {
    
    var firstValue: Int?
    var secondValue: Int?
    
    @IBOutlet var firstDice: UIImageView!
    @IBOutlet var secondDice: UIImageView!
    
    @IBOutlet var dismissButton: UIButton!
    
    override func viewWillAppear(_ animated: Bool) {
        if let firstValue = self.firstValue {
            self.firstDice.image = UIImage(named: "d\(firstValue)")
        }
        
        if let secondValue = self.secondValue {
            self.secondDice.image = UIImage(named: "d\(secondValue)")
        }
        
        if ( self.firstDice != nil ) { self.firstDice.alpha = 0 }
        if ( self.firstDice != nil ) { self.secondDice.alpha = 0 }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        UIView.animate(withDuration: 0.3) {
            if ( self.firstDice != nil ) { self.firstDice.alpha = 1 }
            if ( self.firstDice != nil ) { self.secondDice.alpha = 1 }
        }
    }
    
    @IBAction func dismissAction() {
        self.dismiss(animated: true, completion: nil)
    }
    
}
