//
//  shoppingListApp2TableViewController.swift
//  shoppingListV2
//
//  Created by Michiel Everts on 17-10-17.
//  Copyright © 2017 Michiel Everts. All rights reserved.
//

import UIKit

class shoppingListApp2TableViewController: UITableViewController , UINavigationControllerDelegate{
    
    var shopItems: [ShoppingListItems]?
    var selectedShoppingItem: ShoppingListItems?
    
    var shoppingitemObject: [ShoppingListItems] = []
    

    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(SecondTableViewController.notifyObservers(notification:)),
                                               name: NSNotification.Name(rawValue: notificationIDs.shoppingData),
                                               object: nil)
        
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(SecondTableViewController.addNotifyObservers),
                                               name: NSNotification.Name(rawValue: notificationIDs.addedShoppingData),
                                               object: nil)
        
        ShoppingDataService.sharedInstance.getShoppingListData()
        
        let secondCellNib = UINib.init(nibName: nibs.TableViewCell, bundle: nil)
        self.tableView.register(secondCellNib, forCellReuseIdentifier: tableCellIDs.tableViewCell)
        
    }
    
    @objc func notifyObservers(notification: NSNotification) {
        var shopItemDict = notification.userInfo as! Dictionary<String , [ShoppingListItems]>
        shoppingitemObject = shopItemDict[dictKey.data]!
        self.tableView.reloadData()
    }
    
    @objc func addNotifyObservers(notification: NSNotification) {
        var addShopItemDict = notification.userInfo as! Dictionary<String, ShoppingListItems>
        let oneObject = addShopItemDict[dictKey.data]
        shoppingitemObject.append(oneObject!)
        self.tableView.reloadData()
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath)
        -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: tableCellIDs.shoppingCellID, for: indexPath) as! shoppingCell
            
            let itemName = shopItems?[indexPath.row]
            cell.mainCell?.text = itemName?.fullName
            
            return cell
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        if let items = shopItems {
            return items.count
        } else {
            return 0
        }
        
    }


//    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "cellID", for: indexPath)
//
//        let itemName = shopItems?[indexPath.row]
//          cell.textLabel?.text = itemName?.fullName
//
//        return cell
//    }

    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.selectedShoppingItem = shopItems?[indexPath.row]
        performSegue(withIdentifier: segueIDs.secondTableViewSegue, sender: self)
        
    }
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if segue.identifier == segueIDs.detailViewSegue{
//            
//            let detailView = segue.destination as! DetailViewController
//            detailView.selectedShopItem = self.selectedShoppingItem
//            
//        }
//    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == segueIDs.secondTableViewSegue{
            
            let detailView = segue.destination as! DetailViewController
            detailView.selectedShopItem = self.selectedShoppingItem
            
        }
    }

}
