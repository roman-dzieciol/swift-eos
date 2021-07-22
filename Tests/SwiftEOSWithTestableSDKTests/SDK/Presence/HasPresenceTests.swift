import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public final class SwiftEOS_Presence_HasPresenceTests: XCTestCase {
    public func testEOS_Presence_HasPresence_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_Presence_HasPresence = { Handle, Options in
                GTest.current.sdkReceived.append("EOS_Presence_HasPresence")
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_PRESENCE_HASPRESENCE_API_LATEST)
                XCTAssertNil(Options!.pointee.LocalUserId)
                XCTAssertNil(Options!.pointee.TargetUserId)
                return .zero
            }
            defer { __on_EOS_Presence_HasPresence = nil }
            
            // Given Actor
            let object: SwiftEOS_Presence_Actor = SwiftEOS_Presence_Actor(Handle: nil)
            
            // When SDK function is called
            let result: Bool = try object.HasPresence(
                LocalUserId: nil,
                TargetUserId: nil
            )
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Presence_HasPresence"])
            XCTAssertEqual(result, false)
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Presence_HasPresence"])
    }
}
