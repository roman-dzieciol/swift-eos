import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_KWS_GetPermissionByKeyTests: XCTestCase {
    public func testEOS_KWS_GetPermissionByKey_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_KWS_GetPermissionByKey = { Handle, Options, OutPermission in
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_KWS_GETPERMISSIONBYKEY_API_LATEST)
                XCTAssertNil(Options!.pointee.LocalUserId)
                XCTAssertNil(Options!.pointee.Key)
                XCTAssertNotNil(OutPermission)
                GTest.current.sdkReceived.append("EOS_KWS_GetPermissionByKey")
                return .zero
            }
            defer { __on_EOS_KWS_GetPermissionByKey = nil }
            
            // Given Actor
            let object: SwiftEOS_KWS_Actor = SwiftEOS_KWS_Actor(Handle: nil)
            
            // When SDK function is called
            let result: EOS_EKWSPermissionStatus? = try object.GetPermissionByKey(
                LocalUserId: nil,
                Key: nil
            )
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_KWS_GetPermissionByKey"])
            XCTAssertNil(result)
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_KWS_GetPermissionByKey"])
    }
}
