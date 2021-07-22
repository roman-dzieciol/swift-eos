import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public final class SwiftEOS_Lobby_GetInviteCountTests: XCTestCase {
    public func testEOS_Lobby_GetInviteCount_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_Lobby_GetInviteCount = { Handle, Options in
                GTest.current.sdkReceived.append("EOS_Lobby_GetInviteCount")
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_LOBBY_GETINVITECOUNT_API_LATEST)
                XCTAssertNil(Options!.pointee.LocalUserId)
                return .zero
            }
            defer { __on_EOS_Lobby_GetInviteCount = nil }
            
            // Given Actor
            let object: SwiftEOS_Lobby_Actor = SwiftEOS_Lobby_Actor(Handle: nil)
            
            // When SDK function is called
            let result: Int = try object.GetInviteCount(LocalUserId: nil)
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Lobby_GetInviteCount"])
            XCTAssertEqual(result, .zero)
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Lobby_GetInviteCount"])
    }
}
