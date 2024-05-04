//
//  ContentView.swift
//  WeatherApp
//
//  Created by Vicky_ops on 05/05/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors:[Color.blue,Color.white]), 
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack{
                Text("Bengaluru, IN")
                    .font(.system(size:32,weight:.medium,design: .default))
                    .foregroundColor(.white)
//                    .frame(width: 300)
                    .padding()
//                    .border(Color.yellow)
                
                VStack(spacing:8){
                    Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180,height: 180)
//                        .border(Color.yellow)
                    Text("76°")
                        .font(.system(size: 54,weight: .medium))
                        .foregroundColor(.white)
                    
                }
                Spacer()
                   
            }
           
            
            
        }
    }
}

#Preview {
    ContentView()
}
