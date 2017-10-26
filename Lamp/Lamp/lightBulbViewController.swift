//
//  ViewController.swift
//  Lamp
//
//  Created by Michiel Everts on 09-10-17.
//  Copyright © 2017 Michiel Everts. All rights reserved.
//

import UIKit

enum buttonTags: Int {
    case lightSwitch = 0
    case changeTitle = 1
    
}

class lightBulbViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var lightBulbImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    var lightState: Bool = false
    @IBOutlet weak var titleSwitchButton: UIButton!
    @IBOutlet weak var textSwitchReturn: UITextField?
    @IBOutlet weak var textSwitchReturn2: UITextField?

    override func loadView() {
        super.loadView()
        print("loadView")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = "First View"
        lightBulbImageView.image = UIImage.init(named: "lightoff")
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.titleSwitchButton.isHidden = true
        print("viewWillAppear")

    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("viewDidAppear")
        titleLabel.text = "First View"
//        lightBulbImageView.image = UIImage.init(named: "lighton")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("viewWillDisappear")
        titleLabel.text = "First View"
//        lightBulbImageView.image = UIImage.init(named: "lightoff")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("viewDidDisappear")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func buttonActions(_ sender: UIButton) {
        if let button = sender as? UIButton{
            switch button.tag {
            case buttonTags.lightSwitch.rawValue:
                self.titleSwitchButton.setTitle("click me", for: .normal)
                self.titleSwitchButton.isHidden = false
                lightSwitch()
            case buttonTags.changeTitle.rawValue:
                self.navigationItem.title = ""
            default:
                break
            }
        }
        
    }
    func lightSwitch() {
        if lightState {
            lightState = false
           lightBulbImageView.image = UIImage.init(named: "lightoff")
            self.titleLabel.text = "light is off"
        } else  {
            lightState = true
            lightBulbImageView.image = UIImage.init(named: "lighton")
            self.titleLabel.text = "light is on"
        }
    }

    func textFieldDidEndEditing(_ textField: UITextField) {
        print("textFieldDidEndEditing")
        self.titleLabel.text = textField.text
    }
    
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        print("textFieldShouldEndEditing")
        return true
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        print("textFieldDidBeginEditing")
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        if textField.tag == 0{
//            textSwitchReturn2?.becomeFirstResponder()
        } else {
//            textField.resignFirstResponder()
//            textSwitchReturn2?.resignFirstResponder()
            self.view.endEditing(true)
        }
//        self.view.endEditing(true)
        return false
    }
    

}
    


