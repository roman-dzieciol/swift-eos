import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Sessions_UpdateSessionTests: XCTestCase {
    public func testEOS_Sessions_UpdateSession_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            let waitForCompletionDelegate = expectation(description: "waitForCompletionDelegate")
            
            // Given implementation for SDK function
            __on_EOS_Sessions_UpdateSession = { Handle, Options, ClientData, CompletionDelegate in
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_SESSIONS_UPDATESESSION_API_LATEST)
                XCTAssertNil(Options!.pointee.SessionModificationHandle)
                XCTAssertNotNil(ClientData)
                CompletionDelegate?(TestGlobals.current.pointer(object: _tagEOS_Sessions_UpdateSessionCallbackInfo(
                            ResultCode: .zero,
                            ClientData: ClientData,
                            SessionName: nil,
                            SessionId: nil
                        )))
                TestGlobals.current.sdkReceived.append("EOS_Sessions_UpdateSession")
            }
            defer { __on_EOS_Sessions_UpdateSession = nil }
            
            // Given Actor
            let object: SwiftEOS_Sessions_Actor = SwiftEOS_Sessions_Actor(Handle: nil)
            
            // When SDK function is called
            try object.UpdateSession(
                SessionModificationHandle: nil,
                CompletionDelegate: { arg0 in
                    XCTAssertEqual(arg0.ResultCode, .zero)
                    XCTAssertNil(arg0.SessionName)
                    XCTAssertNil(arg0.SessionId)
                    waitForCompletionDelegate.fulfill()
                }
            )
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_Sessions_UpdateSession"])
            wait(for: [waitForCompletionDelegate], timeout: 0.5)
        }
        
        // Then
        XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_Sessions_UpdateSession"])
    }
}
