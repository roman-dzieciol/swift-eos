import XCTest
@testable import SwiftEOS

extension OpaquePointer {
    public static var nonZeroPointer: OpaquePointer { OpaquePointer(bitPattern: Int(1))! }
}
extension UnsafeRawPointer {
    public static var nonZeroPointer: UnsafeRawPointer { UnsafeRawPointer(bitPattern: Int(1))! }
}
extension UnsafeMutableRawPointer {
    public static var nonZeroPointer: UnsafeMutableRawPointer { UnsafeMutableRawPointer(bitPattern: Int(1))! }
}

extension RawRepresentable where RawValue: BinaryInteger {
    public static var zero: Self { .init(rawValue: .zero)! }
}

extension String {
    public static var empty: String { "" }
}

final class SwiftEOSTests: XCTestCase {
    func testExample() throws {
    }
}
