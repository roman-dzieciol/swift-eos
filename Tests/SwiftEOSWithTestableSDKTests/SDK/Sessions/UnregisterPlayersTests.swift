import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public final class SwiftEOS_Sessions_UnregisterPlayersTests: XCTestCase {
    public func testEOS_Sessions_UnregisterPlayers_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            let waitForCompletionDelegate = expectation(description: "waitForCompletionDelegate")
            
            // Given implementation for SDK function
            __on_EOS_Sessions_UnregisterPlayers = { Handle, Options, ClientData, CompletionDelegate in
                GTest.current.sdkReceived.append("EOS_Sessions_UnregisterPlayers")
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_SESSIONS_UNREGISTERPLAYERS_API_LATEST)
                XCTAssertNil(Options!.pointee.SessionName)
                XCTAssertNil(Options!.pointee.PlayersToUnregister)
                XCTAssertEqual(Options!.pointee.PlayersToUnregisterCount, .zero)
                XCTAssertNotNil(ClientData)
                CompletionDelegate?(GTest.current.pointer(object: _tagEOS_Sessions_UnregisterPlayersCallbackInfo(
                            ResultCode: .zero,
                            ClientData: ClientData
                        )))
            }
            defer { __on_EOS_Sessions_UnregisterPlayers = nil }
            
            // Given Actor
            let object: SwiftEOS_Sessions_Actor = SwiftEOS_Sessions_Actor(Handle: nil)
            
            // When SDK function is called
            try object.UnregisterPlayers(
                SessionName: nil,
                PlayersToUnregister: nil,
                CompletionDelegate: { arg0 in
                    XCTAssertEqual(arg0.ResultCode, .zero)
                    waitForCompletionDelegate.fulfill()
                }
            )
            
            // Then
            wait(for: [waitForCompletionDelegate], timeout: 0.5)
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Sessions_UnregisterPlayers"])
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Sessions_UnregisterPlayers"])
    }
}
