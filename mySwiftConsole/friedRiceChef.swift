//
//  friedRiceChef.swift
//  mySwiftConsole
//
//  Created by daigoh on 2016/11/24.
//  Copyright © 2016年 touhu. All rights reserved.
//

import Foundation

class FriedRiceCheff : Chef {
    override init() {
        super.init()
        self.prepareCooking()
        //self.name // nameプロパティはfileprivateなので、このファイルからは参照できないのだ！
//        self.order()
//        self.cooking(target: Ingredient)
    }
}
