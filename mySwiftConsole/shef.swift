//
//  ramen.swift
//  mySwiftConsole
//
//  Created by daigoh on 2016/11/22.
//  Copyright © 2016年 touhu. All rights reserved.
//

import Foundation

class Chef {
    let name = "Daigoh Hattori"
    
    init() {
        // 下ごしらえは、すぐにやる
        prepareCooking()
    }
    
    // 下ごしらえ
    func prepareCooking() {
        print("prepareCooking...ok")
    }

    func cooking(ingredient:Ingredient) {
        print("cooking..ok!")
    }
    
    func order() {
        
    }
}

class RamenChef : Chef {
    var recommendedIngredient:Ingredient // シェフお勧めの素材

    let recommendedNoodles:String = "細麺"
    let recommendedSoup:String = "鶏白湯"
    let recommendedTopping:String = "チャーシュー"
    
    override init() {
        recommendedIngredient = Ingredient(noodles: recommendedNoodles, soup: recommendedSoup, topping: recommendedTopping)
        super.init()
    }
    
    override func cooking(ingredient:Ingredient) {
        super.cooking(ingredient: recommendedIngredient)
        print("ramen cooking...ok! created by " + name)
    }

    // お任せで作って
    override func order() {
        super.order()
    }

    // この材料で作って
    func request(ingredient:Ingredient) -> Ramen {
//        if ingredient.noodles.isEmpty {
//            ingredient.noodles = recommendedNoodles
//        }

        let ramen:Ramen = Ramen(ingredient:recommendedIngredient)
        cooking(ingredient: recommendedIngredient)
        
        return ramen
    }
}

