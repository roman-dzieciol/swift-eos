import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_EResult_ToStringTests: XCTestCase {
    public func testEOS_EResult_ToString_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_EResult_ToString = { Result in
                XCTAssertEqual(Result, .zero)
                TestGlobals.current.sdkReceived.append("EOS_EResult_ToString")
                return nil
            }
            defer { __on_EOS_EResult_ToString = nil }
            
            // When SDK function is called
            let result: String? = SwiftEOS_EResult_ToString(Result: .zero)
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_EResult_ToString"])
            XCTAssertNil(result)
        }
    }
}
