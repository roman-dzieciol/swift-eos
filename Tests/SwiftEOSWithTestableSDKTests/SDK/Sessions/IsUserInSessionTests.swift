import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Sessions_IsUserInSessionTests: XCTestCase {
    public func testEOS_Sessions_IsUserInSession_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_Sessions_IsUserInSession = { Handle, Options in
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_SESSIONS_ISUSERINSESSION_API_LATEST)
                XCTAssertNil(Options!.pointee.SessionName)
                XCTAssertNil(Options!.pointee.TargetUserId)
                GTest.current.sdkReceived.append("EOS_Sessions_IsUserInSession")
                return .zero
            }
            defer { __on_EOS_Sessions_IsUserInSession = nil }
            
            // Given Actor
            let object: SwiftEOS_Sessions_Actor = SwiftEOS_Sessions_Actor(Handle: nil)
            
            // When SDK function is called
            try object.IsUserInSession(
                SessionName: nil,
                TargetUserId: nil
            )
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Sessions_IsUserInSession"])
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Sessions_IsUserInSession"])
    }
}
