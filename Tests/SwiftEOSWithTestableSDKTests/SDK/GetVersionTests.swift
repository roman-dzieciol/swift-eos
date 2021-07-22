import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public final class SwiftEOS_GetVersionTests: XCTestCase {
    public func testEOS_GetVersion_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_GetVersion = { 
                GTest.current.sdkReceived.append("EOS_GetVersion")
                return nil
            }
            defer { __on_EOS_GetVersion = nil }
            
            // When SDK function is called
            let result: String? = SwiftEOS_GetVersion()
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_GetVersion"])
            XCTAssertNil(result)
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_GetVersion"])
    }
}
