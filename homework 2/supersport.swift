//
//  supersport.swift
//  homework 2
//
//  Created by Weichung Chung on 2022/10/17.
//

import SwiftUI

struct Supersport: View {
    let supersportCategory=[Supersportcategory(category:"cbr650r"),Supersportcategory(category:"cbr500r")]
    let category:Supersportcategory
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

struct Supersport_Previews: PreviewProvider {
    static var previews: some View {
        Supersport(category:.demoSupersportcategory)
    }
}
