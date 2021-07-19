import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Ecom_QueryEntitlementsTests: XCTestCase {
    public func testEOS_Ecom_QueryEntitlements_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            let waitForCompletionDelegate = expectation(description: "waitForCompletionDelegate")
            
            // Given implementation for SDK function
            __on_EOS_Ecom_QueryEntitlements = { Handle, Options, ClientData, CompletionDelegate in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
                XCTAssertNil(Options!.pointee.LocalUserId)
                XCTAssertNil(Options!.pointee.EntitlementNames)
                XCTAssertEqual(Options!.pointee.EntitlementNameCount, .zero)
                XCTAssertEqual(Options!.pointee.bIncludeRedeemed, .zero)
                XCTAssertNotNil(ClientData)
                CompletionDelegate?(TestGlobals.current.pointer(object: _tagEOS_Ecom_QueryEntitlementsCallbackInfo(
                            ResultCode: .zero,
                            ClientData: ClientData,
                            LocalUserId: .nonZeroPointer
                        )))
                TestGlobals.current.sdkReceived.append("EOS_Ecom_QueryEntitlements")
            }
            defer { __on_EOS_Ecom_QueryEntitlements = nil }
            
            // Given Actor
            let object: SwiftEOS_Ecom_Actor = SwiftEOS_Ecom_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            try object.QueryEntitlements(
                LocalUserId: nil,
                EntitlementNames: nil,
                bIncludeRedeemed: false,
                CompletionDelegate: { arg0 in
                    XCTAssertEqual(arg0.ResultCode, .zero)
                    XCTAssertNil(arg0.LocalUserId)
                    waitForCompletionDelegate.fulfill()
                }
            )
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_Ecom_QueryEntitlements"])
            wait(for: [waitForCompletionDelegate], timeout: 0.5)
        }
    }
}
