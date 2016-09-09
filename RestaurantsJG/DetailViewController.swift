//
//  DetailViewController.swift
//  RestaurantsJG
//
//  Created by admin on 3/09/16.
//  Copyright © 2016 Javier Granda Company. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var rankingLabel: UILabel!
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var telephoneLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var detailTextView: UITextView!
    @IBOutlet weak var imageImageView: UIImageView!
    
    var restaurant:Restaurant = Restaurant(name: "DF Laureles", address: "Avenida Jardin con Nutibara", latitude: 6.342344, longitude: -75.12345, category: "Mexicano", image: "mexican-restaurant")
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.nameLabel.text = restaurant.name
        self.detailTextView.text = restaurant.details
        self.addressLabel.text = restaurant.address
        self.telephoneLabel.text = restaurant.telephone
        self.categoryLabel.text = restaurant.category
        self.rankingLabel.text = String(restaurant.ranking)
        self.imageImageView.image = UIImage(named: restaurant.image)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
