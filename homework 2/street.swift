//
//  street.swift
//  homework 2
//
//  Created by Weichung Chung on 2022/10/17.
//

import SwiftUI
struct Street: View {
    let category:Streetcategory
    var body: some View {
        HStack{
            Rectangle()
                .frame(width: 350, height: 350)
                .cornerRadius(45)
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

struct Street_Previews: PreviewProvider {
    static var previews: some View {
        Street(category: .demoStreetcategory)
    }
}
