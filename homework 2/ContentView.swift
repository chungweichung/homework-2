//
//  ContentView.swift
//  homework 2
//
//  Created by Weichung Chung on 2022/10/17.
//

import SwiftUI

//let mototype=[Mototype()]
struct ContentView: View {
    let types=[Mototype(type:"Supersport"),Mototype(type: "Street"),Mototype(type: "Adventure"),Mototype(type: "Urban"),Mototype(type: "Cruider")]
    var body: some View {
        NavigationView{
            VStack(alignment: .center){
                List{
                    ForEach(types){i in
                        
                        NavigationLink{
                            Motorow( mototype: i)
                        }label:{
                            Moto(mototype: i)
                        }
                    }
                    .listRowInsets(EdgeInsets(top: 40, leading: 10, bottom: 40, trailing: 30))
                }
            }
            .navigationTitle("Type")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
