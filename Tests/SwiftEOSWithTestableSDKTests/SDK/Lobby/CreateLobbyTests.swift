import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Lobby_CreateLobbyTests: XCTestCase {
    public func testEOS_Lobby_CreateLobby_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            let waitForCompletionDelegate = expectation(description: "waitForCompletionDelegate")
            
            // Given implementation for SDK function
            __on_EOS_Lobby_CreateLobby = { Handle, Options, ClientData, CompletionDelegate in
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_LOBBY_CREATELOBBY_API_LATEST)
                XCTAssertNil(Options!.pointee.LocalUserId)
                XCTAssertEqual(Options!.pointee.MaxLobbyMembers, .zero)
                XCTAssertEqual(Options!.pointee.PermissionLevel, .zero)
                XCTAssertEqual(Options!.pointee.bPresenceEnabled, .zero)
                XCTAssertEqual(Options!.pointee.bAllowInvites, .zero)
                XCTAssertNil(Options!.pointee.BucketId)
                XCTAssertEqual(Options!.pointee.bDisableHostMigration, .zero)
                XCTAssertEqual(Options!.pointee.bEnableRTCRoom, .zero)
                XCTAssertNil(Options!.pointee.LocalRTCOptions)
                XCTAssertNil(Options!.pointee.LobbyId)
                XCTAssertNotNil(ClientData)
                CompletionDelegate?(GTest.current.pointer(object: _tagEOS_Lobby_CreateLobbyCallbackInfo(
                            ResultCode: .zero,
                            ClientData: ClientData,
                            LobbyId: nil
                        )))
                GTest.current.sdkReceived.append("EOS_Lobby_CreateLobby")
            }
            defer { __on_EOS_Lobby_CreateLobby = nil }
            
            // Given Actor
            let object: SwiftEOS_Lobby_Actor = SwiftEOS_Lobby_Actor(Handle: nil)
            
            // When SDK function is called
            try object.CreateLobby(
                LocalUserId: nil,
                MaxLobbyMembers: .zero,
                PermissionLevel: .zero,
                bPresenceEnabled: false,
                bAllowInvites: false,
                BucketId: nil,
                bDisableHostMigration: false,
                bEnableRTCRoom: false,
                LocalRTCOptions: nil,
                LobbyId: nil,
                CompletionDelegate: { arg0 in
                    XCTAssertEqual(arg0.ResultCode, .zero)
                    XCTAssertNil(arg0.LobbyId)
                    waitForCompletionDelegate.fulfill()
                }
            )
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Lobby_CreateLobby"])
            wait(for: [waitForCompletionDelegate], timeout: 0.5)
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Lobby_CreateLobby"])
    }
}
