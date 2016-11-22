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
        prepareCooking()
    }
    
    func prepareCooking() {
        print("prepareCooking...ok")
    }
    
    func cook() {
        print("cooking..ok! created by " + name)
    }
}

class RamenChef : Chef {
    override func cook() {
        //super.cook()
        print("ramen cooking...ok!")
    }
}

