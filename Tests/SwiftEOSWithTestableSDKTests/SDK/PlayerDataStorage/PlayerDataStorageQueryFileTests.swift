import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public final class SwiftEOS_PlayerDataStorage_QueryFileTests: XCTestCase {
    public func testEOS_PlayerDataStorage_QueryFile_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            let waitForCompletionCallback = expectation(description: "waitForCompletionCallback")
            
            // Given implementation for SDK function
            __on_EOS_PlayerDataStorage_QueryFile = { Handle, QueryFileOptions, ClientData, CompletionCallback in
                GTest.current.sdkReceived.append("EOS_PlayerDataStorage_QueryFile")
                XCTAssertNil(Handle)
                XCTAssertEqual(QueryFileOptions!.pointee.ApiVersion, EOS_PLAYERDATASTORAGE_QUERYFILEOPTIONS_API_LATEST)
                XCTAssertNil(QueryFileOptions!.pointee.LocalUserId)
                XCTAssertNil(QueryFileOptions!.pointee.Filename)
                XCTAssertNotNil(ClientData)
                CompletionCallback?(GTest.current.pointer(object: _tagEOS_PlayerDataStorage_QueryFileCallbackInfo(
                            ResultCode: .zero,
                            ClientData: ClientData,
                            LocalUserId: nil
                        )))
            }
            defer { __on_EOS_PlayerDataStorage_QueryFile = nil }
            
            // Given Actor
            let object: SwiftEOS_PlayerDataStorage_Actor = SwiftEOS_PlayerDataStorage_Actor(Handle: nil)
            
            // When SDK function is called
            try object.QueryFile(
                LocalUserId: nil,
                Filename: nil,
                CompletionCallback: { arg0 in
                    XCTAssertEqual(arg0.ResultCode, .zero)
                    XCTAssertNil(arg0.LocalUserId)
                    waitForCompletionCallback.fulfill()
                }
            )
            
            // Then
            wait(for: [waitForCompletionCallback], timeout: 0.5)
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_PlayerDataStorage_QueryFile"])
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_PlayerDataStorage_QueryFile"])
    }
}
