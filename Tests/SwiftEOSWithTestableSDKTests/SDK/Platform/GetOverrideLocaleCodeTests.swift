import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Platform_GetOverrideLocaleCodeTests: XCTestCase {
    public func testEOS_Platform_GetOverrideLocaleCode_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK release function
            __on_EOS_Platform_Release = { Handle in
                GTest.current.sdkReceived.append("EOS_Platform_Release")
                XCTAssertNil(Handle)
            }
            
            // Given implementation for SDK function
            __on_EOS_Platform_GetOverrideLocaleCode = { Handle, OutBuffer, InOutBufferLength in
                GTest.current.sdkReceived.append("EOS_Platform_GetOverrideLocaleCode")
                XCTAssertNil(Handle)
                XCTAssertNil(OutBuffer)
                XCTAssertNotNil(InOutBufferLength)
                return .zero
            }
            defer { __on_EOS_Platform_GetOverrideLocaleCode = nil }
            
            // Given Actor
            let object: SwiftEOS_Platform_Actor = SwiftEOS_Platform_Actor(Handle: nil)
            
            // When SDK function is called
            let result: String = try object.GetOverrideLocaleCode()
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Platform_GetOverrideLocaleCode"])
            XCTAssertEqual(result, "")
        }
        
        // Then
        __on_EOS_Platform_Release = nil
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Platform_GetOverrideLocaleCode", "EOS_Platform_Release"])
    }
}
