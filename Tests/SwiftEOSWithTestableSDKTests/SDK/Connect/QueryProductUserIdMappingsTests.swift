import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Connect_QueryProductUserIdMappingsTests: XCTestCase {
    public func testEOS_Connect_QueryProductUserIdMappings_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            let waitForCompletionDelegate = expectation(description: "waitForCompletionDelegate")
            
            // Given implementation for SDK function
            __on_EOS_Connect_QueryProductUserIdMappings = { Handle, Options, ClientData, CompletionDelegate in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
                XCTAssertNil(Options!.pointee.LocalUserId)
                XCTAssertEqual(Options!.pointee.AccountIdType_DEPRECATED, .zero)
                XCTAssertNil(Options!.pointee.ProductUserIds)
                XCTAssertEqual(Options!.pointee.ProductUserIdCount, .zero)
                XCTAssertNotNil(ClientData)
                CompletionDelegate?(TestGlobals.current.pointer(object: _tagEOS_Connect_QueryProductUserIdMappingsCallbackInfo(
                            ResultCode: .zero,
                            ClientData: ClientData,
                            LocalUserId: .nonZeroPointer
                        )))
                TestGlobals.current.sdkReceived.append("EOS_Connect_QueryProductUserIdMappings")
            }
            defer { __on_EOS_Connect_QueryProductUserIdMappings = nil }
            
            // Given Actor
            let object: SwiftEOS_Connect_Actor = SwiftEOS_Connect_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            try object.QueryProductUserIdMappings(
                LocalUserId: nil,
                AccountIdType_DEPRECATED: .zero,
                ProductUserIds: nil,
                CompletionDelegate: { arg0 in
                    XCTAssertEqual(arg0.ResultCode, .zero)
                    XCTAssertNil(arg0.LocalUserId)
                    waitForCompletionDelegate.fulfill()
                }
            )
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_Connect_QueryProductUserIdMappings"])
            wait(for: [waitForCompletionDelegate], timeout: 0.5)
        }
    }
}
