//
//  ViewController.swift
//  calculator
//
//  Created by Michiel Everts on 12-10-17.
//  Copyright © 2017 Michiel Everts. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var total: Double = 0
    
    @IBOutlet weak var inputLabel: UILabel!
    
    @IBAction func numberButton(_ sender: UIButton) {
        let numberTitle = sender.currentTitle!
        inputLabel.text = inputLabel.text! + numberTitle
    }
    
    @IBAction func deleteButton(_ sender: Any) {
    
    }

    
    @IBAction func resultButton(_ sender: UIButton) {
        
    }
    
    
    @IBAction func operationButton(_ sender: UIButton) {
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

