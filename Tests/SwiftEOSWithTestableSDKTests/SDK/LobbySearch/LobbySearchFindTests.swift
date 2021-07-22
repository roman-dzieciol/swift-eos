import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public final class SwiftEOS_LobbySearch_FindTests: XCTestCase {
    public func testEOS_LobbySearch_Find_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK release function
            __on_EOS_LobbySearch_Release = { LobbySearchHandle in
                GTest.current.sdkReceived.append("EOS_LobbySearch_Release")
                XCTAssertNil(LobbySearchHandle)
            }
            let waitForCompletionDelegate = expectation(description: "waitForCompletionDelegate")
            
            // Given implementation for SDK function
            __on_EOS_LobbySearch_Find = { Handle, Options, ClientData, CompletionDelegate in
                GTest.current.sdkReceived.append("EOS_LobbySearch_Find")
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_LOBBYSEARCH_FIND_API_LATEST)
                XCTAssertNil(Options!.pointee.LocalUserId)
                XCTAssertNotNil(ClientData)
                CompletionDelegate?(GTest.current.pointer(object: _tagEOS_LobbySearch_FindCallbackInfo(
                            ResultCode: .zero,
                            ClientData: ClientData
                        )))
            }
            defer { __on_EOS_LobbySearch_Find = nil }
            
            // Given Actor
            let object: SwiftEOS_LobbySearch_Actor = SwiftEOS_LobbySearch_Actor(Handle: nil)
            
            // When SDK function is called
            try object.Find(
                LocalUserId: nil,
                CompletionDelegate: { arg0 in
                    XCTAssertEqual(arg0.ResultCode, .zero)
                    waitForCompletionDelegate.fulfill()
                }
            )
            
            // Then
            wait(for: [waitForCompletionDelegate], timeout: 0.5)
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_LobbySearch_Find"])
        }
        
        // Then
        __on_EOS_LobbySearch_Release = nil
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_LobbySearch_Find", "EOS_LobbySearch_Release"])
    }
}
