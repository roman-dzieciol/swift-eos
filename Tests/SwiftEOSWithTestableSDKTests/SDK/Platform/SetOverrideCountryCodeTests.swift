import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public final class SwiftEOS_Platform_SetOverrideCountryCodeTests: XCTestCase {
    public func testEOS_Platform_SetOverrideCountryCode_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK release function
            __on_EOS_Platform_Release = { Handle in
                GTest.current.sdkReceived.append("EOS_Platform_Release")
                XCTAssertNil(Handle)
            }
            
            // Given implementation for SDK function
            __on_EOS_Platform_SetOverrideCountryCode = { Handle, NewCountryCode in
                GTest.current.sdkReceived.append("EOS_Platform_SetOverrideCountryCode")
                XCTAssertNil(Handle)
                XCTAssertNil(NewCountryCode)
                return .zero
            }
            defer { __on_EOS_Platform_SetOverrideCountryCode = nil }
            
            // Given Actor
            let object: SwiftEOS_Platform_Actor = SwiftEOS_Platform_Actor(Handle: nil)
            
            // When SDK function is called
            try object.SetOverrideCountryCode(NewCountryCode: nil)
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Platform_SetOverrideCountryCode"])
        }
        
        // Then
        __on_EOS_Platform_Release = nil
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Platform_SetOverrideCountryCode", "EOS_Platform_Release"])
    }
}
