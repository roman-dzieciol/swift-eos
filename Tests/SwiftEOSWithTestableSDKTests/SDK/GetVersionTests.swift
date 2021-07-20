import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_GetVersionTests: XCTestCase {
    public func testEOS_GetVersion_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_GetVersion = { 
                TestGlobals.current.sdkReceived.append("EOS_GetVersion")
                return nil
            }
            defer { __on_EOS_GetVersion = nil }
            
            // When SDK function is called
            let result: String? = SwiftEOS_GetVersion()
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_GetVersion"])
            XCTAssertNil(result)
        }
        
        // Then
        XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_GetVersion"])
    }
}
