//
//  FruitModel.swift
//  Fructus
//
//  Created by Daniel  Garofalo on 9/20/20.
//

import SwiftUI

//MARK: Fruits Data Model

struct Fruit: Identifiable {
    
    //Fruit identification
    var id = UUID()
    //Fruit data
    var title : String
    var headline : String
    var image: String
    //Fruit individual color pattern
    var gradientColors : [Color]
    var description : String
    //Nutritional values
    var nutrition : [String]
    
}
