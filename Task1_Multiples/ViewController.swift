//
//  ViewController.swift
//  Task1_Multiples
//
//  Created by Smita Tamboli on 1/10/16.
//  Copyright © 2016 Cybage. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var numberToCalculateTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func calculateButtonAction(sender: AnyObject) {
        if isValidateValue() == false {
            let alert = UIAlertController(title: "Error", message: "Please enter appropriate number.", preferredStyle: UIAlertControllerStyle.Alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
            self.presentViewController(alert, animated: true, completion: nil)
        } else {
            if Int(self.numberToCalculateTextField.text!) <= 300 {
                let multipleNumberTableView = self.storyboard?.instantiateViewControllerWithIdentifier("MultipleNumberTableViewController") as! MultipleNumberTableViewController
                multipleNumberTableView.arrayOfMultiples = self.calculateMultiple()
                self.navigationController?.pushViewController(multipleNumberTableView, animated: true)
            }
            else {
                let alert = UIAlertController(title: "Error", message: "Number has no multiple between 300 to 1.", preferredStyle: UIAlertControllerStyle.Alert)
                alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
                self.presentViewController(alert, animated: true, completion: nil)
            }
        }
    }
    
    func isValidateValue() -> Bool {
        if self.numberToCalculateTextField.text == "" {
            return false
        } else {
            return true
        }
    }
    
    func calculateMultiple() -> [Int] {
        let calculateFor = Int(self.numberToCalculateTextField.text!)
        var arrayOfMultiples:[Int] = []
        for var index = 300; index >= 1 ; index-- {
            
            if index % calculateFor! == 0 {
                arrayOfMultiples.append(index)
            }
        }
        return arrayOfMultiples
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
    }
}

