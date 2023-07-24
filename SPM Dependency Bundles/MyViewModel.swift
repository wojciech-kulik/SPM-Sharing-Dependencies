//
//  MyViewModel.swift
//  SPM Dependency Bundles
//
//  Created by Wojciech Kulik on 24/07/2023.
//

import BigInt // <- from ShareDependencies
import BusinessLogic // <- from BusinessLogic
import SwiftUI

final class MyViewModel: ObservableObject {
    var amountWithFee: BigInt { feeCalculator.calculateAmountWithFee(for: 100) }

    private let feeCalculator = FeeCalculator()
}
