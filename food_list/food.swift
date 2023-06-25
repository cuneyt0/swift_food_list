//
//  food.swift
//  food_list
//
//  Created by Cuneyt on 25.06.2023.
//

import Foundation


class Food{
    var Id:Int?
    var name:String?
    var price:Double?
    var imageName:String?
    
    init(){ }
    
    
    init(Id: Int? = nil, name: String? = nil, price: Double? = nil, imageName: String? = nil) {
        self.Id = Id
        self.name = name
        self.price = price
        self.imageName = imageName
    }
  
    
}
