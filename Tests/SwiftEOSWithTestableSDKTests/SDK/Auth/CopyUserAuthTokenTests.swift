import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Auth_CopyUserAuthTokenTests: XCTestCase {
    public func testEOS_Auth_CopyUserAuthToken_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_Auth_CopyUserAuthToken = { Handle, Options, LocalUserId, OutUserAuthToken in
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_AUTH_COPYUSERAUTHTOKEN_API_LATEST)
                XCTAssertNil(LocalUserId)
                XCTAssertNotNil(OutUserAuthToken)
                GTest.current.sdkReceived.append("EOS_Auth_CopyUserAuthToken")
                return .zero
            }
            defer { __on_EOS_Auth_CopyUserAuthToken = nil }
            
            // Given Actor
            let object: SwiftEOS_Auth_Actor = SwiftEOS_Auth_Actor(Handle: nil)
            
            // When SDK function is called
            try XCTAssertThrowsError(try object.CopyUserAuthToken(LocalUserId: nil)) { error in
                guard case SwiftEOSError.unexpectedNilResult = error else { return XCTFail("unexpected \(error)") }
            }
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Auth_CopyUserAuthToken"])
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Auth_CopyUserAuthToken"])
    }
}
