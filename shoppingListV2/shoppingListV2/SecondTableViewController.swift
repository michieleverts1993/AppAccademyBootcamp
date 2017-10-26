//
//  SecondTableViewController.swift
//  shoppingListV2
//
//  Created by Michiel Everts on 18-10-17.
//  Copyright © 2017 Michiel Everts. All rights reserved.
//

import UIKit
import Foundation
import Firebase
class SecondTableViewController: UITableViewController {
    
    var selectedShopItem: ShoppingListItems?

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        NotificationCenter.default.addObserver(self,
//                                               selector: #selector(SecondTableViewController.notifyObservers(notification:)),
//                                               name: NSNotification.Name(rawValue: notificationIDs.shoppingData),
//                                               object: nil)
//
//        NotificationCenter.default.addObserver(self,
//                                               selector: #selector(SecondTableViewController.addNotifyObservers),
//                                               name: NSNotification.Name(rawValue: notificationIDs.addedShoppingData),
//                                               object: nil)
//
        ShoppingDataService.sharedInstance.getShoppingListData()
        
        let secondCellNib = UINib.init(nibName: nibs.TableViewCell, bundle: nil)
        self.tableView.register(secondCellNib, forCellReuseIdentifier: tableCellIDs.tableViewCell)
        
    }
    
//    @objc func notifyObservers(notification: NSNotification) {
//        var shopItemDict = notification.userInfo as! Dictionary<String , [ShoppingListItems]>
//        self.selectedShopItem = shopItemDict[dictKey.data]!
//        self.tableView.reloadData()
//    }
//
    @objc func addNotifyObservers(notification: NSNotification) {
        var addShopItemDict = notification.userInfo as! Dictionary<String, ShoppingListItems>
        var oneObject = addedShoppingData[dictKey.data]
        ShoppingListItems.append(oneObject!)
        self.tableView.reloadData()
    }
//

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 1
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: tableCellIDs.tableViewCell, for: indexPath) as! TableViewCell
        
        if let price = selectedShopItem?.price{
        cell.label3.text = "\(price)"
        }
        cell.label1?.text = selectedShopItem?.fullName
        cell.label2?.text = selectedShopItem?.details
        cell.shopListImage?.image = selectedShopItem?.photo

        return cell
    }
}
