import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Presence_SetPresenceTests: XCTestCase {
    public func testEOS_Presence_SetPresence_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            let waitForCompletionDelegate = expectation(description: "waitForCompletionDelegate")
            
            // Given implementation for SDK function
            __on_EOS_Presence_SetPresence = { Handle, Options, ClientData, CompletionDelegate in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
                XCTAssertNil(Options!.pointee.LocalUserId)
                XCTAssertNil(Options!.pointee.PresenceModificationHandle)
                XCTAssertNotNil(ClientData)
                CompletionDelegate?(TestGlobals.current.pointer(object: _tagEOS_Presence_SetPresenceCallbackInfo(
                            ResultCode: .zero,
                            ClientData: ClientData,
                            LocalUserId: .nonZeroPointer
                        )))
                TestGlobals.current.sdkReceived.append("EOS_Presence_SetPresence")
            }
            defer { __on_EOS_Presence_SetPresence = nil }
            
            // Given Actor
            let object: SwiftEOS_Presence_Actor = SwiftEOS_Presence_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            try object.SetPresence(
                LocalUserId: nil,
                PresenceModificationHandle: nil,
                CompletionDelegate: { arg0 in
                    XCTAssertEqual(arg0.ResultCode, .zero)
                    XCTAssertNil(arg0.LocalUserId)
                    waitForCompletionDelegate.fulfill()
                }
            )
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_Presence_SetPresence"])
            wait(for: [waitForCompletionDelegate], timeout: 0.5)
        }
    }
}
