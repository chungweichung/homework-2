//
//  Moto.swift
//  homework 2
//
//  Created by Weichung Chung on 2022/10/17.
//

import SwiftUI
import Foundation
struct Moto: View {
    let mototype:Mototype
    var body: some View {
        HStack{
            Image(mototype.type)
                
                .resizable()
                .backgroundStyle(.yellow)
                .scaledToFit()
                .frame(height: 50)
                
            //Spacer()
             //   .frame(height: 40)
            Text(mototype.type)
                .font(.title2)
            
        }
    }
}

struct Moto_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            Moto(mototype: .demomototype)
        }
    }
}
