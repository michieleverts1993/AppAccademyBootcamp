//
//  DataService.swift
//  ApiCheck
//
//  Created by Michiel Everts on 02-12-17.
//  Copyright © 2017 Michiel Everts. All rights reserved.
//

import Foundation
import Alamofire

class VaccineDataService {
    
    public static let sharedInstance = VaccineDataService()  // Singleton: https://en.wikipedia.org/wiki/Singleton_pattern
    
    private init() { // Singleton: https://en.wikipedia.org/wiki/Singleton_pattern
    }
    
    func getVaccineData() {
        
        let someCountry = "AF"
        
        let userDetailsParams: HTTPHeaders = ["X-Auth-API-Key": "njvpmqr5f2dprnq6qbyczx2y"]
        
        let url = "https://api.tugo.com/v1/travelsafe/countries/\(someCountry)"
        
        Alamofire.request(url,encoding: JSONEncoding.default,headers: userDetailsParams).validate().responseJSON { (response)
            in
            var vaccineArray: [VaccineData] = []
            if let jsonData = response.result.value as? NSDictionary,
                let health = jsonData["health"] as? NSDictionary,
                let diseasesAndVaccinesInfo = health["diseasesAndVaccinesInfo"] as? NSDictionary,
                let Vaccines = diseasesAndVaccinesInfo["Vaccines"] as? NSArray {
                for Dict in Vaccines {
                    if let unwrappedDict = Dict as? NSDictionary {
                        if let category = unwrappedDict["category"] as? String,
                            let description = unwrappedDict["description"] as? String {
                            let vaccineInfo = VaccineData.init(category: category, description: description)
                            
                            vaccineArray.append(vaccineInfo)
                        }
                    }
                    
                    NotificationCenter.default.post(name: NSNotification.Name(rawValue: notificationID.vaccineParserID),
                                                    object: self,
                                                    userInfo: [dataKey.vaccineData : vaccineArray])
                }
            }
        }
    }
}


