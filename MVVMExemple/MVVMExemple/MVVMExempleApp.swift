//
//  MVVMExempleApp.swift
//  MVVMExemple
//
//  Created by Jean Camargo on 08/08/23.
//

import SwiftUI

@main
struct MVVMExempleApp: App {
    @StateObject private var appData = ApplicationData()
    
    var body: some Scene {
        WindowGroup {
            ContentView(appData: appData)
        }
    }
}
