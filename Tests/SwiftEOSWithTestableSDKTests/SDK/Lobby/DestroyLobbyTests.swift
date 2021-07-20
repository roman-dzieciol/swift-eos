import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Lobby_DestroyLobbyTests: XCTestCase {
    public func testEOS_Lobby_DestroyLobby_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            let waitForCompletionDelegate = expectation(description: "waitForCompletionDelegate")
            
            // Given implementation for SDK function
            __on_EOS_Lobby_DestroyLobby = { Handle, Options, ClientData, CompletionDelegate in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_LOBBY_DESTROYLOBBY_API_LATEST)
                XCTAssertNil(Options!.pointee.LocalUserId)
                XCTAssertNil(Options!.pointee.LobbyId)
                XCTAssertNotNil(ClientData)
                CompletionDelegate?(TestGlobals.current.pointer(object: _tagEOS_Lobby_DestroyLobbyCallbackInfo(
                            ResultCode: .zero,
                            ClientData: ClientData,
                            LobbyId: nil
                        )))
                TestGlobals.current.sdkReceived.append("EOS_Lobby_DestroyLobby")
            }
            defer { __on_EOS_Lobby_DestroyLobby = nil }
            
            // Given Actor
            let object: SwiftEOS_Lobby_Actor = SwiftEOS_Lobby_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            try object.DestroyLobby(
                LocalUserId: nil,
                LobbyId: nil,
                CompletionDelegate: { arg0 in
                    XCTAssertEqual(arg0.ResultCode, .zero)
                    XCTAssertNil(arg0.LobbyId)
                    waitForCompletionDelegate.fulfill()
                }
            )
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_Lobby_DestroyLobby"])
            wait(for: [waitForCompletionDelegate], timeout: 0.5)
        }
    }
}
