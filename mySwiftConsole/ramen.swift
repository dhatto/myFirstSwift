//
//  ramen.swift
//  mySwiftConsole
//
//  Created by daigoh on 2016/11/22.
//  Copyright © 2016年 touhu. All rights reserved.
//

import Foundation

class Ramen {
    var ingredient:Ingredient

    init(ingredient:Ingredient) {
        self.ingredient = ingredient
    }
    
    func cook() -> Bool {
        return true
    }
    
//  init() {
//        ingredient.noodles = "細麺";
//        ingredient.soup = "鶏白湯";
//        ingredient.topping = "チャーシュー";
//    }
}
