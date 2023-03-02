//
//  StatsRow.swift
//  cursoSwiftUI
//
//  Created by Jose on 1/3/23.
//

import SwiftUI

struct StatsRow: View {
    var startKey: String
    var startValue: String
    
    var body: some View {
        HStack {
            Text(startKey + ":")
                .font(.system(size: 35))
                .fontWeight(.bold)
                .padding(.leading)
            
            Text(startValue)
                .font(.system(size: 30))
                .fontWeight(.ultraLight)
                .padding(.trailing, 40)
            
            Spacer()
        }
    }
}

struct StatsRow_Previews: PreviewProvider {
    static var previews: some View {
        StatsRow(startKey: "Edad:", startValue: "31")
    }
}
