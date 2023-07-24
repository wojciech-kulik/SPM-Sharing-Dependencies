import Kingfisher
import SwiftUI
import Swinject // <- from SharedDependencies

public struct UtilsDependencies {
    public let container = Container()

    public init() {
        container.register(KFImage.self, factory: { _ in
            KFImage(URL(string: "https://loremflickr.com/640/282")!)
        })
    }
}
