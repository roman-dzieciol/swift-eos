import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Sessions_JoinSessionTests: XCTestCase {
    public func testEOS_Sessions_JoinSession_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            let waitForCompletionDelegate = expectation(description: "waitForCompletionDelegate")
            
            // Given implementation for SDK function
            __on_EOS_Sessions_JoinSession = { Handle, Options, ClientData, CompletionDelegate in
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_SESSIONS_JOINSESSION_API_LATEST)
                XCTAssertNil(Options!.pointee.SessionName)
                XCTAssertNil(Options!.pointee.SessionHandle)
                XCTAssertNil(Options!.pointee.LocalUserId)
                XCTAssertEqual(Options!.pointee.bPresenceEnabled, .zero)
                XCTAssertNotNil(ClientData)
                CompletionDelegate?(GTest.current.pointer(object: _tagEOS_Sessions_JoinSessionCallbackInfo(
                            ResultCode: .zero,
                            ClientData: ClientData
                        )))
                GTest.current.sdkReceived.append("EOS_Sessions_JoinSession")
            }
            defer { __on_EOS_Sessions_JoinSession = nil }
            
            // Given Actor
            let object: SwiftEOS_Sessions_Actor = SwiftEOS_Sessions_Actor(Handle: nil)
            
            // When SDK function is called
            try object.JoinSession(
                SessionName: nil,
                SessionHandle: nil,
                LocalUserId: nil,
                bPresenceEnabled: false,
                CompletionDelegate: { arg0 in
                    XCTAssertEqual(arg0.ResultCode, .zero)
                    waitForCompletionDelegate.fulfill()
                }
            )
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Sessions_JoinSession"])
            wait(for: [waitForCompletionDelegate], timeout: 0.5)
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Sessions_JoinSession"])
    }
}
