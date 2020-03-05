//
//  RestaurantTableViewController.swift
//  FoodPin
//
//  Created by Jovan Markovic on 3/3/20.
//  Copyright © 2020 Jovan Markovic. All rights reserved.
//

import UIKit

class RestaurantTableViewController: UITableViewController {

//    var restaurantNames = ["Cafe Deadend", "Homei", "Teakha", "Cafe Loisl", "Petite Oyster", "For Kee Restaurant", "Po's Atelier", "Bourke Street Bakery", "Haigh's Chocolate", "Palomino Espresso", "Upstate", "Traif", "Graham Avenue Meats", "Waffle & Wolf", "Five Leaves", "Cafe Lore", "Confessional", "Barrafina", "Donostia", "Royal Oak", "Thai Cafe"]
//    var restaurantLocations = ["Hong Kong", "Hong Kong", "Hong Kong", "Hong Kong", "Hong Kong", "Hong Kong", "Hong Kong", "Sydney", "Sydney", "Sydney", "New York", "New York", "New York", "New York", "New York", "New York", "New York", "London", "London", "London", "London"]
//
//    var restaurantTypes = ["Coffee & Tea Shop", "Cafe", "Tea House", "Austrian Causual Drink", "French", "Bakery", "Bakery", "Chocolate", "Cafe", "American Seafood", "American", "American", "Breakfast & Brunch", "Coffee & Tea", "Coffee & Tea", "Latin American", "Spanish", "Spanish", "Spanish", "British", "Thai"]
//
//    var restaurantImages = ["cafedeadend.jpg", "homei.jpg", "teakha.jpg", "cafeloisl.jpg", "petiteoyster.jpg", "forkeerestaurant.jpg", "posatelier.jpg", "bourkestreetbakery.jpg", "haighschocolate.jpg", "palominoespresso.jpg", "upstate.jpg", "traif.jpg", "grahamavenuemeats.jpg", "wafflewolf.jpg", "fiveleaves.jpg", "cafelore.jpg", "confessional.jpg", "barrafina.jpg", "donostia.jpg", "royaloak.jpg", "thaicafe.jpg"]
    
//    var restaurantIsVisited = [Bool](repeating: false, count: 21)
    
