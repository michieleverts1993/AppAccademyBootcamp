//
//  LeetSpeakViewController.swift
//  KataApp
//
//  Created by Michiel Everts on 10-10-17.
//  Copyright © 2017 Michiel Everts. All rights reserved.
//

import UIKit


class translatingViewController: UIViewController, UITextViewDelegate {


    @IBOutlet weak var inputText: UITextView!
    
    @IBOutlet weak var outputText: UITextView!
    
    @IBOutlet weak var LeetSpeakTitle: UILabel!
    
    var translate: Translator = Translator.init()
    
    // way to cal a func from other class
    @IBAction func translateLeet(sender: UIButton) {
        let translated = translate.toLeetSpeak(textLeet: inputText.text)
        outputText.text = translated
    }
    
    @IBAction func translateNato(sender: UIButton) {
        let translated = translate.toNato(textNato: inputText.text)
        outputText.text = translated
    }
    
    @IBAction func translateDis(sender: UIButton) {
        let translated = translate.disemvowel(textDis: inputText.text)
        outputText.text = translated
    }
    
        
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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

    func textViewDidEndEditing(_ textField: UITextView) {
        print("textViewDidEndEditing")
    }
    
    func textViewShouldEndEditing(_ textField: UITextView) -> Bool {
        print("textViewShouldEndEditing")
        return true
    }
    
    func textViewDidBeginEditing(_ textField: UITextView) {
        print("textViewDidBeginEditing")
    }

}

