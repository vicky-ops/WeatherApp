//
//  WeatherButton.swift
//  WeatherApp
//
//  Created by Vicky_ops on 08/05/24.
//

import Foundation
import SwiftUI


struct WeatherButton:View{
    var body: some View{
        VStack(spacing:20){
            Text("Weather Button")
                .frame(width: 280,height: 50)
                .background(.blue)
                .italic()
                 .font(.system(size: 20,weight: .medium,design: .default))
                .cornerRadius(10)
            Text("Weather Button")
                .frame(width: 280,height: 50)
                .background(.blue)
                .foregroundColor(.white)
                .font(.system(size: 20,weight: .medium,design: .default))
                .cornerRadius(10)
        }
        
    
    }
}
