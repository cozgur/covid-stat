//
//  TotalDataCard.swift
//  CoronaStats
//
//  Created by Özgür çetintaş on 6.04.2021.
//

import SwiftUI

struct TotalDataCard: View {
    
    var number: String = "Err"
    var name: String = "Confirmed"
    var color: Color = .primary
    
    var body: some View {
        
        GeometryReader { geometry in
            
            VStack {
                Text(self.number)
                    .font(.subheadline)
                    .padding(5)
                    .foregroundColor(self.color)
                
                Text(self.name)
                    .font(.body)
                    .padding(5)
                    .foregroundColor(self.color)
                
                
            } // end of VStack
            .frame(width: geometry.size.width, height: 80, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .background(Color("cardBackgroundColor"))
            .cornerRadius(8.0)
        }//end of geometry
    }
}

struct TotalDataCard_Previews: PreviewProvider {
    static var previews: some View {
        TotalDataCard()
    }
}
