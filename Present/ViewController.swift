//
//  ViewController.swift
//  Present
//
//  Created by omrobbie on 06/04/18.
//  Copyright © 2018 omrobbie. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func showCameraRoll(sender: UIButton) {
        let nextController = UIImagePickerController()
        present(nextController, animated: true, completion: nil)
    }
    
    @IBAction func showAlertDialog(sender: UIButton) {
        let nextController = UIAlertController()
        
        nextController.title = "Alert Dialog"
        nextController.message = "This is a test of Alert Dialog"
        
        let okAction = UIAlertAction(title: "ok", style: UIAlertActionStyle.default) { action in self.dismiss(animated: true, completion: nil) }
        
        nextController.addAction(okAction)
        present(nextController, animated: true, completion: nil)
    }
    
    // Roll the dice with random number
    func randomDiceValue() -> Int {
        let randomValue = 1 + arc4random() % 6
        return Int(randomValue)
    }
    
    @IBAction func rollTheDice() {
        var controller: DiceViewController
        
        controller = self.storyboard?.instantiateViewController(withIdentifier: "DiceViewController") as! DiceViewController
        
        controller.firstValue = self.randomDiceValue()
        controller.secondValue = self.randomDiceValue()
        
        present(controller, animated: true, completion: nil)
    }
    
}
