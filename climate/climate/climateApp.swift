//
//  climateApp.swift
//  climate
//
//  Created by Aditya Shah on 6/3/23.
//

import SwiftUI
import Firebase

@main
struct YourApp: App {
  // register app delegate for Firebase setup
    @StateObject var dataManager = DataManager()
    
    init() {
        FirebaseApp.configure()
    }

  var body: some Scene {
    WindowGroup {
        homeView()
            .environmentObject(dataManager)
    }
  }
}
