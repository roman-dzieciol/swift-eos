import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_KWS_QueryAgeGateTests: XCTestCase {
    public func testEOS_KWS_QueryAgeGate_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            let waitForCompletionDelegate = expectation(description: "waitForCompletionDelegate")
            
            // Given implementation for SDK function
            __on_EOS_KWS_QueryAgeGate = { Handle, Options, ClientData, CompletionDelegate in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_KWS_QUERYAGEGATE_API_LATEST)
                XCTAssertNotNil(ClientData)
                CompletionDelegate?(TestGlobals.current.pointer(object: _tagEOS_KWS_QueryAgeGateCallbackInfo(
                            ResultCode: .zero,
                            ClientData: ClientData,
                            CountryCode: nil,
                            AgeOfConsent: .zero
                        )))
                TestGlobals.current.sdkReceived.append("EOS_KWS_QueryAgeGate")
            }
            defer { __on_EOS_KWS_QueryAgeGate = nil }
            
            // Given Actor
            let object: SwiftEOS_KWS_Actor = SwiftEOS_KWS_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            try object.QueryAgeGate(CompletionDelegate: { arg0 in
                    XCTAssertEqual(arg0.ResultCode, .zero)
                    XCTAssertNil(arg0.CountryCode)
                    XCTAssertEqual(arg0.AgeOfConsent, .zero)
                    waitForCompletionDelegate.fulfill()
                })
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_KWS_QueryAgeGate"])
            wait(for: [waitForCompletionDelegate], timeout: 0.5)
        }
    }
}
