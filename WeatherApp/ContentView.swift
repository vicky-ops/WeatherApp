//
//  ContentView.swift
//  WeatherApp
//
//  Created by Vicky_ops on 05/05/24.
//
 
import SwiftUI

struct ContentView: View {
    
    @State private var isNight = true
    
    var body: some View {
        ZStack{
            BackGroundView(isNight: $isNight)
            VStack{
               CityTextView(cityName: "Bengaluru, IN")
                
                MainWeatherStatusView(weatherIcon: isNight ? "moon.stars.fill" : "cloud.sun.fill", temparature: 56)
                .padding(.bottom,50)
                HStack (spacing:15){
                    WeatherOfTheDay(dayOfWeek: "TUE", imageName: "cloud.sun.fill", temparature:76)
                    WeatherOfTheDay(dayOfWeek: "WED", imageName: "sun.max.fill", temparature:70)
                    WeatherOfTheDay(dayOfWeek: "THU", imageName: "wind", temparature:60)
                    WeatherOfTheDay(dayOfWeek: "FRI", imageName: "cloud.sun.fill", temparature:56)
                    WeatherOfTheDay(dayOfWeek: "SAT", imageName: "cloud.sun.fill", temparature:65)
                }
                Spacer()
                
                Button{
                    isNight.toggle()
                    
                }label: {
                    GenericButton(buttonLabel: "Change Day Time", 
                                  buttonBackGroundColor: Color.white,
                                  textColor: .blue
                    )
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


struct BackGroundView:View {
    
    @Binding var isNight:Bool
    
    var body: some View {
       
        LinearGradient(gradient:Gradient(colors: [isNight ? .black : .blue ,isNight ? .gray : Color("lightblue")]),
                       startPoint: .topLeading,
                       endPoint:.bottomTrailing
        )
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}

struct CityTextView:View{
    var cityName:String
    
    var body: some View{
        Text(cityName)
            .font(.system(size: 32,weight: .medium,design: .default))
            .foregroundColor(.white)
            .padding()
    }
}
struct  MainWeatherStatusView: View{
    var weatherIcon: String
    var temparature: Int
    var body: some View{
        VStack(spacing:5){
            Image(systemName: weatherIcon)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width:180,height:180)
            Text("\(temparature)°")
                .font(.system(size: 54,weight: .medium))
                .foregroundColor(.white)
        }
    }
}

struct GenericButton:View{
    var buttonLabel:String
    var buttonBackGroundColor:Color
    var textColor:Color
    var body: some View{
        Text(buttonLabel)
            .frame(width: 280,height: 60)
            .background(buttonBackGroundColor)
            .foregroundColor(textColor)
            .font(.system(size: 20,weight: .medium,design: .default))
            .cornerRadius(10)
    }
}
 
