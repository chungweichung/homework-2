//
//  type.swift
//  homework 2
//
//  Created by Weichung Chung on 2022/10/17.
//

import Foundation
struct Mototype:Identifiable{
    let id=UUID()
    let type:String
    //var motoimage:String
}
extension Mototype{
    static let demomototype=Mototype(type:"Supersport")
}


struct Supersportcategory:Identifiable{
    let id=UUID()
    let category:String
}
extension Supersportcategory{
    static let demoSupersportcategory=Supersportcategory(category: "cbr650r")
}

struct Urbancategory:Identifiable{
    let id=UUID()
    let category:String
}
extension Urbancategory{
    static let demoUrbancategory=Urbancategory(category: "forza750")
}
