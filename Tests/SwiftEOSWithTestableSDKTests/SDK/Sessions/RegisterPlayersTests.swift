import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Sessions_RegisterPlayersTests: XCTestCase {
    public func testEOS_Sessions_RegisterPlayers_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            let waitForCompletionDelegate = expectation(description: "waitForCompletionDelegate")
            
            // Given implementation for SDK function
            __on_EOS_Sessions_RegisterPlayers = { Handle, Options, ClientData, CompletionDelegate in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
                XCTAssertNil(Options!.pointee.SessionName)
                XCTAssertNil(Options!.pointee.PlayersToRegister)
                XCTAssertEqual(Options!.pointee.PlayersToRegisterCount, .zero)
                XCTAssertNotNil(ClientData)
                CompletionDelegate?(TestGlobals.current.pointer(object: _tagEOS_Sessions_RegisterPlayersCallbackInfo(
                            ResultCode: .zero,
                            ClientData: ClientData
                        )))
                TestGlobals.current.sdkReceived.append("EOS_Sessions_RegisterPlayers")
            }
            defer { __on_EOS_Sessions_RegisterPlayers = nil }
            
            // Given Actor
            let object: SwiftEOS_Sessions_Actor = SwiftEOS_Sessions_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            try object.RegisterPlayers(
                SessionName: nil,
                PlayersToRegister: nil,
                CompletionDelegate: { arg0 in
                    XCTAssertEqual(arg0.ResultCode, .zero)
                    waitForCompletionDelegate.fulfill()
                }
            )
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_Sessions_RegisterPlayers"])
            wait(for: [waitForCompletionDelegate], timeout: 0.5)
        }
    }
}
