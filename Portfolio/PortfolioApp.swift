//
//  PortfolioApp.swift
//  Portfolio
//
//  Created by Will Saults on 3/4/24.
//

import SwiftUI

@main
struct PortfolioApp: App {
    @StateObject var dataController = DataController()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, dataController.container.viewContext)
                .environmentObject(dataController)
        }
    }
}
