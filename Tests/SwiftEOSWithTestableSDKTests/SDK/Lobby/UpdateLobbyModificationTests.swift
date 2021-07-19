import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Lobby_UpdateLobbyModificationTests: XCTestCase {
    public func testEOS_Lobby_UpdateLobbyModification_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_Lobby_UpdateLobbyModification = { Handle, Options, OutLobbyModificationHandle in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
                XCTAssertNil(Options!.pointee.LocalUserId)
                XCTAssertNil(Options!.pointee.LobbyId)
                XCTAssertNil(OutLobbyModificationHandle)
                TestGlobals.current.sdkReceived.append("EOS_Lobby_UpdateLobbyModification")
                return .zero
            }
            defer { __on_EOS_Lobby_UpdateLobbyModification = nil }
            
            // Given Actor
            let object: SwiftEOS_Lobby_Actor = SwiftEOS_Lobby_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            let result: EOS_HLobbyModification? = try object.UpdateLobbyModification(
                LocalUserId: nil,
                LobbyId: nil
            )
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_Lobby_UpdateLobbyModification"])
            XCTAssertNil(result)
        }
    }
}
