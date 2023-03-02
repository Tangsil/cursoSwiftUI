//
//  DriverRow.swift
//  cursoSwiftUI
//
//  Created by Jose on 1/3/23.
//

import SwiftUI

struct DriverRow: View {
    var driver: Driver
    
    var body: some View {
        HStack {
            Image(driver.imageName)
                .resizable()
                .scaledToFit()
                .clipShape(Circle())
                .background(Circle())
                .foregroundColor(driver.team.color)
                .overlay(Circle().stroke(.white, lineWidth: 3))
                .shadow(radius: 10)
                .padding(.leading)
                .padding(.top, 8)
                .padding(.bottom, 8)
            Text(driver.name)
                .font(.system(size: 20))
                .fontWeight(.bold)
            Spacer()
        }
    }
}

struct DriverRow_Previews: PreviewProvider {
    static var previews: some View {
        DriverRow(driver: drivers[8])
            .previewLayout(.fixed(width: 450, height: 100))
    }
}
