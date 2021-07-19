import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_EpicAccountId_IsValidTests: XCTestCase {
    public func testEOS_EpicAccountId_IsValid_Null() throws {
        TestGlobals.reset()
        __on_EOS_EpicAccountId_IsValid = { AccountId in
            XCTAssertNil(AccountId)
            TestGlobals.sdkReceived.append("EOS_EpicAccountId_IsValid")
            return .zero }
        let result: Bool = try SwiftEOS_EpicAccountId_IsValid(AccountId: OpaquePointer(bitPattern: Int(1))!)
        XCTAssertEqual(result, false)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_EpicAccountId_IsValid"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
