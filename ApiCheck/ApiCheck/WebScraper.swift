//
//  webScraper.swift
//  ApiCheck
//
//  Created by Michiel Everts on 02-12-17.
//  Copyright © 2017 Michiel Everts. All rights reserved.
//

import Foundation
import Kanna
import Alamofire

    // structure of listView
//<div id="group-a" class="row links-pages">
// <ul class="list-bullet">
//<li><a href="/travel/destinations/traveler/none/afghanistan">Afghanistan</a></li>

    //view-source:https://wwwnc.cdc.gov/travel/destinations/traveler/none/afghanistan
// <td class="traveler-findoutwhy"> <p><strong>Health recommendation:</strong>
// <ul class="list-bullet">  <li>
// <p><strong>
//
//
//


struct HTMLS {
    let html: HTMLDocument
}

struct Data {
    var groupA: [String]
    
}

extension String {
    mutating func removeReduntantChars() -> String{
        self = self.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
        self = self.replacingOccurrences(of: "<[^]>]+>", with: "", options: .regularExpression, range: nil)
        return self
    }
}

class WebScraper {
   
    public static let sharedInstance = WebScraper()  // Singleton: https://en.wikipedia.org/wiki/Singleton_pattern
    
    private init() { // Singleton: https://en.wikipedia.org/wiki/Singleton_pattern
    }
    
    
    var dataSet: [String] = []
    typealias htmlParsrResponse = (Any?) -> Void
    
    public func scraper(url: String, onCompletion: @escaping htmlParsrResponse) {
        Alamofire.request(url).responseString { response in
            print("\(response.result.isSuccess)")
            if let html = response.result.value {
                self.parseHTML(html: html)
            }
        }
    }
    
     public func parseHTML(html: String) -> Void {
        if let doc = Kanna.HTML(html: html, encoding: String.Encoding.utf8) {
            
            
            var data = Data.init(groupA: [""])
            var parsedData: [String] = []
            
            //             Search for nodes by CSS selector
            for list in doc.css("ul[class='list-bullet']") {
                var counties = list.text!
                data.groupA = [counties.removeReduntantChars()]
                parsedData.append(counties)
                dataSet = parsedData
            }

            
            
            // Strip the string of surrounding whitespace.
            //            let countryString = country.text!.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
            
            // All text involving shows on this page currently start with the weekday.
            // Weekday formatting is inconsistent, but the first three letters are always there.
            //            let regex = try! NSRegularExpression(pattern: "/travel/destinations", options: [.caseInsensitive])
            //
            //            if regex.firstMatch(in: countryString, options: [], range: NSMakeRange(0, countryString.characters.count)) != nil {
            //
            //                country. append(countryString)
            //
            //                print("\(countryString)\n")
            //            }
            //        }
        }
    }
}


