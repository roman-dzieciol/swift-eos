
import Foundation
import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

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

class GTest {

    static let current = GTest()

    var sdkReceived: [String] = []
    var swiftReceived: [String] = []

    var strings: [String: UnsafeMutableBufferPointer<CChar>] = [:]
    var deallocs: [() -> Void] = []

    init() {}

    func reset() {
        sdkReceived.removeAll()
        swiftReceived.removeAll()

        strings.forEach {
            $0.value.deallocate()
        }
        strings.removeAll()

        deallocs.forEach {
            $0()
        }
        deallocs.removeAll()
    }

    func pointer(string: String) -> UnsafePointer<CChar>? {
        if let pointer = strings[string] {
            return UnsafePointer(pointer.baseAddress!)
        }

        let buffer = string.utf8CString
        let pointer = UnsafeMutableBufferPointer<CChar>.allocate(capacity: buffer.count)
        _ = pointer.initialize(from: buffer)
        strings[string] = pointer
        return UnsafePointer(pointer.baseAddress!)
    }

    func pointer<Object>(object: Object) -> UnsafeMutablePointer<Object> {
        let pointer = UnsafeMutablePointer<Object>.allocate(capacity: 1)
        pointer.initialize(to: object)
        deallocs += [{
            pointer.deinitialize(count: 1)
            pointer.deallocate()
        }]
        return pointer
    }
}

final class SwiftEOSWithTestableSDKTests: XCTestCase {
    func testExample() throws {

        __on_EOS_EResult_ToString = { result in
            XCTAssertEqual(result, .EOS_Success)
            return GTest.current.pointer(string: "123")
        }

        XCTAssertEqual(SwiftEOS_EResult_ToString(Result: .EOS_Success), "123")
    }
}
