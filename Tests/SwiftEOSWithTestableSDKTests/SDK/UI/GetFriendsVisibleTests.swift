import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_UI_GetFriendsVisibleTests: XCTestCase {
    public func testEOS_UI_GetFriendsVisible_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_UI_GetFriendsVisible = { Handle, Options in
                GTest.current.sdkReceived.append("EOS_UI_GetFriendsVisible")
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_UI_GETFRIENDSVISIBLE_API_LATEST)
                XCTAssertNil(Options!.pointee.LocalUserId)
                return .zero
            }
            defer { __on_EOS_UI_GetFriendsVisible = nil }
            
            // Given Actor
            let object: SwiftEOS_UI_Actor = SwiftEOS_UI_Actor(Handle: nil)
            
            // When SDK function is called
            let result: Bool = try object.GetFriendsVisible(LocalUserId: nil)
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_UI_GetFriendsVisible"])
            XCTAssertEqual(result, false)
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_UI_GetFriendsVisible"])
    }
}
