import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Ecom_CheckoutTests: XCTestCase {
    public func testEOS_Ecom_Checkout_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            let waitForCompletionDelegate = expectation(description: "waitForCompletionDelegate")
            
            // Given implementation for SDK function
            __on_EOS_Ecom_Checkout = { Handle, Options, ClientData, CompletionDelegate in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_ECOM_CHECKOUT_API_LATEST)
                XCTAssertNil(Options!.pointee.LocalUserId)
                XCTAssertNil(Options!.pointee.OverrideCatalogNamespace)
                XCTAssertEqual(Options!.pointee.EntryCount, .zero)
                XCTAssertNil(Options!.pointee.Entries)
                XCTAssertNotNil(ClientData)
                CompletionDelegate?(TestGlobals.current.pointer(object: _tagEOS_Ecom_CheckoutCallbackInfo(
                            ResultCode: .zero,
                            ClientData: ClientData,
                            LocalUserId: nil,
                            TransactionId: nil
                        )))
                TestGlobals.current.sdkReceived.append("EOS_Ecom_Checkout")
            }
            defer { __on_EOS_Ecom_Checkout = nil }
            
            // Given Actor
            let object: SwiftEOS_Ecom_Actor = SwiftEOS_Ecom_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            try object.Checkout(
                LocalUserId: nil,
                OverrideCatalogNamespace: nil,
                EntryCount: .zero,
                Entries: nil,
                CompletionDelegate: { arg0 in
                    XCTAssertEqual(arg0.ResultCode, .zero)
                    XCTAssertNil(arg0.LocalUserId)
                    XCTAssertNil(arg0.TransactionId)
                    waitForCompletionDelegate.fulfill()
                }
            )
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_Ecom_Checkout"])
            wait(for: [waitForCompletionDelegate], timeout: 0.5)
        }
    }
}
