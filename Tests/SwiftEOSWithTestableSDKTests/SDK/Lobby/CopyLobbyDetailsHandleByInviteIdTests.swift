import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public final class SwiftEOS_Lobby_CopyLobbyDetailsHandleByInviteIdTests: XCTestCase {
    public func testEOS_Lobby_CopyLobbyDetailsHandleByInviteId_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_Lobby_CopyLobbyDetailsHandleByInviteId = { Handle, Options, OutLobbyDetailsHandle in
                GTest.current.sdkReceived.append("EOS_Lobby_CopyLobbyDetailsHandleByInviteId")
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_LOBBY_COPYLOBBYDETAILSHANDLEBYINVITEID_API_LATEST)
                XCTAssertNil(Options!.pointee.InviteId)
                XCTAssertNotNil(OutLobbyDetailsHandle)
                return .zero
            }
            defer { __on_EOS_Lobby_CopyLobbyDetailsHandleByInviteId = nil }
            
            // Given Actor
            let object: SwiftEOS_Lobby_Actor = SwiftEOS_Lobby_Actor(Handle: nil)
            
            // When SDK function is called
            try XCTAssertThrowsError(try object.CopyLobbyDetailsHandleByInviteId(InviteId: nil)) { error in
                guard case SwiftEOSError.unexpectedNilResult = error else { return XCTFail("unexpected \(error)") }
            }
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Lobby_CopyLobbyDetailsHandleByInviteId"])
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Lobby_CopyLobbyDetailsHandleByInviteId"])
    }
}
