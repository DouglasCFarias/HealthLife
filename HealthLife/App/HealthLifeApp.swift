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
    @State var selectedTab: Tab = .home
    var body: some Scene {
        WindowGroup {
            TabBarView(selectedTab: $selectedTab){
                
            }  
        profilesView: { HomeView()

        }
            //.environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
