//
//  shoppingListTableViewController.swift
//  shoppingList
//
//  Created by Michiel Everts on 13-10-17.
//  Copyright © 2017 Michiel Everts. All rights reserved.
//

import UIKit

class shoppingListTableViewController: UITableViewController, UINavigationControllerDelegate {
    
    
    var shoppingItemAny: [ShoppingItems] = []
    var selectedShoppingItem: ShoppingItems?
    var shopItem = ""
//    var shoppingList = ["eggs", "mayo", "instantNoodles", "water", "wasabi", "chicken", "bread"]
//    var shoppingListImages = [#imageLiteral(resourceName: "Eggs"), #imageLiteral(resourceName: "Mayo"), #imageLiteral(resourceName: "instantNoodles"), #imageLiteral(resourceName: "water"), #imageLiteral(resourceName: "wasabi"), #imageLiteral(resourceName: "chicken"), #imageLiteral(resourceName: "bread")]
    

    
    
    @IBAction func editList(_ sender: UIBarButtonItem) {
        if isEditing {
            setEditing(false, animated: true)
        } else {
            setEditing(true, animated: false)
        }
    }
    
    
    @IBOutlet weak var textField: UITextField!
    @IBAction func addItem(_ sender: UIButton) {
//        var newitem = ShoppingItems.init(name: textFieldOutlet.text!, price: 1.0, weight: 1.0, photo: UIImage())
//        shoppingItemsObjects.append(newitem)
//        self.tableView.reloadData()
//        resignFirstResponder()
    }
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
       shoppingItemAny =  ShoppingItemService.createshoppingItemAny()
        

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
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
        
        return shoppingItemAny.count
    }
    


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellID", for: indexPath)
        
       let storeAny = shoppingItemAny[indexPath.row]
        
        print("Row\(indexPath.row)")
//        cell.textLabel?.text = shopItem[indexPath.row]
//        cell.imageView?.image = shoppingListImages[indexPath.row]

        return cell
    }
 
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedShoppingItem = shoppingItemAny[indexPath.row]
        performSegue(withIdentifier: "detailViewSegue" , sender: self)

    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == .delete {
            shoppingItemAny.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
        }
    }


    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
        let itemtoMove = shoppingItemAny[fromIndexPath.row]
        shoppingItemAny.remove(at: fromIndexPath.row)
        shoppingItemAny.insert(itemtoMove, at: fromIndexPath.row)
        
    }


    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */


    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        if segue.identifier == "detailViewSegue" {
            let detailView = segue.destination as! detailViewController
//            detailView.shoppingItem = shopItem
            detailView.anyItems = shoppingItemAny
        } else {
            
        }
        
    }


}
