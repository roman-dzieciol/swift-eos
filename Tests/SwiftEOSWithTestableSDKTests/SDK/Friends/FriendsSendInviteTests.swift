import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Friends_SendInviteTests: XCTestCase {
    public func testEOS_Friends_SendInvite_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            let waitForCompletionDelegate = expectation(description: "waitForCompletionDelegate")
            
            // Given implementation for SDK function
            __on_EOS_Friends_SendInvite = { Handle, Options, ClientData, CompletionDelegate in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
                XCTAssertNil(Options!.pointee.LocalUserId)
                XCTAssertNil(Options!.pointee.TargetUserId)
                XCTAssertNotNil(ClientData)
                CompletionDelegate?(TestGlobals.current.pointer(object: _tagEOS_Friends_SendInviteCallbackInfo(
                            ResultCode: .zero,
                            ClientData: ClientData,
                            LocalUserId: .nonZeroPointer,
                            TargetUserId: .nonZeroPointer
                        )))
                TestGlobals.current.sdkReceived.append("EOS_Friends_SendInvite")
            }
            defer { __on_EOS_Friends_SendInvite = nil }
            
            // Given Actor
            let object: SwiftEOS_Friends_Actor = SwiftEOS_Friends_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            try object.SendInvite(
                LocalUserId: nil,
                TargetUserId: nil,
                CompletionDelegate: { arg0 in
                    XCTAssertEqual(arg0.ResultCode, .zero)
                    XCTAssertNil(arg0.LocalUserId)
                    XCTAssertNil(arg0.TargetUserId)
                    waitForCompletionDelegate.fulfill()
                }
            )
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_Friends_SendInvite"])
            wait(for: [waitForCompletionDelegate], timeout: 0.5)
        }
    }
}
