//
//  CountryDataRowView.swift
//  CoronaStats
//
//  Created by Özgür çetintaş on 28.02.2021.
//

import SwiftUI

struct CountryDataRowView: View {
    
    var countryData: CountryData
    
    var body: some View {
        
        HStack{
        
            Text(countryData.country)
                .fontWeight(.semibold)
                .font(.none)
                .lineLimit(2)
                .frame(width: 80, alignment: .leading)
            
            Spacer()
            Text(countryData.confirmed.formatNumber())
                .font(.body)
                .frame(height: 30)
                .padding(.leading, 5)
            
            Spacer()
            Text(countryData.deaths.formatNumber())
                .frame(height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .font(.body)
                .foregroundColor(.red)
                .padding(.leading, 5)
            
            Spacer()
            Text(countryData.recovered.formatNumber())
                .frame(height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .font(.body)
                .foregroundColor(.green)
            
        }
        
    }
}

struct CountryDataRowView_Previews: PreviewProvider {
    static var previews: some View {
        CountryDataRowView(countryData: testCountryData)
    }
}
