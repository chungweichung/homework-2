//
//  Motorow.swift
//  homework 2
//
//  Created by Weichung Chung on 2022/10/18.
//

import SwiftUI

struct Motorow: View {
    let supersportCategory=[Supersportcategory(name: "cbr650r", size:"60×60×60", engineType: "999cc liquid-cooled inline-four engine", boreAndStroke: "81mm x 48.5mm", transmission: "Six-speed", trail: "4.0 inches", Wheelbase: "4.0 inches", seatHeight: "4.0 inches", Weight: "445 pounds", fuelCapacity: "4.3 gallons")]
    let mototype:Mototype
    var body: some View {
        //let columns=Array(repeating: GridItem(), count: 2)
            TabView{
                ForEach(supersportCategory){supersportcategory in Supersport(category: supersportcategory)
                }
            }
            .tabViewStyle(.page)
            .indexViewStyle(.page(backgroundDisplayMode: .always))
    }
}

struct Motorow_Previews: PreviewProvider {
    static var previews: some View {
        Motorow(mototype: .demomototype)
    }
}
