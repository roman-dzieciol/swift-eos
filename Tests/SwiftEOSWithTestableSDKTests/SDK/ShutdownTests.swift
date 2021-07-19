import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_ShutdownTests: XCTestCase {
    public func testEOS_Shutdown_Null() throws {
        TestGlobals.reset()
        __on_EOS_Shutdown = { 
            TestGlobals.sdkReceived.append("EOS_Shutdown")
            return .init(rawValue: .zero)! }
        try SwiftEOS_Shutdown()
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_Shutdown"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
