//
//  Motorow.swift
//  homework 2
//
//  Created by Weichung Chung on 2022/10/18.
//

import SwiftUI

struct Motorow: View {
    let supersportCategory=[Supersportcategory(category:"cbr650r"),Supersportcategory(category:"cbr500r")]
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
