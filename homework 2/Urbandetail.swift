//
//  Urbandetail.swift
//  homework 2
//
//  Created by Weichung Chung on 2022/10/24.
//

import SwiftUI

struct Urbandetail: View {
    let detail:Urbancategory
    var body: some View {
        VStack(spacing: 15){
            Rectangle()
                .frame(width: 350, height: 350)
                .cornerRadius(40)
                .shadow(radius:5)
                .foregroundColor(Color("back"))
                .overlay{
                    Image(detail.name)
                        .resizable()
                        .scaledToFit()
                }
            HStack{
                Text("SIZE:")
                Text(detail.size)
            }
            HStack{
                Text("ENGINETYPE:")
                Text(detail.engineType)
            }
            HStack{
                Text("BORE STROKE:")
                Text(detail.boreAndStroke)
            }
            HStack{
                Text("TRANSMISSION:")
                Text(detail.transmission)
            }
            HStack{
                Text("TRAIL:")
                Text(detail.trail)
            }
            HStack{
                Text("WHEELBASE")
                Text(detail.Wheelbase)
            }
            HStack{
                Text("SEAT HEIGHT:")
                Text(detail.seatHeight)
            }
            HStack{
                Text("WEIGHT:")
                Text(detail.Weight)
            }
            HStack{
                Text("FUEL CAPACITY:")
                Text(detail.fuelCapacity)
            }
            .navigationTitle(detail.name)
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct Urbandetail_Previews: PreviewProvider {
    static var previews: some View {
        Urbandetail(detail: .demoUrbancategory)
    }
}
