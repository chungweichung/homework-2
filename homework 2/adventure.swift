//
//  adventure.swift
//  homework 2
//
//  Created by Weichung Chung on 2022/10/17.
//

import SwiftUI

struct Adventure: View{
    let category:Adventurecategory
    var body: some View {
        HStack{
            Rectangle()
                .frame(width: 350, height: 350)
                .cornerRadius(35)
                .shadow(radius:5)
                .foregroundColor(Color("back"))
                .overlay{
                    VStack{
                        Image(category.name)
                            .resizable()
                            .scaledToFit()
                        Text(category.name)
                            .font(.title3)
                            .fontWeight(.thin)
                            .foregroundColor(Color("namecolor"))
                    }
                }
        }
    }
    
}

struct Adventure_Previews: PreviewProvider {
    static var previews: some View {
        Adventure(category: .demoAdventurecategory)
    }
}
