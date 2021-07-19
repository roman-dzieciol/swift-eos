import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_PlayerDataStorage_QueryFileTests: XCTestCase {
    public func testEOS_PlayerDataStorage_QueryFile_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            let waitForCompletionCallback = expectation(description: "waitForCompletionCallback")
            
            // Given implementation for SDK function
            __on_EOS_PlayerDataStorage_QueryFile = { Handle, QueryFileOptions, ClientData, CompletionCallback in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(QueryFileOptions!.pointee.ApiVersion, .zero)
                XCTAssertNil(QueryFileOptions!.pointee.LocalUserId)
                XCTAssertNil(QueryFileOptions!.pointee.Filename)
                XCTAssertNotNil(ClientData)
                CompletionCallback?(TestGlobals.current.pointer(object: _tagEOS_PlayerDataStorage_QueryFileCallbackInfo(
                            ResultCode: .zero,
                            ClientData: ClientData,
                            LocalUserId: .nonZeroPointer
                        )))
                TestGlobals.current.sdkReceived.append("EOS_PlayerDataStorage_QueryFile")
            }
            defer { __on_EOS_PlayerDataStorage_QueryFile = nil }
            
            // Given Actor
            let object: SwiftEOS_PlayerDataStorage_Actor = SwiftEOS_PlayerDataStorage_Actor(Handle: .nonZeroPointer)
            
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
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_PlayerDataStorage_QueryFile"])
            wait(for: [waitForCompletionCallback], timeout: 0.5)
        }
    }
}
