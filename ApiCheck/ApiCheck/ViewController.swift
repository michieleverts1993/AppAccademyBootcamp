//
//  ViewController.swift
//  ApiCheck
//
//  Created by Michiel Everts on 02-12-17.
//  Copyright © 2017 Michiel Everts. All rights reserved.
//

import UIKit
import Alamofire

struct notificationID {
    static let vaccineParserID = "vaccineParserID"
}

struct dataKey {
    static let vaccineData = "vaccineData"
}

struct VaccineData {
    var category: String
    var description: String
}


class ViewController: UIViewController {
    
    @IBOutlet var DataText: UITextView!
    var AppObjects: [VaccineData] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        VaccineDataService.sharedInstance.getVaccineData()
        
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(ViewController.notifyObservers(notification:)),
                                               name: NSNotification.Name(rawValue: notificationID.vaccineParserID),
                                               object: nil)
        
//        WebScraper.sharedInstance.scraper(url: "https://wwwnc.cdc.gov/travel/destinations/list/") { (result)
//            in
//            let smeData = result as? Data
//            if let whatuget = smeData?.groupA {
//                self.DataText.text = whatuget[0]
//            }
//        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @objc func notifyObservers(notification: NSNotification) {
        var unwrappedDict = notification.userInfo as! Dictionary<String , AnyObject>
        if let category = unwrappedDict["category"] as? String,
            let description = unwrappedDict["description"] as? String {
            if let Data = unwrappedDict[dataKey.vaccineData] as? VaccineData {
                AppObjects.append(Data)
                print(AppObjects)
            }
        }
    }
}

