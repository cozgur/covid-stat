//
//  CountryDetailRow.swift
//  CoronaStats
//
//  Created by Özgür çetintaş on 7.04.2021.
//

import SwiftUI

struct CountryDetailRow: View {
    
    var number: String = "Err"
    var name: String = "Confirmed"
    var color: Color = .primary
    
    var body: some View {
        
        VStack{
            HStack {
                Text(self.name)
                    .font(.body)
                    .padding(5)
                Spacer()
                Text(self.number)
                    .font(.subheadline)
                    .padding(5)
                    .foregroundColor(color)
            }
            Divider()
        }
        .padding(.leading)
        .padding(.trailing)
        
    }
}

struct CountryDetailRow_Previews: PreviewProvider {
    static var previews: some View {
        CountryDetailRow()
    }
}
