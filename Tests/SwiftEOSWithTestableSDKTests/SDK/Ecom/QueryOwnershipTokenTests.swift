import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public final class SwiftEOS_Ecom_QueryOwnershipTokenTests: XCTestCase {
    public func testEOS_Ecom_QueryOwnershipToken_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            let waitForCompletionDelegate = expectation(description: "waitForCompletionDelegate")
            
            // Given implementation for SDK function
            __on_EOS_Ecom_QueryOwnershipToken = { Handle, Options, ClientData, CompletionDelegate in
                GTest.current.sdkReceived.append("EOS_Ecom_QueryOwnershipToken")
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_ECOM_QUERYOWNERSHIPTOKEN_API_LATEST)
                XCTAssertNil(Options!.pointee.LocalUserId)
                XCTAssertNil(Options!.pointee.CatalogItemIds)
                XCTAssertEqual(Options!.pointee.CatalogItemIdCount, .zero)
                XCTAssertNil(Options!.pointee.CatalogNamespace)
                XCTAssertNotNil(ClientData)
                CompletionDelegate?(GTest.current.pointer(object: _tagEOS_Ecom_QueryOwnershipTokenCallbackInfo(
                            ResultCode: .zero,
                            ClientData: ClientData,
                            LocalUserId: nil,
                            OwnershipToken: nil
                        )))
            }
            defer { __on_EOS_Ecom_QueryOwnershipToken = nil }
            
            // Given Actor
            let object: SwiftEOS_Ecom_Actor = SwiftEOS_Ecom_Actor(Handle: nil)
            
            // When SDK function is called
            try object.QueryOwnershipToken(
                LocalUserId: nil,
                CatalogItemIds: nil,
                CatalogNamespace: nil,
                CompletionDelegate: { arg0 in
                    XCTAssertEqual(arg0.ResultCode, .zero)
                    XCTAssertNil(arg0.LocalUserId)
                    XCTAssertNil(arg0.OwnershipToken)
                    waitForCompletionDelegate.fulfill()
                }
            )
            
            // Then
            wait(for: [waitForCompletionDelegate], timeout: 0.5)
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Ecom_QueryOwnershipToken"])
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Ecom_QueryOwnershipToken"])
    }
}
