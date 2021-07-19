import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Lobby_CopyLobbyDetailsHandleByInviteIdTests: XCTestCase {
    public func testEOS_Lobby_CopyLobbyDetailsHandleByInviteId_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_Lobby_CopyLobbyDetailsHandleByInviteId = { Handle, Options, OutLobbyDetailsHandle in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
                XCTAssertNil(Options!.pointee.InviteId)
                XCTAssertNil(OutLobbyDetailsHandle)
                TestGlobals.current.sdkReceived.append("EOS_Lobby_CopyLobbyDetailsHandleByInviteId")
                return .zero
            }
            defer { __on_EOS_Lobby_CopyLobbyDetailsHandleByInviteId = nil }
            
            // Given Actor
            let object: SwiftEOS_Lobby_Actor = SwiftEOS_Lobby_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            let result: EOS_HLobbyDetails? = try object.CopyLobbyDetailsHandleByInviteId(InviteId: nil)
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_Lobby_CopyLobbyDetailsHandleByInviteId"])
            XCTAssertNil(result)
        }
    }
}
