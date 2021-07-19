import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_ProductUserId_ToStringTests: XCTestCase {
    public func testEOS_ProductUserId_ToString_Null() throws {
        TestGlobals.reset()
        __on_EOS_ProductUserId_ToString = { AccountId, OutBuffer, InOutBufferLength in
            XCTAssertNil(AccountId)
            XCTAssertNil(OutBuffer)
            XCTAssertNil(InOutBufferLength)
            TestGlobals.sdkReceived.append("EOS_ProductUserId_ToString")
            return .init(rawValue: .zero)! }
        let result: String? = try SwiftEOS_ProductUserId_ToString(AccountId: OpaquePointer(bitPattern: Int(1))!)
        XCTAssertNil(result)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_ProductUserId_ToString"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
