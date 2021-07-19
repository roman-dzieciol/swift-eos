import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Lobby_UpdateLobbyTests: XCTestCase {
    public func testEOS_Lobby_UpdateLobby_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            let waitForCompletionDelegate = expectation(description: "waitForCompletionDelegate")
            
            // Given implementation for SDK function
            __on_EOS_Lobby_UpdateLobby = { Handle, Options, ClientData, CompletionDelegate in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
                XCTAssertNil(Options!.pointee.LobbyModificationHandle)
                XCTAssertNotNil(ClientData)
                CompletionDelegate?(TestGlobals.current.pointer(object: _tagEOS_Lobby_UpdateLobbyCallbackInfo(
                            ResultCode: .zero,
                            ClientData: ClientData,
                            LobbyId: TestGlobals.current.pointer(string: .empty)
                        )))
                TestGlobals.current.sdkReceived.append("EOS_Lobby_UpdateLobby")
            }
            defer { __on_EOS_Lobby_UpdateLobby = nil }
            
            // Given Actor
            let object: SwiftEOS_Lobby_Actor = SwiftEOS_Lobby_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            try object.UpdateLobby(
                LobbyModificationHandle: nil,
                CompletionDelegate: { arg0 in
                    XCTAssertEqual(arg0.ResultCode, .zero)
                    XCTAssertNil(arg0.LobbyId)
                    waitForCompletionDelegate.fulfill()
                }
            )
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_Lobby_UpdateLobby"])
            wait(for: [waitForCompletionDelegate], timeout: 0.5)
        }
    }
}
