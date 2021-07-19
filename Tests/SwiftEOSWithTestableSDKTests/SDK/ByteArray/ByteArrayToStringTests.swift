import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_ByteArray_ToStringTests: XCTestCase {
    public func testEOS_ByteArray_ToString_Null() throws {
        TestGlobals.reset()
        __on_EOS_ByteArray_ToString = { ByteArray, Length, OutBuffer, InOutBufferLength in
            XCTAssertNil(ByteArray)
            XCTAssertEqual(Length, .zero)
            XCTAssertNil(OutBuffer)
            XCTAssertNil(InOutBufferLength)
            TestGlobals.sdkReceived.append("EOS_ByteArray_ToString")
            return .init(rawValue: .zero)! }
        let result: String? = try SwiftEOS_ByteArray_ToString(ByteArray: nil)
        XCTAssertNil(result)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_ByteArray_ToString"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
