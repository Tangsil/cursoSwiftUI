//
//  DriversList.swift
//  cursoSwiftUI
//
//  Created by Jose on 1/3/23.
//

import SwiftUI

struct DriversList: View {
    var body: some View {
        NavigationView {
            List (drivers) {
                driver in
                NavigationLink(destination: DriverDetail(driver: driver)) {
                    DriverRow(driver: driver).frame(height: 60)
                }
            }
            .navigationBarTitle(Text("Listado pilotos"), displayMode: .large)
        }
    }
}

struct DriversList_Previews: PreviewProvider {
    static var previews: some View {
        DriversList()
    }
}
