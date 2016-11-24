//
//  ramen.swift
//  mySwiftConsole
//
//  Created by daigoh on 2016/11/22.
//  Copyright © 2016年 touhu. All rights reserved.
//

import Foundation

// 型定義
typealias Name = String
// インターフェース
protocol SomeProtocol {
    func someMethod()
}

class Chef {
    fileprivate var name:Name // privateだとChefのサブクラスからアクセスできない

    init() {
        name = ""
        // 下ごしらえは、すぐにやる
        prepareCooking()
    }

    // 下ごしらえ
    func prepareCooking() {
        print("prepareCooking...ok")
    }

    func cooking(target:Ingredient) {
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
        self.name = "Daigoh Hattori"
    }
    
    override func cooking(target:Ingredient) {
        super.cooking(target: target)
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

        let ramen:Ramen = Ramen(ingredient:ingredient)
        cooking(target:ingredient)
        // クロージャの定義
        func completionHandler() -> Void {
            print("調理完了")
        }
        // クロージャを指定して実行
        ramen.cook2(handler: completionHandler)
        
        // クロージャを直接指定
        ramen.cook { (msg) in
            print("ramen cooking...ok! \(msg) created by " + self.name)
        }

        return ramen
    }
}

