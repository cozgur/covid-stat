//
//  CoronaStatsApp.swift
//  CoronaStats
//
//  Created by Özgür çetintaş on 25.02.2021.
//

import SwiftUI

@main
struct CoronaStatsApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
