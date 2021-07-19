import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_PlayerDataStorage_DuplicateFileTests: XCTestCase {
    public func testEOS_PlayerDataStorage_DuplicateFile_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            let waitForCompletionCallback = expectation(description: "waitForCompletionCallback")
            
            // Given implementation for SDK function
            __on_EOS_PlayerDataStorage_DuplicateFile = { Handle, DuplicateOptions, ClientData, CompletionCallback in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(DuplicateOptions!.pointee.ApiVersion, .zero)
                XCTAssertNil(DuplicateOptions!.pointee.LocalUserId)
                XCTAssertNil(DuplicateOptions!.pointee.SourceFilename)
                XCTAssertNil(DuplicateOptions!.pointee.DestinationFilename)
                XCTAssertNotNil(ClientData)
                CompletionCallback?(TestGlobals.current.pointer(object: _tagEOS_PlayerDataStorage_DuplicateFileCallbackInfo(
                            ResultCode: .zero,
                            ClientData: ClientData,
                            LocalUserId: .nonZeroPointer
                        )))
                TestGlobals.current.sdkReceived.append("EOS_PlayerDataStorage_DuplicateFile")
            }
            defer { __on_EOS_PlayerDataStorage_DuplicateFile = nil }
            
            // Given Actor
            let object: SwiftEOS_PlayerDataStorage_Actor = SwiftEOS_PlayerDataStorage_Actor(Handle: .nonZeroPointer)
            
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
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_PlayerDataStorage_DuplicateFile"])
            wait(for: [waitForCompletionCallback], timeout: 0.5)
        }
    }
}
