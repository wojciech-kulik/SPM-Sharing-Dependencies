import BigInt // <- from SharedDependencies

public final class FeeCalculator {
    public init() {}

    public func calculateAmountWithFee(for amount: BigInt) -> BigInt {
        BigInt(Double(amount) * 1.05)
    }
}
