//
//  ListHeaderView.swift
//  CoronaStats
//
//  Created by Özgür çetintaş on 28.02.2021.
//

import SwiftUI

struct ListHeaderView: View {
    var body: some View {
        
        HStack{
        
            Text("Country")
                .fontWeight(.bold)
                .font(.subheadline)
                .frame(width: 80, alignment: .leading)
                .padding(.leading, 10)
            
            Spacer()
            Text("Conf.")
                .fontWeight(.bold)
                .font(.subheadline)
                .frame(height: 40)
                .padding(.leading, 3)
            
            Spacer()
            Text("Deaths")
                .fontWeight(.bold)
                .font(.subheadline)
                .frame(height: 40)
                .padding(.leading, 3)
            
            Spacer()
            Text("Recover")
                .fontWeight(.bold)
                .font(.subheadline)
                .frame(height: 40)
                .padding(.trailing, 10)
            
        }
        .background(Color.gray)
    }
}

struct ListHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ListHeaderView()
    }
}
