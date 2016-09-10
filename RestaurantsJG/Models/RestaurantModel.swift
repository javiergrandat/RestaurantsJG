//
//  RestaurantModel.swift
//  RestaurantsJG
//
//  Created by Javier Antonio Granda Tabares on 9/9/16.
//  Copyright © 2016 Javier Granda Company. All rights reserved.
//

import UIKit

typealias CompletionHandler = (success: Bool, response: [Restaurant]) ->()

class RestaurantModel: NSObject {
    var restaurants = [Restaurant]()
    
    //MARK: Services
    func getRestaurantsFromServer(completion: CompletionHandler){
        let request = RestaurantService()
        request.getRestaurants { (success, response) in
            if success {
                self.restaurants.removeAll()
                
                for item in response {
                    let restaurantTmp = Restaurant(name: item["name"] as! String, details: item["details"] as! String, address: item["address"] as! String, telephone: item["telephone"] as! String, latitude: item["latitude"] as! Double, longitude: item["longitude"] as! Double, category: item["category"] as! String, wifi: item["wifi"] as! Bool, available: item["available"] as! Bool, ranking: item["ranking"] as! Float, image: item["image"] as! String)
                    
                    self.restaurants.append(restaurantTmp)
                }
                
                completion(success: true, response: self.restaurants)
            } else {
                completion(success: false, response: self.restaurants)
            }
        }
    }

    //MARK: Mocks
    func restaurantsMocks() -> [Restaurant] {
        let restaurants : [Restaurant] = [
            Restaurant(name: "DF Laureles", address: "Avenida Jardin con Nutibara", latitude: 6.342344, longitude: -75.12345, category: "Mexicano", image: "mexican-restaurant"),
            Restaurant(name: "Rancherito", address: "Las Palmas", latitude: 6.342344, longitude: -75.12345, category: "Asados", image: "parrilla-restaurant")]
        
        
        return restaurants
    }
    
}
