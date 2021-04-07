//
//  SearchView.swift
//  CoronaStats
//
//  Created by Özgür çetintaş on 7.04.2021.
//

import SwiftUI

struct SearchView: View {
    
    @Binding var searchText: String
    
    var body: some View {
        HStack {
            TextField("Country...", text: $searchText)
                .padding()
        }
            .frame(height: 50)
            .background(Color("cardBackgroundColor"))
        
    }
}


