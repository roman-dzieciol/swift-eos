import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public final class SwiftEOS_PlayerDataStorage_QueryFileListTests: XCTestCase {
    public func testEOS_PlayerDataStorage_QueryFileList_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            let waitForCompletionCallback = expectation(description: "waitForCompletionCallback")
            
            // Given implementation for SDK function
            __on_EOS_PlayerDataStorage_QueryFileList = { Handle, QueryFileListOptions, ClientData, CompletionCallback in
                GTest.current.sdkReceived.append("EOS_PlayerDataStorage_QueryFileList")
                XCTAssertNil(Handle)
                XCTAssertEqual(QueryFileListOptions!.pointee.ApiVersion, EOS_PLAYERDATASTORAGE_QUERYFILELISTOPTIONS_API_LATEST)
                XCTAssertNil(QueryFileListOptions!.pointee.LocalUserId)
                XCTAssertNotNil(ClientData)
                CompletionCallback?(GTest.current.pointer(object: _tagEOS_PlayerDataStorage_QueryFileListCallbackInfo(
                            ResultCode: .zero,
                            ClientData: ClientData,
                            LocalUserId: nil,
                            FileCount: .zero
                        )))
            }
            defer { __on_EOS_PlayerDataStorage_QueryFileList = nil }
            
            // Given Actor
            let object: SwiftEOS_PlayerDataStorage_Actor = SwiftEOS_PlayerDataStorage_Actor(Handle: nil)
            
            // When SDK function is called
            try object.QueryFileList(
                LocalUserId: nil,
                CompletionCallback: { arg0 in
                    XCTAssertEqual(arg0.ResultCode, .zero)
                    XCTAssertNil(arg0.LocalUserId)
                    XCTAssertEqual(arg0.FileCount, .zero)
                    waitForCompletionCallback.fulfill()
                }
            )
            
            // Then
            wait(for: [waitForCompletionCallback], timeout: 0.5)
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_PlayerDataStorage_QueryFileList"])
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_PlayerDataStorage_QueryFileList"])
    }
}
