import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_TitleStorage_QueryFileTests: XCTestCase {
    public func testEOS_TitleStorage_QueryFile_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            let waitForCompletionCallback = expectation(description: "waitForCompletionCallback")
            
            // Given implementation for SDK function
            __on_EOS_TitleStorage_QueryFile = { Handle, Options, ClientData, CompletionCallback in
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_TITLESTORAGE_QUERYFILEOPTIONS_API_LATEST)
                XCTAssertNil(Options!.pointee.LocalUserId)
                XCTAssertNil(Options!.pointee.Filename)
                XCTAssertNotNil(ClientData)
                CompletionCallback?(GTest.current.pointer(object: _tagEOS_TitleStorage_QueryFileCallbackInfo(
                            ResultCode: .zero,
                            ClientData: ClientData,
                            LocalUserId: nil
                        )))
                GTest.current.sdkReceived.append("EOS_TitleStorage_QueryFile")
            }
            defer { __on_EOS_TitleStorage_QueryFile = nil }
            
            // Given Actor
            let object: SwiftEOS_TitleStorage_Actor = SwiftEOS_TitleStorage_Actor(Handle: nil)
            
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
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_TitleStorage_QueryFile"])
            wait(for: [waitForCompletionCallback], timeout: 0.5)
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_TitleStorage_QueryFile"])
    }
}
