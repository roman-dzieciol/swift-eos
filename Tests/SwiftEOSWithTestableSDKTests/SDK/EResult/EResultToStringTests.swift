import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_EResult_ToStringTests: XCTestCase {
    public func testEOS_EResult_ToString_Null() throws {
        TestGlobals.reset()
        __on_EOS_EResult_ToString = { Result in
            XCTAssertEqual(Result, .init(rawValue: .zero)!)
            TestGlobals.sdkReceived.append("EOS_EResult_ToString")
            return nil }
        let result: String? = SwiftEOS_EResult_ToString(Result: .init(rawValue: .zero)!)
        XCTAssertNil(result)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_EResult_ToString"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
