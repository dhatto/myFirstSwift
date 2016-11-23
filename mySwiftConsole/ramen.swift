//
//  ramen.swift
//  mySwiftConsole
//
//  Created by daigoh on 2016/11/22.
//  Copyright © 2016年 touhu. All rights reserved.
//

import Foundation

class Ramen {
    var ingredient:Ingredient // 素材
    let people = ["Anna": 67, "Bety": 8, "Jack": 33, "Sam": 25]
    let instruction = ["茹で方":"固めに茹でる", "スープの作り方":"にぼしはたっぷり", "チャーシューの作り方":"じっくりコトコト"]

    init(ingredient:Ingredient) {
        self.ingredient = ingredient
    }
    
    func cook() -> Bool {
        print("ラーメンの説明書を参照する")
        for(key, val) in instruction {
            print("\(key)")
            print("\(val)")
        }
        
        print("材料:")
        print("\(ingredient.noodles) + \(ingredient.soup) + \(ingredient.topping)")

        return true
    }
}
