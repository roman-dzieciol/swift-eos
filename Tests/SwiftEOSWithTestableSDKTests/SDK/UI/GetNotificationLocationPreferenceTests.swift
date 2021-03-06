import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public final class SwiftEOS_UI_GetNotificationLocationPreferenceTests: XCTestCase {
    public func testEOS_UI_GetNotificationLocationPreference_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_UI_GetNotificationLocationPreference = { Handle in
                GTest.current.sdkReceived.append("EOS_UI_GetNotificationLocationPreference")
                XCTAssertNil(Handle)
                return .zero
            }
            defer { __on_EOS_UI_GetNotificationLocationPreference = nil }
            
            // Given Actor
            let object: SwiftEOS_UI_Actor = SwiftEOS_UI_Actor(Handle: nil)
            
            // When SDK function is called
            let result: EOS_UI_ENotificationLocation = object.GetNotificationLocationPreference()
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_UI_GetNotificationLocationPreference"])
            XCTAssertEqual(result, .zero)
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_UI_GetNotificationLocationPreference"])
    }
}
