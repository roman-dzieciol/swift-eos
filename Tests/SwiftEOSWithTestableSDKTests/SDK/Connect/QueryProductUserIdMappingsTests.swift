import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public final class SwiftEOS_Connect_QueryProductUserIdMappingsTests: XCTestCase {
    public func testEOS_Connect_QueryProductUserIdMappings_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            let waitForCompletionDelegate = expectation(description: "waitForCompletionDelegate")
            
            // Given implementation for SDK function
            __on_EOS_Connect_QueryProductUserIdMappings = { Handle, Options, ClientData, CompletionDelegate in
                GTest.current.sdkReceived.append("EOS_Connect_QueryProductUserIdMappings")
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_CONNECT_QUERYPRODUCTUSERIDMAPPINGS_API_LATEST)
                XCTAssertNil(Options!.pointee.LocalUserId)
                XCTAssertEqual(Options!.pointee.AccountIdType_DEPRECATED, .zero)
                XCTAssertNil(Options!.pointee.ProductUserIds)
                XCTAssertEqual(Options!.pointee.ProductUserIdCount, .zero)
                XCTAssertNotNil(ClientData)
                CompletionDelegate?(GTest.current.pointer(object: _tagEOS_Connect_QueryProductUserIdMappingsCallbackInfo(
                            ResultCode: .zero,
                            ClientData: ClientData,
                            LocalUserId: nil
                        )))
            }
            defer { __on_EOS_Connect_QueryProductUserIdMappings = nil }
            
            // Given Actor
            let object: SwiftEOS_Connect_Actor = SwiftEOS_Connect_Actor(Handle: nil)
            
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
            wait(for: [waitForCompletionDelegate], timeout: 0.5)
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Connect_QueryProductUserIdMappings"])
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Connect_QueryProductUserIdMappings"])
    }
}
