import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public final class SwiftEOS_Platform_SetOverrideLocaleCodeTests: XCTestCase {
    public func testEOS_Platform_SetOverrideLocaleCode_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK release function
            __on_EOS_Platform_Release = { Handle in
                GTest.current.sdkReceived.append("EOS_Platform_Release")
                XCTAssertNil(Handle)
            }
            
            // Given implementation for SDK function
            __on_EOS_Platform_SetOverrideLocaleCode = { Handle, NewLocaleCode in
                GTest.current.sdkReceived.append("EOS_Platform_SetOverrideLocaleCode")
                XCTAssertNil(Handle)
                XCTAssertNil(NewLocaleCode)
                return .zero
            }
            defer { __on_EOS_Platform_SetOverrideLocaleCode = nil }
            
            // Given Actor
            let object: SwiftEOS_Platform_Actor = SwiftEOS_Platform_Actor(Handle: nil)
            
            // When SDK function is called
            try object.SetOverrideLocaleCode(NewLocaleCode: nil)
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Platform_SetOverrideLocaleCode"])
        }
        
        // Then
        __on_EOS_Platform_Release = nil
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Platform_SetOverrideLocaleCode", "EOS_Platform_Release"])
    }
}
