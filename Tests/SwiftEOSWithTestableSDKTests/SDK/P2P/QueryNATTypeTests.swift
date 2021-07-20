import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_P2P_QueryNATTypeTests: XCTestCase {
    public func testEOS_P2P_QueryNATType_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            let waitForCompletionDelegate = expectation(description: "waitForCompletionDelegate")
            
            // Given implementation for SDK function
            __on_EOS_P2P_QueryNATType = { Handle, Options, ClientData, CompletionDelegate in
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_P2P_QUERYNATTYPE_API_LATEST)
                XCTAssertNotNil(ClientData)
                CompletionDelegate?(TestGlobals.current.pointer(object: _tagEOS_P2P_OnQueryNATTypeCompleteInfo(
                            ResultCode: .zero,
                            ClientData: ClientData,
                            NATType: .zero
                        )))
                TestGlobals.current.sdkReceived.append("EOS_P2P_QueryNATType")
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
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_P2P_QueryNATType"])
            wait(for: [waitForCompletionDelegate], timeout: 0.5)
        }
        
        // Then
        XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_P2P_QueryNATType"])
    }
}
