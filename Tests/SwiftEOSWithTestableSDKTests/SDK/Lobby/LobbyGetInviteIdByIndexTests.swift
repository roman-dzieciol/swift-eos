import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public final class SwiftEOS_Lobby_GetInviteIdByIndexTests: XCTestCase {
    public func testEOS_Lobby_GetInviteIdByIndex_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_Lobby_GetInviteIdByIndex = { Handle, Options, OutBuffer, InOutBufferLength in
                GTest.current.sdkReceived.append("EOS_Lobby_GetInviteIdByIndex")
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_LOBBY_GETINVITEIDBYINDEX_API_LATEST)
                XCTAssertNil(Options!.pointee.LocalUserId)
                XCTAssertEqual(Options!.pointee.Index, .zero)
                XCTAssertNil(OutBuffer)
                XCTAssertNotNil(InOutBufferLength)
                return .zero
            }
            defer { __on_EOS_Lobby_GetInviteIdByIndex = nil }
            
            // Given Actor
            let object: SwiftEOS_Lobby_Actor = SwiftEOS_Lobby_Actor(Handle: nil)
            
            // When SDK function is called
            let result: String = try object.GetInviteIdByIndex(
                LocalUserId: nil,
                Index: .zero
            )
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Lobby_GetInviteIdByIndex"])
            XCTAssertEqual(result, "")
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Lobby_GetInviteIdByIndex"])
    }
}
