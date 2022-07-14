//
//  FEMClockApp.swift
//  FEMClock
//
//  Created by Rachel Radford on 7/8/22.
//

import SwiftUI

@main
struct FEMClockApp: App {
    @StateObject var vm = ViewModel()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(vm)
        }
    }
}
