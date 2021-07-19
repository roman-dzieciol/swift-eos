import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_GetVersionTests: XCTestCase {
    public func testEOS_GetVersion_Null() throws {
        TestGlobals.reset()
        __on_EOS_GetVersion = { 
            TestGlobals.sdkReceived.append("EOS_GetVersion")
            return nil }
        let result: String? = SwiftEOS_GetVersion()
        XCTAssertNil(result)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_GetVersion"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
