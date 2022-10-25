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
    let name:String
    let size:String
    let engineType:String
    let boreAndStroke:String
    let transmission:String
    let trail:String
    let Wheelbase:String
    let seatHeight:String
    let Weight:String
    let fuelCapacity:String
}
extension Supersportcategory{
    static let demoSupersportcategory=Supersportcategory(name: "cbr650r",  size: "60×60×60", engineType: "999cc liquid-cooled inline-four engine", boreAndStroke: "81mm x 48.5mm", transmission: "Six-speed", trail: "4.0 inches", Wheelbase: "4.0 inches", seatHeight: "4.0 inches", Weight: "445 pounds", fuelCapacity: "4.3 gallons")
}

struct Urbancategory:Identifiable{
    let id=UUID()
    let name:String
    let size:String
    let engineType:String
    let boreAndStroke:String
    let transmission:String
    let trail:String
    let Wheelbase:String
    let seatHeight:String
    let Weight:String
    let fuelCapacity:String
}
extension Urbancategory{
    static let demoUrbancategory=Urbancategory(name: "CBR650R",  size: "60×60×60", engineType: "999cc liquid-cooled inline-four engine", boreAndStroke: "81mm x 48.5mm", transmission: "Six-speed", trail: "4.0 inches", Wheelbase: "4.0 inches", seatHeight: "4.0 inches", Weight: "445 pounds", fuelCapacity: "4.3 gallons")
}

struct Cruidercategory:Identifiable{
    let id=UUID()
    let name:String
    let size:String
    let engineType:String
    let boreAndStroke:String
    let transmission:String
    let trail:String
    let Wheelbase:String
    let seatHeight:String
    let Weight:String
    let fuelCapacity:String
}
extension Cruidercategory{
    static let demoCruidercategory=Cruidercategory(name: "cbr650r",  size: "60×60×60", engineType: "999cc liquid-cooled inline-four engine", boreAndStroke: "81mm x 48.5mm", transmission: "Six-speed", trail: "4.0 inches", Wheelbase: "4.0 inches", seatHeight: "4.0 inches", Weight: "445 pounds", fuelCapacity: "4.3 gallons")
}

struct Streetcategory:Identifiable{
    let id=UUID()
    let name:String
    let size:String
    let engineType:String
    let boreAndStroke:String
    let transmission:String
    let trail:String
    let Wheelbase:String
    let seatHeight:String
    let Weight:String
    let fuelCapacity:String
}
extension Streetcategory{
    static let demoStreetcategory=Streetcategory(name: "cbr650r",  size: "60×60×60", engineType: "999cc liquid-cooled inline-four engine", boreAndStroke: "81mm x 48.5mm", transmission: "Six-speed", trail: "4.0 inches", Wheelbase: "4.0 inches", seatHeight: "4.0 inches", Weight: "445 pounds", fuelCapacity: "4.3 gallons")
}

struct Adventurecategory:Identifiable{
    let id=UUID()
    let name:String
    let size:String
    let engineType:String
    let boreAndStroke:String
    let transmission:String
    let trail:String
    let Wheelbase:String
    let seatHeight:String
    let Weight:String
    let fuelCapacity:String
}
extension Adventurecategory{
    static let demoAdventurecategory=Adventurecategory(name: "CBR650R", size: "60×60×60", engineType: "999cc liquid-cooled inline-four engine", boreAndStroke: "81mm x 48.5mm", transmission: "Six-speed", trail: "4.0 inches", Wheelbase: "4.0 inches", seatHeight: "4.0 inches", Weight: "445 pounds", fuelCapacity: "4.3 gallons")
}
struct Details:Identifiable{
    let id=UUID()
    let name:String
    let size:String
    let engineType:String
    let boreAndStroke:String
    let transmission:String
    let trail:String
    let Wheelbase:String
    let seatHeight:String
    let curbWeight:String
    let fuelCapacity:String
}
extension Details{
    static let demoDetail=Details(name: "CBR1000RR-R", size: "60×60×60", engineType: "999cc liquid-cooled inline-four engine", boreAndStroke: "81mm x 48.5mm", transmission: "Six-speed", trail: "4.0 inches", Wheelbase: "4.0 inches", seatHeight: "4.0 inches", curbWeight: "445 pounds", fuelCapacity: "4.3 gallons")
}
