import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Lobby_JoinLobbyTests: XCTestCase {
    public func testEOS_Lobby_JoinLobby_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            let waitForCompletionDelegate = expectation(description: "waitForCompletionDelegate")
            
            // Given implementation for SDK function
            __on_EOS_Lobby_JoinLobby = { Handle, Options, ClientData, CompletionDelegate in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
                XCTAssertNil(Options!.pointee.LobbyDetailsHandle)
                XCTAssertNil(Options!.pointee.LocalUserId)
                XCTAssertEqual(Options!.pointee.bPresenceEnabled, .zero)
                XCTAssertNil(Options!.pointee.LocalRTCOptions)
                XCTAssertNotNil(ClientData)
                CompletionDelegate?(TestGlobals.current.pointer(object: _tagEOS_Lobby_JoinLobbyCallbackInfo(
                            ResultCode: .zero,
                            ClientData: ClientData,
                            LobbyId: TestGlobals.current.pointer(string: .empty)
                        )))
                TestGlobals.current.sdkReceived.append("EOS_Lobby_JoinLobby")
            }
            defer { __on_EOS_Lobby_JoinLobby = nil }
            
            // Given Actor
            let object: SwiftEOS_Lobby_Actor = SwiftEOS_Lobby_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            try object.JoinLobby(
                LobbyDetailsHandle: nil,
                LocalUserId: nil,
                bPresenceEnabled: false,
                LocalRTCOptions: nil,
                CompletionDelegate: { arg0 in
                    XCTAssertEqual(arg0.ResultCode, .zero)
                    XCTAssertNil(arg0.LobbyId)
                    waitForCompletionDelegate.fulfill()
                }
            )
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_Lobby_JoinLobby"])
            wait(for: [waitForCompletionDelegate], timeout: 0.5)
        }
    }
}
