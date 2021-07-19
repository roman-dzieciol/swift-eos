import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_EResult_IsOperationCompleteTests: XCTestCase {
    public func testEOS_EResult_IsOperationComplete_Null() throws {
        TestGlobals.reset()
        __on_EOS_EResult_IsOperationComplete = { Result in
            XCTAssertEqual(Result, .init(rawValue: .zero)!)
            TestGlobals.sdkReceived.append("EOS_EResult_IsOperationComplete")
            return .zero }
        let result: Bool = try SwiftEOS_EResult_IsOperationComplete(Result: .init(rawValue: .zero)!)
        XCTAssertEqual(result, false)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_EResult_IsOperationComplete"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
