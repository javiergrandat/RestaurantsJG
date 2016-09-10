//
//  RestaurantModel.swift
//  RestaurantsJG
//
//  Created by Javier Antonio Granda Tabares on 9/9/16.
//  Copyright © 2016 Javier Granda Company. All rights reserved.
//

import UIKit

class RestaurantModel: NSObject {

    //MARK: Mocks
    func restaurantsMocks() -> [Restaurant] {
        let restaurants : [Restaurant] = [
            Restaurant(name: "DF Laureles", address: "Avenida Jardin con Nutibara", latitude: 6.342344, longitude: -75.12345, category: "Mexicano", image: "mexican-restaurant"),
            Restaurant(name: "Rancherito", address: "Las Palmas", latitude: 6.342344, longitude: -75.12345, category: "Asados", image: "parrilla-restaurant")]
        
        
        return restaurants
    }
    
}
