//
//  RestaurantDetailViewController.swift
//  FoodPin
//
//  Created by Jovan Markovic on 3/3/20.
//  Copyright © 2020 Jovan Markovic. All rights reserved.
//

import UIKit

class RestaurantDetailViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var restaurant: Restaurant!

    @IBOutlet var restaurantImageView: UIImageView!
    @IBOutlet var tableView: UITableView!
    @IBOutlet var ratingButton: UIButton!
    
    @IBAction func close(segue: UIStoryboardSegue) {
        if let reviewViewController = segue.source as? ReviewViewController {
            if let rating = reviewViewController.rating {
                ratingButton.setImage(UIImage(named: rating), for: .normal)
                restaurant.rating = rating
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        restaurantImageView.image = UIImage(named: restaurant.image!)
        tableView.backgroundColor = UIColor(displayP3Red: 240/255, green: 240/255, blue: 240/255, alpha: 0.2)
        tableView.separatorColor = UIColor(displayP3Red: 240/255, green: 240/255, blue: 240/255, alpha: 1)
        tableView.tableFooterView = UIView(frame: .zero)
        
        tableView.estimatedRowHeight = 80.0
        tableView.rowHeight = UITableView.automaticDimension
        
        title = restaurant.name
        if let rating = restaurant.rating {
            ratingButton.setImage(UIImage(named: rating), for: .normal)
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        navigationController?.hidesBarsOnSwipe = false
        navigationController?.setNavigationBarHidden(false, animated: true)
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! RestaurantDetailTableViewCell
        
        // Configure the cell...
        switch indexPath.row {
        case 0:
            cell.fieldLabel.text = "Name"
            cell.valueLabel.text = restaurant.name
        case 1:
            cell.fieldLabel.text = "Type"
            cell.valueLabel.text = restaurant.type
        case 2:
            cell.fieldLabel.text = "Location"
            cell.valueLabel.text = restaurant.location
        case 3:
            cell.fieldLabel.text = "Phone"
            cell.valueLabel.text = restaurant.phoneNumber
        case 4:
            cell.fieldLabel.text = "Been here"
            cell.valueLabel.text = (restaurant.isVisited) ? "Yes, I've been here" : "No"
        default:
            cell.fieldLabel.text = ""
            cell.valueLabel.text = ""
        }
        
        cell.backgroundColor = UIColor.clear
        return cell
    }

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if segue.identifier == "showMap" {
            let destinationController = segue.destination as! MapViewController
            destinationController.restaurant = self.restaurant
        }
    }
 

}
