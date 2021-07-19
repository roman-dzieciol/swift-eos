import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Auth_CopyUserAuthTokenTests: XCTestCase {
    public func testEOS_Auth_CopyUserAuthToken_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_Auth_CopyUserAuthToken = { Handle, Options, LocalUserId, OutUserAuthToken in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_AUTH_COPYUSERAUTHTOKEN_API_LATEST)
                XCTAssertNil(LocalUserId)
                XCTAssertNil(OutUserAuthToken)
                TestGlobals.current.sdkReceived.append("EOS_Auth_CopyUserAuthToken")
                return .zero
            }
            defer { __on_EOS_Auth_CopyUserAuthToken = nil }
            
            // Given Actor
            let object: SwiftEOS_Auth_Actor = SwiftEOS_Auth_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            let result: SwiftEOS_Auth_Token? = try object.CopyUserAuthToken(LocalUserId: .nonZeroPointer)
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_Auth_CopyUserAuthToken"])
            XCTAssertNil(result)
        }
    }
}
