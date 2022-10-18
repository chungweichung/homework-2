//
//  urban.swift
//  homework 2
//
//  Created by Weichung Chung on 2022/10/17.
//

import SwiftUI

struct Urban: View {
    let urbanCategory=[Urbancategory(category:"forza750"),Urbancategory(category:"forza350"),Urbancategory(category: "adv350")]
    let category:Urbancategory
    var body: some View {
        VStack{
            Rectangle()
                .frame(width: 375, height: 375)
                .cornerRadius(20)
                .foregroundColor(Color("back"))
                .overlay{
                    VStack{
                        Image(category.category)
                            .resizable()
                            .scaledToFit()
                        Text(category.category)
                            .backgroundStyle(Color.gray)
                            //.position(x:100,y:40)
                            .font(.title)
                    }
                }
        }
    }
}

struct Urban_Previews: PreviewProvider {
    static var previews: some View {
        Urban(category:.demoUrbancategory)
    }
}
