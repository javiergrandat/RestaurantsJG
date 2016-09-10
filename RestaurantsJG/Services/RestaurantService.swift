//
//  RestaurantService.swift
//  RestaurantsJG
//
//  Created by Javier Antonio Granda Tabares on 9/10/16.
//  Copyright © 2016 Javier Granda Company. All rights reserved.
//

import UIKit
import Alamofire

public typealias CompletionHandlerGET = (success: Bool,
    response: [[String : AnyObject]]) -> ()

let headers = ["Authorization":"Basic a2lkX0IxRm52OVozOjZlYjlkMWU5NjUxODRmMGNiNTcwODRlZjRjMWE4NDBj",
"Content-Type":"application/x-www-form-urlencoded"]


    class RestaurantService: NSObject {
        
        let url = "https://baas.kinvey.com/appdata/kid_B1Fnv9Z3/Restaurants"
        
        func getRestaurants(completion:CompletionHandlerGET){
            Alamofire.request(.GET, url, parameters: nil, headers: headers)
                .responseJSON(){response in
                    
                    switch response.result {
                    case .Success(let JSON):
                        print("Llamado de GET \(JSON)")
                        completion(success: true, response: JSON as! [[String : AnyObject]])
                    case .Failure(let error):
                        completion(success: false, response: [["error":error.localizedDescription]])
                    }
            }
        }
        
}