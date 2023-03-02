//
//  DriverDetail.swift
//  cursoSwiftUI
//
//  Created by Jose on 27/2/23.
//

import SwiftUI

struct DriverDetail: View {
    var driver: Driver
    
    var body: some View {
        VStack {
            Image(driver.team.imageName).resizable().frame(height: 230)
            
            Image(driver.imageName)
                .resizable()
                .frame(width: 150, height: 150)
                .clipShape(Circle())
                .background(Circle())
                .foregroundColor(.white)
                .overlay(Circle().stroke(.white, lineWidth: 3))
                .shadow(radius: 18)
                .offset(x: 0, y: -65)
                .padding(.bottom, -55)
            
            Text(driver.name)
                .font(.system(size: 45))
                .fontWeight(.bold)
            
            StatsRow(startKey: "Edad", startValue: String(driver.age))
            
            StatsRow(startKey: "Número", startValue: String(driver.number))
            
            StatsRow(startKey: "País", startValue: driver.birthPlace)
            
            Spacer()
        }.edgesIgnoringSafeArea(.top)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        DriverDetail(driver: drivers[4])
    }
}
