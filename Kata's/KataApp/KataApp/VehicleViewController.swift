//
//  ViewController.swift
//  KataApp
//
//  Created by Michiel Everts on 10-10-17.
//  Copyright © 2017 Michiel Everts. All rights reserved.
//

import UIKit

class VehicleController: UIViewController {

    
    
    @IBOutlet weak var gameScreen: UIImageView!
    
    
    @IBOutlet weak var responseField: UITextField!
    
    @IBAction func forward(_ sender: UIButton) {
    }
    
    @IBAction func left(_ sender: UIButton) {
    }
    
    @IBAction func park(_ sender: UIButton) {
    }
    
    @IBAction func Right(_ sender: UIButton) {
    }
    
    @IBAction func gear(_ sender: UIStepper) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("viewWillAppear")
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("viewDidAppear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("viewWillDisappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("viewDidDisappear")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
