import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public final class SwiftEOS_P2P_QueryNATTypeTests: XCTestCase {
    public func testEOS_P2P_QueryNATType_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            let waitForCompletionDelegate = expectation(description: "waitForCompletionDelegate")
            
            // Given implementation for SDK function
            __on_EOS_P2P_QueryNATType = { Handle, Options, ClientData, CompletionDelegate in
                GTest.current.sdkReceived.append("EOS_P2P_QueryNATType")
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_P2P_QUERYNATTYPE_API_LATEST)
                XCTAssertNotNil(ClientData)
                CompletionDelegate?(GTest.current.pointer(object: _tagEOS_P2P_OnQueryNATTypeCompleteInfo(
                            ResultCode: .zero,
                            ClientData: ClientData,
                            NATType: .zero
                        )))
            }
            defer { __on_EOS_P2P_QueryNATType = nil }
            
            // Given Actor
            let object: SwiftEOS_P2P_Actor = SwiftEOS_P2P_Actor(Handle: nil)
            
            // When SDK function is called
            try object.QueryNATType(CompletionDelegate: { arg0 in
                    XCTAssertEqual(arg0.ResultCode, .zero)
                    XCTAssertEqual(arg0.NATType, .zero)
                    waitForCompletionDelegate.fulfill()
                })
            
            // Then
            wait(for: [waitForCompletionDelegate], timeout: 0.5)
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_P2P_QueryNATType"])
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_P2P_QueryNATType"])
    }
}
