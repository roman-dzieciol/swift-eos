import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_ShutdownTests: XCTestCase {
    public func testEOS_Shutdown_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_Shutdown = { 
                GTest.current.sdkReceived.append("EOS_Shutdown")
                return .zero
            }
            defer { __on_EOS_Shutdown = nil }
            
            // When SDK function is called
            try SwiftEOS_Shutdown()
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Shutdown"])
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Shutdown"])
    }
}
