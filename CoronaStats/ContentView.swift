//
//  ContentView.swift
//  CoronaStats
//
//  Created by Özgür çetintaş on 25.02.2021.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var covidFetch = CovidFetchRequest()
    
    var body: some View {
        
            
        TabView{
            RecentView()
                .tabItem {
                    Tab(imageName: "chart.bar", text: "Recent")
                }
                .tag(0)
                
    //           map
                
            }
        }
    
}

    

private struct Tab: View {
    
    let imageName: String
    let text: String
    
    var body: some View {
        VStack {
            Image(systemName: imageName)
            Text(text)
        }
    }
}
