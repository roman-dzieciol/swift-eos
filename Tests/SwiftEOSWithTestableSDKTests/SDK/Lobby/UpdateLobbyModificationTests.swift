import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public final class SwiftEOS_Lobby_UpdateLobbyModificationTests: XCTestCase {
    public func testEOS_Lobby_UpdateLobbyModification_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_Lobby_UpdateLobbyModification = { Handle, Options, OutLobbyModificationHandle in
                GTest.current.sdkReceived.append("EOS_Lobby_UpdateLobbyModification")
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_LOBBY_UPDATELOBBYMODIFICATION_API_LATEST)
                XCTAssertNil(Options!.pointee.LocalUserId)
                XCTAssertNil(Options!.pointee.LobbyId)
                XCTAssertNotNil(OutLobbyModificationHandle)
                return .zero
            }
            defer { __on_EOS_Lobby_UpdateLobbyModification = nil }
            
            // Given Actor
            let object: SwiftEOS_Lobby_Actor = SwiftEOS_Lobby_Actor(Handle: nil)
            
            // When SDK function is called
            try XCTAssertThrowsError(try object.UpdateLobbyModification(
                    LocalUserId: nil,
                    LobbyId: nil
                )) { error in
                guard case SwiftEOSError.unexpectedNilResult = error else { return XCTFail("unexpected \(error)") }
            }
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Lobby_UpdateLobbyModification"])
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Lobby_UpdateLobbyModification"])
    }
}
