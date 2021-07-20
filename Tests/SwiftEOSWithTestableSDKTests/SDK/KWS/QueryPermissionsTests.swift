import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_KWS_QueryPermissionsTests: XCTestCase {
    public func testEOS_KWS_QueryPermissions_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            let waitForCompletionDelegate = expectation(description: "waitForCompletionDelegate")
            
            // Given implementation for SDK function
            __on_EOS_KWS_QueryPermissions = { Handle, Options, ClientData, CompletionDelegate in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_KWS_QUERYPERMISSIONS_API_LATEST)
                XCTAssertNil(Options!.pointee.LocalUserId)
                XCTAssertNotNil(ClientData)
                CompletionDelegate?(TestGlobals.current.pointer(object: _tagEOS_KWS_QueryPermissionsCallbackInfo(
                            ResultCode: .zero,
                            ClientData: ClientData,
                            LocalUserId: nil,
                            KWSUserId: nil,
                            DateOfBirth: nil,
                            bIsMinor: .zero
                        )))
                TestGlobals.current.sdkReceived.append("EOS_KWS_QueryPermissions")
            }
            defer { __on_EOS_KWS_QueryPermissions = nil }
            
            // Given Actor
            let object: SwiftEOS_KWS_Actor = SwiftEOS_KWS_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            try object.QueryPermissions(
                LocalUserId: nil,
                CompletionDelegate: { arg0 in
                    XCTAssertEqual(arg0.ResultCode, .zero)
                    XCTAssertNil(arg0.LocalUserId)
                    XCTAssertNil(arg0.KWSUserId)
                    XCTAssertNil(arg0.DateOfBirth)
                    XCTAssertEqual(arg0.bIsMinor, false)
                    waitForCompletionDelegate.fulfill()
                }
            )
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_KWS_QueryPermissions"])
            wait(for: [waitForCompletionDelegate], timeout: 0.5)
        }
    }
}
