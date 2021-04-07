//
//  CountryDetailView.swift
//  CoronaStats
//
//  Created by Özgür çetintaş on 7.04.2021.
//

import SwiftUI

struct CountryDetailView: View {
    
    var countryData: CountryData
    
    
    var body: some View {
        
        VStack{
            
            VStack {
                
                CountryDetailRow(number: countryData.confirmed.formatNumber(), name: "Confirmed")
                padding(.top)
                CountryDetailRow(number: countryData.critical.formatNumber(), name: "Critical", color: .yellow)
                CountryDetailRow(number: countryData.deaths.formatNumber(), name: "Deaths", color: .red)
                CountryDetailRow(number: String(format: "%.2f", countryData.fatalityRate), name: "Deaths %", color: .purple)
                CountryDetailRow(number: countryData.recovered.formatNumber(), name: "Recovered", color: .green)
                CountryDetailRow(number: String(format: "%.2f", countryData.recoveredRate), name: "Recovery % ", color: .blue)

            }
            .background(Color("cardBackgroundColor"))
            .cornerRadius(8)
            .padding()
            
            Spacer()
        }
        .padding(.top,50)
        .navigationBarTitle(countryData.country)
        
    }
}

struct CountryDetailView_Previews: PreviewProvider {
    static var previews: some View {
        CountryDetailView(countryData: testCountryData)
    }
}
