import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public final class SwiftEOS_KWS_GetPermissionsCountTests: XCTestCase {
    public func testEOS_KWS_GetPermissionsCount_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_KWS_GetPermissionsCount = { Handle, Options in
                GTest.current.sdkReceived.append("EOS_KWS_GetPermissionsCount")
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_KWS_GETPERMISSIONSCOUNT_API_LATEST)
                XCTAssertNil(Options!.pointee.LocalUserId)
                return .zero
            }
            defer { __on_EOS_KWS_GetPermissionsCount = nil }
            
            // Given Actor
            let object: SwiftEOS_KWS_Actor = SwiftEOS_KWS_Actor(Handle: nil)
            
            // When SDK function is called
            let result: Int = try object.GetPermissionsCount(LocalUserId: nil)
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_KWS_GetPermissionsCount"])
            XCTAssertEqual(result, .zero)
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_KWS_GetPermissionsCount"])
    }
}
