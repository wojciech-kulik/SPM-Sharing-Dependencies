//
//  ContentView.swift
//  SPM Dependency Bundles
//
//  Created by Wojciech Kulik on 24/07/2023.
//

import Kingfisher // <- from UtilsDependencies
import SwiftUI
import UtilsDependencies

struct ContentView: View {
    @StateObject var viewModel = container.resolve(MyViewModel.self)!

    var body: some View {
        VStack(spacing: 18) {
            UtilsDependencies().container.resolve(KFImage.self)!
            KFImage(URL(string: "https://loremflickr.com/640/300")!)
            Text("Amount: \(viewModel.amountWithFee.formatted())")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
