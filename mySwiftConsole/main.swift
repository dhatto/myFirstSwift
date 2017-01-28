//
//  main.swift
//  mySwiftConsole
//
//  Created by daigoh on 2016/11/22.
//  Copyright © 2016年 touhu. All rights reserved.
//

import Foundation

//print("Hello, World!")
//// バックスラッシュ\でエスケープだぜ！
//print("Hello, MyWorld! \"Again\"")
//
//let test:Int = 100
//var number:Int = 0xffff
//
//var myString:String
//var myString2 = "あい"
//var myString1:String = "うえお"
//
//// 2進数だって定義可能なのよ！
//var myNumber = 0b00010001
//
//print(myString2)
//
//// \(変数) で変数の埋め込み可能ら！
//print("\(myString2)")
//myString2 = ""
//if myString2.isEmpty {
//    print("emptyですよ")
//}
//
//// 文字列連結
//print(myString1+myString2)
//
//// IntをStringに変換
//print(String(number))
//
//// 配列
//var hitPoints:Array = [1,2,3]
//// foreach
//for i in hitPoints.indices {
//    print(String(i));
//}

//var myChef:Chef = Chef()
//myChef.order()

//var myRamenChef:RamenChef = RamenChef()
//var ingredient:Ingredient = Ingredient(noodles: "太麺", soup: "味噌", topping: "ネギ") // 自分好みのものを指定
//var myRamen:Ramen
//myRamen = myRamenChef.request(ingredient: ingredient)
//myRamenChef.name


//var chefs:[Chef];

//var myTest:UnicodeScalar //Unicodeの文字コードを表す


// 0から100まで繰り返し
//for i in 0...100 {
//    print(String(i))
//}

var mySum = 0
// where区で、偶数の場合のみループを実行する
for j in 0...100 where j % 2 == 0 {
    // terminatorをつけると、改行とは別の方法で区切れる。
    print("\(j)", terminator:",")
}

func nestFunc() -> Int {
    var d = 1

    // ネスト関数。関数定義前に定義された変数を使うことが出来る。
    func myNestFunc() {
        d = 100
    }

    return d
}

// タプル型を定義
let photo = ("test.jpg", 640, 480)
// 一度に3つの定数定義し、photoから代入！
let (fileName, width, height) = photo
print("\(fileName): \(width): \(height)")

// Indexでアクセスすることも可能
// photo.0
var day = (1,1)

switch(day) {
case(1,1): // 1月1日を表す
    print("")
case (8, let d): //8月は全て該当する！日付をd定数に入れる(caseの中のみで有効)
    print ("8月\(d)日は夏休み！")
case (12, _):
    print("冬休みやでー")
default:
    print("")
}





