import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_ProductUserId_IsValidTests: XCTestCase {
    public func testEOS_ProductUserId_IsValid_Null() throws {
        TestGlobals.reset()
        __on_EOS_ProductUserId_IsValid = { AccountId in
            XCTAssertNil(AccountId)
            TestGlobals.sdkReceived.append("EOS_ProductUserId_IsValid")
            return .zero }
        let result: Bool = try SwiftEOS_ProductUserId_IsValid(AccountId: OpaquePointer(bitPattern: Int(1))!)
        XCTAssertEqual(result, false)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_ProductUserId_IsValid"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
