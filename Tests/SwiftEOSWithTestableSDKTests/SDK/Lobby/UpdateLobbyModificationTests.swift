import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Lobby_UpdateLobbyModificationTests: XCTestCase {
    public func testEOS_Lobby_UpdateLobbyModification_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_Lobby_UpdateLobbyModification = { Handle, Options, OutLobbyModificationHandle in
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_LOBBY_UPDATELOBBYMODIFICATION_API_LATEST)
                XCTAssertNil(Options!.pointee.LocalUserId)
                XCTAssertNil(Options!.pointee.LobbyId)
                XCTAssertNotNil(OutLobbyModificationHandle)
                GTest.current.sdkReceived.append("EOS_Lobby_UpdateLobbyModification")
                return .zero
            }
            defer { __on_EOS_Lobby_UpdateLobbyModification = nil }
            
            // Given Actor
            let object: SwiftEOS_Lobby_Actor = SwiftEOS_Lobby_Actor(Handle: nil)
            
            // When SDK function is called
            let result: EOS_HLobbyModification? = try object.UpdateLobbyModification(
                LocalUserId: nil,
                LobbyId: nil
            )
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Lobby_UpdateLobbyModification"])
            XCTAssertNil(result)
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Lobby_UpdateLobbyModification"])
    }
}
