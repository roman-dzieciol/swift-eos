import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public final class SwiftEOS_PlayerDataStorage_DuplicateFileTests: XCTestCase {
    public func testEOS_PlayerDataStorage_DuplicateFile_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            let waitForCompletionCallback = expectation(description: "waitForCompletionCallback")
            
            // Given implementation for SDK function
            __on_EOS_PlayerDataStorage_DuplicateFile = { Handle, DuplicateOptions, ClientData, CompletionCallback in
                GTest.current.sdkReceived.append("EOS_PlayerDataStorage_DuplicateFile")
                XCTAssertNil(Handle)
                XCTAssertEqual(DuplicateOptions!.pointee.ApiVersion, EOS_PLAYERDATASTORAGE_DUPLICATEFILEOPTIONS_API_LATEST)
                XCTAssertNil(DuplicateOptions!.pointee.LocalUserId)
                XCTAssertNil(DuplicateOptions!.pointee.SourceFilename)
                XCTAssertNil(DuplicateOptions!.pointee.DestinationFilename)
                XCTAssertNotNil(ClientData)
                CompletionCallback?(GTest.current.pointer(object: _tagEOS_PlayerDataStorage_DuplicateFileCallbackInfo(
                            ResultCode: .zero,
                            ClientData: ClientData,
                            LocalUserId: nil
                        )))
            }
            defer { __on_EOS_PlayerDataStorage_DuplicateFile = nil }
            
            // Given Actor
            let object: SwiftEOS_PlayerDataStorage_Actor = SwiftEOS_PlayerDataStorage_Actor(Handle: nil)
            
            // When SDK function is called
            try object.DuplicateFile(
                LocalUserId: nil,
                SourceFilename: nil,
                DestinationFilename: nil,
                CompletionCallback: { arg0 in
                    XCTAssertEqual(arg0.ResultCode, .zero)
                    XCTAssertNil(arg0.LocalUserId)
                    waitForCompletionCallback.fulfill()
                }
            )
            
            // Then
            wait(for: [waitForCompletionCallback], timeout: 0.5)
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_PlayerDataStorage_DuplicateFile"])
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_PlayerDataStorage_DuplicateFile"])
    }
}
