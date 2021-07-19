import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_SessionSearch_FindTests: XCTestCase {
    public func testEOS_SessionSearch_Find_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            
            // Given implementation for SDK release function
            __on_EOS_SessionSearch_Release = { SessionSearchHandle in
                XCTAssertNil(SessionSearchHandle)
                TestGlobals.current.sdkReceived.append("EOS_SessionSearch_Release")
            }
            let waitForCompletionDelegate = expectation(description: "waitForCompletionDelegate")
            
            // Given implementation for SDK function
            __on_EOS_SessionSearch_Find = { Handle, Options, ClientData, CompletionDelegate in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
                XCTAssertNil(Options!.pointee.LocalUserId)
                XCTAssertNotNil(ClientData)
                CompletionDelegate?(TestGlobals.current.pointer(object: _tagEOS_SessionSearch_FindCallbackInfo(
                            ResultCode: .zero,
                            ClientData: ClientData
                        )))
                TestGlobals.current.sdkReceived.append("EOS_SessionSearch_Find")
            }
            defer { __on_EOS_SessionSearch_Find = nil }
            
            // Given Actor
            let object: SwiftEOS_SessionSearch_Actor = SwiftEOS_SessionSearch_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            try object.Find(
                LocalUserId: nil,
                CompletionDelegate: { arg0 in
                    XCTAssertEqual(arg0.ResultCode, .zero)
                    waitForCompletionDelegate.fulfill()
                }
            )
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_SessionSearch_Find", "EOS_SessionSearch_Release"])
            wait(for: [waitForCompletionDelegate], timeout: 0.5)
        }
        
        // Then
        __on_EOS_SessionSearch_Release = nil
    }
}
