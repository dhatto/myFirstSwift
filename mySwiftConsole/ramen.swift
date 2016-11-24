//
//  ramen.swift
//  mySwiftConsole
//
//  Created by daigoh on 2016/11/22.
//  Copyright © 2016年 touhu. All rights reserved.
//

import Foundation

typealias CompletionHandler = ((Void)?) -> Name

class Ramen {
    var ingredient:Ingredient // 素材
    let instruction = ["茹で方":"固めに茹でる", "スープの作り方":"にぼしはたっぷり", "チャーシューの作り方":"じっくりコトコト"]

    init(ingredient:Ingredient) {
        self.ingredient = ingredient
    }
    
    func cook2(handler: (()->Void)?) {
        if let completion = handler {
            completion()
        }
    }

    // 引数にString、戻り値がvoidのクロージャを引数に持つ
    func cook(handler: ((String) -> Void)?) -> Void {

        print("ラーメンの説明書を参照する")
        for(key, val) in instruction {
            print("\(key)")
            print("\(val)")
        }

        print("材料:")
        print("\(ingredient.noodles) + \(ingredient.soup) + \(ingredient.topping)")

        // クロージャが指定されているか確認
        if let completion = handler {
            // yesなのでtrue
            completion("出来上がりっ！")
        }
    }
}
