import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public final class SwiftEOS_PlayerDataStorage_DeleteFileTests: XCTestCase {
    public func testEOS_PlayerDataStorage_DeleteFile_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            let waitForCompletionCallback = expectation(description: "waitForCompletionCallback")
            
            // Given implementation for SDK function
            __on_EOS_PlayerDataStorage_DeleteFile = { Handle, DeleteOptions, ClientData, CompletionCallback in
                GTest.current.sdkReceived.append("EOS_PlayerDataStorage_DeleteFile")
                XCTAssertNil(Handle)
                XCTAssertEqual(DeleteOptions!.pointee.ApiVersion, EOS_PLAYERDATASTORAGE_DELETEFILEOPTIONS_API_LATEST)
                XCTAssertNil(DeleteOptions!.pointee.LocalUserId)
                XCTAssertNil(DeleteOptions!.pointee.Filename)
                XCTAssertNotNil(ClientData)
                CompletionCallback?(GTest.current.pointer(object: _tagEOS_PlayerDataStorage_DeleteFileCallbackInfo(
                            ResultCode: .zero,
                            ClientData: ClientData,
                            LocalUserId: nil
                        )))
            }
            defer { __on_EOS_PlayerDataStorage_DeleteFile = nil }
            
            // Given Actor
            let object: SwiftEOS_PlayerDataStorage_Actor = SwiftEOS_PlayerDataStorage_Actor(Handle: nil)
            
            // When SDK function is called
            try object.DeleteFile(
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
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_PlayerDataStorage_DeleteFile"])
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_PlayerDataStorage_DeleteFile"])
    }
}
