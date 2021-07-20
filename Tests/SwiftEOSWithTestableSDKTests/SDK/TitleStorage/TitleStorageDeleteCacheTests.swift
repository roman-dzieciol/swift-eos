import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_TitleStorage_DeleteCacheTests: XCTestCase {
    public func testEOS_TitleStorage_DeleteCache_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            let waitForCompletionCallback = expectation(description: "waitForCompletionCallback")
            
            // Given implementation for SDK function
            __on_EOS_TitleStorage_DeleteCache = { Handle, Options, ClientData, CompletionCallback in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_TITLESTORAGE_DELETECACHEOPTIONS_API_LATEST)
                XCTAssertNil(Options!.pointee.LocalUserId)
                XCTAssertNotNil(ClientData)
                CompletionCallback?(TestGlobals.current.pointer(object: _tagEOS_TitleStorage_DeleteCacheCallbackInfo(
                            ResultCode: .zero,
                            ClientData: ClientData,
                            LocalUserId: nil
                        )))
                TestGlobals.current.sdkReceived.append("EOS_TitleStorage_DeleteCache")
                return .zero
            }
            defer { __on_EOS_TitleStorage_DeleteCache = nil }
            
            // Given Actor
            let object: SwiftEOS_TitleStorage_Actor = SwiftEOS_TitleStorage_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            try object.DeleteCache(
                LocalUserId: nil,
                CompletionCallback: { arg0 in
                    XCTAssertEqual(arg0.ResultCode, .zero)
                    XCTAssertNil(arg0.LocalUserId)
                    waitForCompletionCallback.fulfill()
                }
            )
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_TitleStorage_DeleteCache"])
            wait(for: [waitForCompletionCallback], timeout: 0.5)
        }
    }
}
