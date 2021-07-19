import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Logging_SetCallbackTests: XCTestCase {
    public func testEOS_Logging_SetCallback_Null() throws {
        TestGlobals.reset()
        __on_EOS_Logging_SetCallback = { Callback in
            Callback?(nil)
            TestGlobals.sdkReceived.append("EOS_Logging_SetCallback")
            return .init(rawValue: .zero)! }
        try SwiftEOS_Logging_SetCallback(Callback: { arg0 in
                XCTAssertNil(arg0)
                TestGlobals.swiftReceived.append("Callback") })
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_Logging_SetCallback"])
        XCTAssertEqual(TestGlobals.swiftReceived, ["Callback"])
    }
}
