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
            LinearGradient(gradient: Gradient(colors:[.blue,Color("lightblue")]),
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
                
                VStack(spacing:5){
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
                HStack (spacing:15){
                    WeatherOfTheDay(dayOfWeek: "TUE", imageName: "sun.cloud.fill", temparature:76)
                    WeatherOfTheDay(dayOfWeek: "WED", imageName: "sun.max.fill", temparature:70)
                    WeatherOfTheDay(dayOfWeek: "THU", imageName: "wind", temparature:60)
                    WeatherOfTheDay(dayOfWeek: "FRI", imageName: "sun.cloud.fill", temparature:56)
                    WeatherOfTheDay(dayOfWeek: "SAT", imageName: "sun.cloud.fill", temparature:65)
                }
                Spacer()
                   
            }
           
            
            
        }
    }
}

#Preview {
    ContentView()
}

struct WeatherOfTheDay: View {
    
    var dayOfWeek: String
    var imageName: String
    var temparature: Int
    
    var body: some View {
        VStack{
            Text(dayOfWeek)
                .font(.system(size:20,weight: .medium ))
                .foregroundColor(.white)
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40,height: 40)
            Text("\(temparature)°")
                .font(.system(size: 28,weight: .medium))
                .foregroundColor(.white)
        }
    }
}
