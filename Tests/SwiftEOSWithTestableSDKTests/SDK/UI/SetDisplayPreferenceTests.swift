import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_UI_SetDisplayPreferenceTests: XCTestCase {
    public func testEOS_UI_SetDisplayPreference_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_UI_SetDisplayPreference = { Handle, Options in
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_UI_SETDISPLAYPREFERENCE_API_LATEST)
                XCTAssertEqual(Options!.pointee.NotificationLocation, .zero)
                TestGlobals.current.sdkReceived.append("EOS_UI_SetDisplayPreference")
                return .zero
            }
            defer { __on_EOS_UI_SetDisplayPreference = nil }
            
            // Given Actor
            let object: SwiftEOS_UI_Actor = SwiftEOS_UI_Actor(Handle: nil)
            
            // When SDK function is called
            try object.SetDisplayPreference(NotificationLocation: .zero)
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_UI_SetDisplayPreference"])
        }
        
        // Then
        XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_UI_SetDisplayPreference"])
    }
}
