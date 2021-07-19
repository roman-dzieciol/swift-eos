import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_LobbySearch_FindTests: XCTestCase {
    public func testEOS_LobbySearch_Find_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            
            // Given implementation for SDK release function
            __on_EOS_LobbySearch_Release = { LobbySearchHandle in
                XCTAssertNil(LobbySearchHandle)
                TestGlobals.current.sdkReceived.append("EOS_LobbySearch_Release")
            }
            let waitForCompletionDelegate = expectation(description: "waitForCompletionDelegate")
            
            // Given implementation for SDK function
            __on_EOS_LobbySearch_Find = { Handle, Options, ClientData, CompletionDelegate in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
                XCTAssertNil(Options!.pointee.LocalUserId)
                XCTAssertNotNil(ClientData)
                CompletionDelegate?(TestGlobals.current.pointer(object: _tagEOS_LobbySearch_FindCallbackInfo(
                            ResultCode: .zero,
                            ClientData: ClientData
                        )))
                TestGlobals.current.sdkReceived.append("EOS_LobbySearch_Find")
            }
            defer { __on_EOS_LobbySearch_Find = nil }
            
            // Given Actor
            let object: SwiftEOS_LobbySearch_Actor = SwiftEOS_LobbySearch_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            try object.Find(
                LocalUserId: nil,
                CompletionDelegate: { arg0 in
                    XCTAssertEqual(arg0.ResultCode, .zero)
                    waitForCompletionDelegate.fulfill()
                }
            )
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_LobbySearch_Find", "EOS_LobbySearch_Release"])
            wait(for: [waitForCompletionDelegate], timeout: 0.5)
        }
        
        // Then
        __on_EOS_LobbySearch_Release = nil
    }
}
