import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_EpicAccountId_ToStringTests: XCTestCase {
    public func testEOS_EpicAccountId_ToString_Null() throws {
        TestGlobals.reset()
        __on_EOS_EpicAccountId_ToString = { AccountId, OutBuffer, InOutBufferLength in
            XCTAssertNil(AccountId)
            XCTAssertNil(OutBuffer)
            XCTAssertNil(InOutBufferLength)
            TestGlobals.sdkReceived.append("EOS_EpicAccountId_ToString")
            return .init(rawValue: .zero)! }
        let result: String? = try SwiftEOS_EpicAccountId_ToString(AccountId: OpaquePointer(bitPattern: Int(1))!)
        XCTAssertNil(result)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_EpicAccountId_ToString"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
