import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Connect_LinkAccountTests: XCTestCase {
    public func testEOS_Connect_LinkAccount_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            let waitForCompletionDelegate = expectation(description: "waitForCompletionDelegate")
            
            // Given implementation for SDK function
            __on_EOS_Connect_LinkAccount = { Handle, Options, ClientData, CompletionDelegate in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
                XCTAssertNil(Options!.pointee.LocalUserId)
                XCTAssertNil(Options!.pointee.ContinuanceToken)
                XCTAssertNotNil(ClientData)
                CompletionDelegate?(TestGlobals.current.pointer(object: _tagEOS_Connect_LinkAccountCallbackInfo(
                            ResultCode: .zero,
                            ClientData: ClientData,
                            LocalUserId: .nonZeroPointer
                        )))
                TestGlobals.current.sdkReceived.append("EOS_Connect_LinkAccount")
            }
            defer { __on_EOS_Connect_LinkAccount = nil }
            
            // Given Actor
            let object: SwiftEOS_Connect_Actor = SwiftEOS_Connect_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            try object.LinkAccount(
                LocalUserId: nil,
                ContinuanceToken: nil,
                CompletionDelegate: { arg0 in
                    XCTAssertEqual(arg0.ResultCode, .zero)
                    XCTAssertNil(arg0.LocalUserId)
                    waitForCompletionDelegate.fulfill()
                }
            )
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_Connect_LinkAccount"])
            wait(for: [waitForCompletionDelegate], timeout: 0.5)
        }
    }
}