    var restaurants:[Restaurant] = [
        Restaurant(name: "Cafe Deadend", type: "Coffee & Tea Shop", location: "G/F, 72 Po Hing Fong, Sheung Wan, Hong Kong",
                   phoneNumber: "232-923423", image: "cafedeadend.jpg", isVisited: false, rating: nil),
        Restaurant(name: "Homei", type: "Cafe", location: "Shop B, G/F, 22-24A Tai Ping San Street SOHO, Sheung Wan, Hong Kong",
                   phoneNumber: "348-233423", image: "homei.jpg", isVisited: false, rating: "dislike"),
        Restaurant(name: "Teakha", type: "Tea House", location: "Shop B, 18 Tai Ping Shan Road SOHO, Sheung Wan, Hong Kong",
                   phoneNumber: "354-243523", image: "teakha.jpg", isVisited: false, rating: "good"),
        Restaurant(name: "Cafe loisl", type: "Austrian / Causual Drink", location: "Shop B, 20 Tai Ping Shan Road SOHO, Sheung Wan, Hong Kong",
                   phoneNumber: "453-333423", image: "cafeloisl.jpg", isVisited: false, rating: nil),
        Restaurant(name: "Petite Oyster", type: "French", location: "24 Tai Ping Shan Road SOHO, Sheung Wan, Hong Kong",
                   phoneNumber: "983-284334", image: "petiteoyster.jpg", isVisited: false, rating: nil),
        Restaurant(name: "For Kee Restaurant", type: "Bakery", location: "Shop JK., 200 Hollywood Road, SOHO, Sheung Wan, Hong Kong",
                   phoneNumber: "232-434222", image: "forkeerestaurant.jpg", isVisited: false, rating: nil),
        Restaurant(name: "Po's Atelier", type: "Bakery", location: "G/F, 62 Po Hing Fong, Sheung Wan, Hong Kong",
                   phoneNumber: "234-834322", image: "posatelier.jpg", isVisited: false, rating: nil),
        Restaurant(name: "Bourke Street Backery", type: "Chocolate", location: "633 Bourke St Sydney New South Wales 2010 Surry Hills",
                   phoneNumber: "982-434343", image: "bourkestreetbakery.jpg", isVisited: false, rating: nil),
        Restaurant(name: "Haigh's Chocolate", type: "Cafe", location: "412-414 George St Sydney New South Wales",
                   phoneNumber: "734-232323", image: "haighschocolate.jpg", isVisited: false, rating: "good"),
        Restaurant(name: "Palomino Espresso", type: "American / Seafood", location: "Shop 1 61 York St Sydney New South Wales",
                   phoneNumber: "872-734343", image: "palominoespresso.jpg", isVisited: false, rating: nil),
        Restaurant(name: "Upstate", type: "American", location: "95 1st Ave New York, NY 10003",
                   phoneNumber: "343-233221", image: "upstate.jpg", isVisited: false, rating: nil),
        Restaurant(name: "Traif", type: "American", location: "229 S 4th St Brooklyn, NY 11211",
                   phoneNumber: "985-723623", image: "traif.jpg", isVisited: false, rating: nil),
        Restaurant(name: "Graham Avenue Meats", type: "Breakfast & Brunch", location: "445 Graham Ave Brooklyn, NY 11211",
                   phoneNumber: "455-232345", image: "grahamavenuemeats.jpg", isVisited: false, rating: nil),
        Restaurant(name: "Waffle & Wolf", type: "Coffee & Tea", location: "413 Graham Ave Brooklyn, NY 11211",
                   phoneNumber: "434-232322", image: "wafflewolf.jpg", isVisited: false, rating: nil),
        Restaurant(name: "Five Leaves", type: "Coffee & Tea", location: "18 Bedford Ave Brooklyn, NY 11222",
                   phoneNumber: "343-234553", image: "fiveleaves.jpg", isVisited: false, rating: nil),
        Restaurant(name: "Cafe Lore", type: "Latin American", location: "Sunset Park 4601 4th Ave Brooklyn, NY 11220",
                   phoneNumber: "342-455433", image: "cafelore.jpg", isVisited: false, rating: "good"),
        Restaurant(name: "Confessional", type: "Spanish", location: "308 E 6th St New York, NY 10003",
                   phoneNumber: "643-332323", image: "confessional.jpg", isVisited: false, rating: "dislike"),
        Restaurant(name: "Barrafina", type: "Spanish", location: "54 Frith Street London W1D 4SL United Kingdom",
                   phoneNumber: "542-343434", image: "barrafina.jpg", isVisited: false, rating: "great"),
        Restaurant(name: "Donostia", type: "Spanish", location: "10 Seymour Place London W1H 7ND United Kingdom",
                   phoneNumber: "722-232323", image: "donostia.jpg", isVisited: false, rating: nil),
        Restaurant(name: "Royal Oak", type: "British", location: "2 Regency Street London SW1P 4BZ United Kingdom",
                   phoneNumber: "343-988834", image: "royaloak.jpg", isVisited: false, rating: nil),
        Restaurant(name: "Thai Cafe", type: "Thai", location: "22 Charlwood Street London SW1V 2DY Pimlico",
                   phoneNumber: "432-344050", image: "thaicafe.jpg", isVisited: false, rating: nil)
    ]
    
    @IBAction func unwindToHomeScreen(segue: UIStoryboardSegue) {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        
        self.setNeedsStatusBarAppearanceUpdate()
        
        tableView.estimatedRowHeight = 80.0
        tableView.rowHeight = UITableView.automaticDimension
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        navigationController?.hidesBarsOnSwipe = true
    }
    // MARK: - Table view data source

    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return self.restaurants.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! RestaurantTableViewCell

        // Configure the cell...

        let restaurantName = self.restaurants[indexPath.row].name
        
        cell.nameLabel?.text = restaurantName
        cell.locationLabel?.text = self.restaurants[indexPath.row].location
        cell.typeLabel?.text = self.restaurants[indexPath.row].type
        
