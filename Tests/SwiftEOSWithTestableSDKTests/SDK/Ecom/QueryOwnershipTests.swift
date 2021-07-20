import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Ecom_QueryOwnershipTests: XCTestCase {
    public func testEOS_Ecom_QueryOwnership_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            let waitForCompletionDelegate = expectation(description: "waitForCompletionDelegate")
            
            // Given implementation for SDK function
            __on_EOS_Ecom_QueryOwnership = { Handle, Options, ClientData, CompletionDelegate in
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_ECOM_QUERYOWNERSHIP_API_LATEST)
                XCTAssertNil(Options!.pointee.LocalUserId)
                XCTAssertNil(Options!.pointee.CatalogItemIds)
                XCTAssertEqual(Options!.pointee.CatalogItemIdCount, .zero)
                XCTAssertNil(Options!.pointee.CatalogNamespace)
                XCTAssertNotNil(ClientData)
                CompletionDelegate?(TestGlobals.current.pointer(object: _tagEOS_Ecom_QueryOwnershipCallbackInfo(
                            ResultCode: .zero,
                            ClientData: ClientData,
                            LocalUserId: nil,
                            ItemOwnership: nil,
                            ItemOwnershipCount: .zero
                        )))
                TestGlobals.current.sdkReceived.append("EOS_Ecom_QueryOwnership")
            }
            defer { __on_EOS_Ecom_QueryOwnership = nil }
            
            // Given Actor
            let object: SwiftEOS_Ecom_Actor = SwiftEOS_Ecom_Actor(Handle: nil)
            
            // When SDK function is called
            try object.QueryOwnership(
                LocalUserId: nil,
                CatalogItemIds: nil,
                CatalogNamespace: nil,
                CompletionDelegate: { arg0 in
                    XCTAssertEqual(arg0.ResultCode, .zero)
                    XCTAssertNil(arg0.LocalUserId)
                    XCTAssertNil(arg0.ItemOwnership)
                    waitForCompletionDelegate.fulfill()
                }
            )
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_Ecom_QueryOwnership"])
            wait(for: [waitForCompletionDelegate], timeout: 0.5)
        }
        
        // Then
        XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_Ecom_QueryOwnership"])
    }
}
