import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Auth_LinkAccountTests: XCTestCase {
    public func testEOS_Auth_LinkAccount_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            let waitForCompletionDelegate = expectation(description: "waitForCompletionDelegate")
            
            // Given implementation for SDK function
            __on_EOS_Auth_LinkAccount = { Handle, Options, ClientData, CompletionDelegate in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
                XCTAssertEqual(Options!.pointee.LinkAccountFlags, .zero)
                XCTAssertNil(Options!.pointee.ContinuanceToken)
                XCTAssertNil(Options!.pointee.LocalUserId)
                XCTAssertNotNil(ClientData)
                CompletionDelegate?(TestGlobals.current.pointer(object: _tagEOS_Auth_LinkAccountCallbackInfo(
                            ResultCode: .zero,
                            ClientData: ClientData,
                            LocalUserId: .nonZeroPointer,
                            PinGrantInfo: nil
                        )))
                TestGlobals.current.sdkReceived.append("EOS_Auth_LinkAccount")
            }
            defer { __on_EOS_Auth_LinkAccount = nil }
            
            // Given Actor
            let object: SwiftEOS_Auth_Actor = SwiftEOS_Auth_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            try object.LinkAccount(
                LinkAccountFlags: .zero,
                ContinuanceToken: nil,
                LocalUserId: nil,
                CompletionDelegate: { arg0 in
                    XCTAssertEqual(arg0.ResultCode, .zero)
                    XCTAssertNil(arg0.LocalUserId)
                    XCTAssertNil(arg0.PinGrantInfo)
                    waitForCompletionDelegate.fulfill()
                }
            )
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_Auth_LinkAccount"])
            wait(for: [waitForCompletionDelegate], timeout: 0.5)
        }
    }
}
