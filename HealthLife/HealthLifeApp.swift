//
//  HealthLifeApp.swift
//  HealthLife
//
//  Created by userext on 09/11/23.
//

import SwiftUI

@main
struct HealthLifeApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            //ContentView()
            HomeView()
                //.environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
