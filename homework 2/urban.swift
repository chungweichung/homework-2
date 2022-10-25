//
//  urban.swift
//  homework 2
//
//  Created by Weichung Chung on 2022/10/17.
//

import SwiftUI

struct Urban: View {
    let category:Urbancategory
    var body: some View {
        VStack{
            Rectangle()
                .frame(width: 350, height: 350)
                .cornerRadius(40)
                .shadow(radius:5)
                .foregroundColor(Color("back"))
                .overlay{
                    VStack{
                        Image(category.name)
                            .resizable()
                            .scaledToFit()
                        Text(category.name)
                            .backgroundStyle(Color.gray)
                            .font(.title3)
                            .fontWeight(.thin)
                            .foregroundColor(Color("namecolor"))
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
