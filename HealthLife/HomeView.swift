//
//  HomeView.swift
//  HealthLife
//
//  Created by userext on 09/11/23.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack(spacing: 20){
            Text("Aplications")
                .bold()
                .font(.title2)
                .padding(.trailing, 224)
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                
                    .foregroundStyle(Color("card_watercounter"))
                    .frame(width: 342, height: 99)
                Text("Water Counter")
                    .bold()
                Image("icon_water")
                    .padding(.trailing, 210)
                
            }
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundStyle(Color("card_stepcounter"))
                    .frame(width: 342, height: 99)
                Text("Step Counter")
                    .bold()
                Image("icon_feet")
                    .padding(.trailing, 210)
            }
        }
        .padding(.top, -250)
        .navigationTitle("Home")
        .navigationBarTitleDisplayMode(.inline)
    }
    
}

#Preview {
    HomeView()
}