        if let imageView = UIImage(named: restaurants[indexPath.row].name!.lowercased().replacingOccurrences(of: " ", with: "").replacingOccurrences(of: "'", with: "").replacingOccurrences(of: "&", with: "")) {
            cell.thumbnailImageView?.image = imageView
        } else {
            cell.thumbnailImageView?.image = UIImage(named: "restaurant")
        }
        
        cell.thumbnailImageView.layer.cornerRadius = cell.thumbnailImageView.frame.width / 2
        
        if restaurants[indexPath.row].isVisited {
            cell.accessoryType = .checkmark
        } else {
            cell.accessoryType = .none
        }
        
        return cell
    }
//
//    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        // Create an option menu as an action sheet
//        let optionMenu = UIAlertController(title: nil, message: "What do you want to do?", preferredStyle: .actionSheet)
//
//        // Add action to the menu
//        let callActionHandler = {(action:UIAlertAction!) -> Void in
//            let alertMessage = UIAlertController(title: "Service Unavailable", message: "Sorry, the call feature is not available yet. Please retry later.", preferredStyle: .alert)
//            alertMessage.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
//            self.present(alertMessage, animated: true, completion: nil)
//        }
//
//        let callAction = UIAlertAction(title: "Call 123-000-\(indexPath.row)", style: .default, handler: callActionHandler)
//
//        let isVisitedHandler = {(action: UIAlertAction) -> Void in
//
//            let cell = tableView.cellForRow(at: indexPath)
//            cell?.accessoryType = .none
//            self.restaurantIsVisited[indexPath.row] = false
//
//        }
//
//        let isNotVisitedHandler = {(action: UIAlertAction) -> Void in
//
//            let cell = tableView.cellForRow(at: indexPath)
//            cell?.accessoryType = .checkmark
//            self.restaurantIsVisited[indexPath.row] = true
//        }
//
//        let hereAction = UIAlertAction(title: restaurantIsVisited[indexPath.row] ? "I've not been here" : "I've been here", style: .default, handler: restaurantIsVisited[indexPath.row] ? isVisitedHandler : isNotVisitedHandler)
//
//        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
//
//        optionMenu.addAction(callAction)
//        optionMenu.addAction(hereAction)
//        optionMenu.addAction(cancelAction)
//
//        //Display the menu
//        self.present(optionMenu, animated: true, completion: nil)
//
//        self.tableView.deselectRow(at: indexPath, animated: false)
//    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            
            restaurants.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }
//        tableView.reloadData()
        print("Total item: \(restaurants.count)")
        for restaurant in restaurants {
            print(restaurant.name!)
        }
    }
    
    override func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
        // Social sharing button
        let shareAction = UITableViewRowAction(style: .default, title: "Share", handler: {(action, indexPath) -> Void in
            let defaultText = "Just checking in at " + self.restaurants[indexPath.row].name!
            let activityController = UIActivityViewController(activityItems: [defaultText], applicationActivities: nil)
            self.present(activityController, animated: true, completion: nil)
        })
        shareAction.backgroundColor = UIColor(displayP3Red: 28.0/255, green: 165.0/255.0, blue: 253.0/255/0, alpha: 1.0)
        
        // Delete button
        let deleteAction = UITableViewRowAction(style: .default, title: "Delete", handler: {(action, indexPath) -> Void in
            self.restaurants.remove(at: indexPath.row)
            self.tableView.deleteRows(at: [indexPath], with: .fade)
        })
        deleteAction.backgroundColor = UIColor(displayP3Red: 202.0/255.0, green: 202.0/255.0, blue: 202.0/255.0, alpha: 1.0)
        return [deleteAction, shareAction]
    }
    
    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

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
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if segue.identifier == "showRestaurantDetail" {
            if let indexPath = tableView.indexPathForSelectedRow {
                let destinationController = segue.destination as! RestaurantDetailViewController
                destinationController.restaurant = restaurants[indexPath.row]
            }
        }
    }
    
    
    
}
