import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_EpicAccountId_FromStringTests: XCTestCase {
    public func testEOS_EpicAccountId_FromString_Null() throws {
        TestGlobals.reset()
        __on_EOS_EpicAccountId_FromString = { AccountIdString in
            XCTAssertNil(AccountIdString)
            TestGlobals.sdkReceived.append("EOS_EpicAccountId_FromString")
            return OpaquePointer(bitPattern: Int(1))! }
        let result: EOS_EpicAccountId = SwiftEOS_EpicAccountId_FromString(AccountIdString: nil)
        XCTAssertNil(result)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_EpicAccountId_FromString"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
