import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_TitleStorage_QueryFileListTests: XCTestCase {
    public func testEOS_TitleStorage_QueryFileList_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            let waitForCompletionCallback = expectation(description: "waitForCompletionCallback")
            
            // Given implementation for SDK function
            __on_EOS_TitleStorage_QueryFileList = { Handle, Options, ClientData, CompletionCallback in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_TITLESTORAGE_QUERYFILELISTOPTIONS_API_LATEST)
                XCTAssertNil(Options!.pointee.LocalUserId)
                XCTAssertNil(Options!.pointee.ListOfTags)
                XCTAssertEqual(Options!.pointee.ListOfTagsCount, .zero)
                XCTAssertNotNil(ClientData)
                CompletionCallback?(TestGlobals.current.pointer(object: _tagEOS_TitleStorage_QueryFileListCallbackInfo(
                            ResultCode: .zero,
                            ClientData: ClientData,
                            LocalUserId: nil,
                            FileCount: .zero
                        )))
                TestGlobals.current.sdkReceived.append("EOS_TitleStorage_QueryFileList")
            }
            defer { __on_EOS_TitleStorage_QueryFileList = nil }
            
            // Given Actor
            let object: SwiftEOS_TitleStorage_Actor = SwiftEOS_TitleStorage_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            try object.QueryFileList(
                LocalUserId: nil,
                ListOfTags: nil,
                CompletionCallback: { arg0 in
                    XCTAssertEqual(arg0.ResultCode, .zero)
                    XCTAssertNil(arg0.LocalUserId)
                    XCTAssertEqual(arg0.FileCount, .zero)
                    waitForCompletionCallback.fulfill()
                }
            )
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_TitleStorage_QueryFileList"])
            wait(for: [waitForCompletionCallback], timeout: 0.5)
        }
    }
}
