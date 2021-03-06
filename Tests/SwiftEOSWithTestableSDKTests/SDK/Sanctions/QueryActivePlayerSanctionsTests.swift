import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public final class SwiftEOS_Sanctions_QueryActivePlayerSanctionsTests: XCTestCase {
    public func testEOS_Sanctions_QueryActivePlayerSanctions_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            let waitForCompletionDelegate = expectation(description: "waitForCompletionDelegate")
            
            // Given implementation for SDK function
            __on_EOS_Sanctions_QueryActivePlayerSanctions = { Handle, Options, ClientData, CompletionDelegate in
                GTest.current.sdkReceived.append("EOS_Sanctions_QueryActivePlayerSanctions")
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_SANCTIONS_QUERYACTIVEPLAYERSANCTIONS_API_LATEST)
                XCTAssertNil(Options!.pointee.TargetUserId)
                XCTAssertNil(Options!.pointee.LocalUserId)
                XCTAssertNotNil(ClientData)
                CompletionDelegate?(GTest.current.pointer(object: _tagEOS_Sanctions_QueryActivePlayerSanctionsCallbackInfo(
                            ResultCode: .zero,
                            ClientData: ClientData,
                            TargetUserId: nil,
                            LocalUserId: nil
                        )))
            }
            defer { __on_EOS_Sanctions_QueryActivePlayerSanctions = nil }
            
            // Given Actor
            let object: SwiftEOS_Sanctions_Actor = SwiftEOS_Sanctions_Actor(Handle: nil)
            
            // When SDK function is called
            try object.QueryActivePlayerSanctions(
                TargetUserId: nil,
                LocalUserId: nil,
                CompletionDelegate: { arg0 in
                    XCTAssertEqual(arg0.ResultCode, .zero)
                    XCTAssertNil(arg0.TargetUserId)
                    XCTAssertNil(arg0.LocalUserId)
                    waitForCompletionDelegate.fulfill()
                }
            )
            
            // Then
            wait(for: [waitForCompletionDelegate], timeout: 0.5)
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Sanctions_QueryActivePlayerSanctions"])
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Sanctions_QueryActivePlayerSanctions"])
    }
}
