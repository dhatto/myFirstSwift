//
//  ingredients.swift
//  mySwiftConsole
//
//  Created by daigoh on 2016/11/22.
//  Copyright © 2016年 touhu. All rights reserved.
//

import Foundation

struct Ingredient {
    var noodles:String
    var soup:String
    var topping:String
}

// 既存のクラスを拡張できる！
extension String {
    // 文字列からHTMLタグを取り除くメソッドを追加
    func removeHtmlTag() -> String {
        return replacingOccurrences(of: "<(\"[^\"]*\"|'[^']*'|[^'\">])*>", with: "", options: .regularExpression, range: nil)
    }
}
