import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_UI_SetDisplayPreferenceTests: XCTestCase {
    public func testEOS_UI_SetDisplayPreference_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_UI_SetDisplayPreference = { Handle, Options in
                GTest.current.sdkReceived.append("EOS_UI_SetDisplayPreference")
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_UI_SETDISPLAYPREFERENCE_API_LATEST)
                XCTAssertEqual(Options!.pointee.NotificationLocation, .zero)
                return .zero
            }
            defer { __on_EOS_UI_SetDisplayPreference = nil }
            
            // Given Actor
            let object: SwiftEOS_UI_Actor = SwiftEOS_UI_Actor(Handle: nil)
            
            // When SDK function is called
            try object.SetDisplayPreference(NotificationLocation: .zero)
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_UI_SetDisplayPreference"])
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_UI_SetDisplayPreference"])
    }
}
