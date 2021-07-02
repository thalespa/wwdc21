//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Thales Andrade on 03/06/21.
//

import SwiftUI

@main
struct LandmarksApp: App {
    
    @StateObject private var modelData = ModelData()

    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(modelData)
        }
    }
}
