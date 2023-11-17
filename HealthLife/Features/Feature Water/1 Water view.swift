//
//  1 Water view.swift
//  HealthLife
//
//  Created by userext on 16/11/23.
//

import SwiftUI

struct __Water_view: View {
    @State var weight: Int
    var body: some View {
        VStack{
            Text("Water Counter")
                .padding(.bottom,2)
                .font(.title2)
                .navigationTitle("Water Counter")
            Divider()
                .frame(height: 2)
                .background(Color.black)
            Text("Digite seu peso:")
                .font(.title2)
                .padding(.trailing,200)
                .bold()
                TextField("", value: $weight,format: .number)
                .padding(.top,50)
                .padding(.leading,179)
          
            Spacer()
        }
    }
}

#Preview {
    __Water_view(weight: 0)
}
