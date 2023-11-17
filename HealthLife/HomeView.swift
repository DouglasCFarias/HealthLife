//
//  HomeView.swift
//  HealthLife
//
//  Created by userext on 09/11/23.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationStack {
            VStack(spacing: 20){
                Text("Aplications")
                    .bold()
                    .font(.title2)
                    .padding(.trailing, 224)
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundStyle(Color("card_watercounter"))
                        .frame(width: 342, height: 99)
                    
                    VStack {
                        Text("Water Counter")
                            .bold()
                            .font(.title3)
                            .padding(.leading, 45)
                        Text("Controle sua ingestão")
                            .padding(.leading, 40)
                            .font(.system(size: 12))
                        Text("diária de água.")
                            .font(.system(size: 12))
                    }
                    Circle()
                        .frame(width: 71, height: 71)
                        .padding(.trailing, 210)
                        .foregroundStyle(Color("icon_border_water"))
                    Image("icon_water")
                        .padding(.trailing, 210)
                }
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundStyle(Color("card_stepcounter"))
                        .frame(width: 342, height: 99)
                    VStack {
                        Text("Step Counter")
                            .bold()
                            .font(.title3)
                            .padding(.leading, 40)
                        Text("Controle seus passos em  ")
                            .padding(.leading, 70)
                            .font(.system(size: 12))
                        Text("         determinado tempo")
                            .font(.system(size: 12))
                        
                        
                    }
                    Circle()
                        .frame(width: 71, height: 71)
                        .padding(.trailing, 210)
                        .foregroundStyle(Color("icon_border_step"))
                    Image("icon_feet")
                        .padding(.trailing, 210)
                }
            }
           // Spacer()
        }
        .padding(.top, -250)
        .navigationTitle("Home")
        .navigationBarTitleDisplayMode(.inline)
    }
    
}

#Preview {
    HomeView()
}

