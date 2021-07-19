import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Friends_QueryFriendsTests: XCTestCase {
    public func testEOS_Friends_QueryFriends_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            let waitForCompletionDelegate = expectation(description: "waitForCompletionDelegate")
            
            // Given implementation for SDK function
            __on_EOS_Friends_QueryFriends = { Handle, Options, ClientData, CompletionDelegate in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
                XCTAssertNil(Options!.pointee.LocalUserId)
                XCTAssertNotNil(ClientData)
                CompletionDelegate?(TestGlobals.current.pointer(object: _tagEOS_Friends_QueryFriendsCallbackInfo(
                            ResultCode: .zero,
                            ClientData: ClientData,
                            LocalUserId: .nonZeroPointer
                        )))
                TestGlobals.current.sdkReceived.append("EOS_Friends_QueryFriends")
            }
            defer { __on_EOS_Friends_QueryFriends = nil }
            
            // Given Actor
            let object: SwiftEOS_Friends_Actor = SwiftEOS_Friends_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            try object.QueryFriends(
                LocalUserId: nil,
                CompletionDelegate: { arg0 in
                    XCTAssertEqual(arg0.ResultCode, .zero)
                    XCTAssertNil(arg0.LocalUserId)
                    waitForCompletionDelegate.fulfill()
                }
            )
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_Friends_QueryFriends"])
            wait(for: [waitForCompletionDelegate], timeout: 0.5)
        }
    }
}
