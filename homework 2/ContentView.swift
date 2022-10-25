//
//  ContentView.swift
//  homework 2
//
//  Created by Weichung Chung on 2022/10/17.
//

import SwiftUI

struct ContentView: View {
    //@State private var moveDistance: Double = 0
    let supersportCategory=[Supersportcategory(name: "CBR650R", size: "213cm x 75cm x 115cm", engineType: "649cc Liquid-Cooled Inline Four-Cylinder", boreAndStroke: "67mm × 46mm", transmission:"6 speed", trail: "101mm", Wheelbase: "145cm", seatHeight: "81cm", Weight: "207kg", fuelCapacity: "15.4L"),Supersportcategory(name: "CBR500R", size: "2,08cm x 76cm x 114.5cm", engineType: "461cc Parallel-twin", boreAndStroke: "67mm × 66.8mm", transmission: "6 speed", trail: "102mm", Wheelbase:"141cm", seatHeight: "785mm", Weight: "192kg", fuelCapacity: "17.1L"),]
    let urbanCategory=[Urbancategory(name: "FORZA750", size: "220cm x 79cm x 148.5 cm", engineType: "745cc Parallel-twin", boreAndStroke: "77mm x80mm", transmission: "6 speed", trail: "104mm", Wheelbase: "158cm", seatHeight: "76mm", Weight: "235kg", fuelCapacity: "13.2L"),Urbancategory(name: "FORZA350", size: "214.5cm x 75.4cm x 150.5cm", engineType: "330cc single cylinder", boreAndStroke: "77mm × 10.7mm", transmission: "CVT", trail: "89mm", Wheelbase: "151mm", seatHeight: "78mm", Weight: "182kg", fuelCapacity: "11.7L"),Urbancategory(name: "ADV350", size: "220cm x 89.5cm x 143cm", engineType: "330cc single cylinder", boreAndStroke: "77mm x 70.8mm", transmission: "CVT", trail: "89mm", Wheelbase: "152cm", seatHeight: "795mm", Weight: "186kg", fuelCapacity: "11.7L")]
    let cruiderCategory=[Cruidercategory(name: "GOLDWING", size: "257.5cm x 905cm x 155.5 cm", engineType: "1833cc opposed boxer six cylinders", boreAndStroke: "74 × 71mm", transmission: "5 speed", trail: "109mm", Wheelbase: "1689mm", seatHeight: "74cm", Weight: "406kg", fuelCapacity: "25L"),Cruidercategory(name: "NT1100", size: "224 x 86.5 x 152.5cm", engineType: "1084cc parallel twin", boreAndStroke: "92 × 81.5mm", transmission: "6 speed", trail: "108mm", Wheelbase: "1535mm", seatHeight: "82cm", Weight: "248kg", fuelCapacity: "20.4L"),Cruidercategory(name: "REBEL1100", size: "224 x 83.4 x 111.5 cm", engineType: "1084cc parallel twin", boreAndStroke: "92 × 81.5mm", transmission: "6 speed", trail: "11cm", Wheelbase: "152cm", seatHeight: "70cm", Weight: "223kg", fuelCapacity: "13.6L"),Cruidercategory(name: "REBEL500", size: "220.5 x 82 x 109cm", engineType: "471cc parallel twin", boreAndStroke: "67 × 66.8mm", transmission: "6 speed", trail: "11cm", Wheelbase: "1491mm", seatHeight: "691mm", Weight: "185kg", fuelCapacity: "11.4L")]
    let adventureCategory=[Adventurecategory(name: "AFRICA TWIN ADVENTURE SPORTS", size: "233 x 96 x 134.5 cm", engineType: "1084cc parallel twin", boreAndStroke: "92 × 81.5mm", transmission: "6 speed", trail: "113mm", Wheelbase: "1575mm", seatHeight: "850mm", Weight: "238kg", fuelCapacity: "24.8L"),Adventurecategory(name: "AFRICA TWIN", size: "233 x 96 x 139.5cm", engineType: "1084cc parallel twin", boreAndStroke: "92 × 81.5mm", transmission: "6 speed", trail: "113mm", Wheelbase: "1575mm", seatHeight: "850mm", Weight: "226kg", fuelCapacity: "18.8L"),Adventurecategory(name: "X-ADV", size: "221.5 x 94 x 150.5cm", engineType: "745cc parallel twin", boreAndStroke: "77 × 80mm", transmission: "6 speed", trail: "104mm", Wheelbase: "159cm", seatHeight: "82cm", Weight: "236kg", fuelCapacity: "13.2L")]
    let streetCategory=[Streetcategory(name: "CB1000R", size: "211.5 x 78.9 x 109cm", engineType: "998cc transverse four cylinder", boreAndStroke: "75 × 56.5mm", transmission: "6 speed", trail: "10cm", Wheelbase: "1455mm", seatHeight: "83cm", Weight: "212kg", fuelCapacity: "16.2L"),Streetcategory(name: "CB650R", size: "213 x 78 x 107.5cm", engineType: "649cc transverse four cylinder", boreAndStroke: "67 × 46mm", transmission: "6 speed", trail: "101mm", Wheelbase: "145cm", seatHeight: "81cm", Weight: "202.7kg", fuelCapacity: "15.5L"),Streetcategory(name: "CB300R", size: "202 x 80.5 x 105cm", engineType: "286cc single cylinder", boreAndStroke: "76 × 63mm", transmission: "6 speed", trail: "93mm", Wheelbase: "1352mm", seatHeight: "799mm", Weight: "143kg", fuelCapacity: "10L")]
    var body: some View {
        NavigationView{
            VStack{
                ScrollView{
                    Section{
                        HStack{
                            TabView{
                                ForEach(supersportCategory) { type in
                                    NavigationLink(destination: Sportdetail(detail:type)){
                                        Supersport(category: type)
                                    }
                                    .foregroundColor(.black)
                                }
                            }.tabViewStyle(.page)
                        }.frame(width: 375, height: 375)
                        
                    }
                header:{
                    Text("SPORT")
                        .font(.largeTitle)
                        .fontWeight(.light)
                }
                    Section{
                        HStack{
                            TabView{
                                ForEach(urbanCategory) { type in NavigationLink(destination: Urbandetail(detail: type)){
                                    Urban(category: type)
                                }
                                .foregroundColor(.black)
                                }
                            }.tabViewStyle(.page)
                        }.frame(width: 375, height: 375)
                    }
                header:{
                    Text("URBAN")
                        .font(.largeTitle)
                        .fontWeight(.light)
                }
                    Section{
                        HStack{
                            TabView{
                                ForEach(cruiderCategory) { type in
                                    NavigationLink(destination: Cruiderdetail(detail: type)){
                                        Cruider(category: type)
                                    }
                                    .foregroundColor(.black)
                                }
                            }.tabViewStyle(.page)
                        }.frame(width: 375, height: 375)
                    }
                header:{
                    Text("CRUIDER")
                        .font(.largeTitle)
                        .fontWeight(.light)
                }
                    Section{
                        HStack{
                            TabView{
                                ForEach(adventureCategory) { type in NavigationLink(destination: Adventuredetail(detail: type)){
                                    Adventure(category: type)
                                        //.animation(.linear,value: 100)

                                }
                                    //moveDistance += 100
                                .foregroundColor(.black)
                                
                                }
                            }.tabViewStyle(.page)
                        }.frame(width: 375, height: 375)
                    }
                header:{
                    Text("ADVENTURE")
                        .font(.largeTitle)
                        .fontWeight(.light)
                }
                    Section{
                        HStack{
                            TabView{
                                ForEach(streetCategory) { type in NavigationLink(destination: Streetdetail(detail: type)){
                                    Street(category: type)
                                }
                                .foregroundColor(.black)
                                }
                            }.tabViewStyle(.page)
                        }.frame(width: 375, height: 375)
                    }
                header:{
                    Text("STREET")
                        .font(.largeTitle)
                        .fontWeight(.light)
                }
                }.background(.ultraThinMaterial)
            }
            .navigationTitle("Type")
            .navigationBarTitleDisplayMode(.large)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
