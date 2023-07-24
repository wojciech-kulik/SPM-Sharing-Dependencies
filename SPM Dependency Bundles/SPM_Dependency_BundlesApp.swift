//
//  SPM_Dependency_BundlesApp.swift
//  SPM Dependency Bundles
//
//  Created by Wojciech Kulik on 24/07/2023.
//

import SwiftUI
import Swinject // <- from SharedDependencies
import SwinjectAutoregistration // <- from SharedDependencies

let container = Container()

@main
struct SPM_Dependency_BundlesApp: App {
    init() {
        container.autoregister(MyViewModel.self, initializer: MyViewModel.init)
    }

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
