//
//  Water view.swift
//  HealthLife
//
//  Created by userext on 16/11/23.
//

import SwiftUI

struct Water_view: View {
    var body: some View {
        VStack{
            Text("Water Counter")
                .padding(.bottom,2)
                .font(.title2)
                .navigationTitle("Water Counter")
           Divider()
               .frame(height: 2)
                .background(Color.black)
                .padding(.bottom,100)
            Image("icon_glassempty")
                .padding(.bottom,72)
            HStack{
                VStack{
                    Text("Água tomada:")
                        .bold()
                        .padding(.trailing)
                    RoundedRectangle(cornerRadius: 15)
                        .foregroundColor(Color("water"))
                        .frame(maxWidth: 150)
                        .overlay{
                            Text("10 ml")
                        }
                }
                VStack{
                    Text("Meta diária:")
                        .bold()
                        .padding(.trailing,20)
                    RoundedRectangle(cornerRadius: 15)
                        .foregroundColor(Color("wave"))
                        .frame(maxWidth: 150)
                        .overlay{
                            Text("10 ml")
                        }
                }
                
            }.padding(.bottom, 87)
            Text("Adicione um copo:")
                .bold()
            Circle()
                .frame(maxWidth: 100)
                .foregroundColor(Color("water"))
                .overlay{
                    Image(systemName: "plus")
                        .frame(width: 100,height: 100)
                }
                .onTapGesture {
                    
                }
        
        }
        }
}

#Preview {
    Water_view()
}
