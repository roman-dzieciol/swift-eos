import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Friends_AcceptInviteTests: XCTestCase {
    public func testEOS_Friends_AcceptInvite_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            let waitForCompletionDelegate = expectation(description: "waitForCompletionDelegate")
            
            // Given implementation for SDK function
            __on_EOS_Friends_AcceptInvite = { Handle, Options, ClientData, CompletionDelegate in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_FRIENDS_ACCEPTINVITE_API_LATEST)
                XCTAssertNil(Options!.pointee.LocalUserId)
                XCTAssertNil(Options!.pointee.TargetUserId)
                XCTAssertNotNil(ClientData)
                CompletionDelegate?(TestGlobals.current.pointer(object: _tagEOS_Friends_AcceptInviteCallbackInfo(
                            ResultCode: .zero,
                            ClientData: ClientData,
                            LocalUserId: nil,
                            TargetUserId: nil
                        )))
                TestGlobals.current.sdkReceived.append("EOS_Friends_AcceptInvite")
            }
            defer { __on_EOS_Friends_AcceptInvite = nil }
            
            // Given Actor
            let object: SwiftEOS_Friends_Actor = SwiftEOS_Friends_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            try object.AcceptInvite(
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
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_Friends_AcceptInvite"])
            wait(for: [waitForCompletionDelegate], timeout: 0.5)
        }
    }
}
