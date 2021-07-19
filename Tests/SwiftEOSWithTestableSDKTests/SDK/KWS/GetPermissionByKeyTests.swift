import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_KWS_GetPermissionByKeyTests: XCTestCase {
    public func testEOS_KWS_GetPermissionByKey_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_KWS_GetPermissionByKey = { Handle, Options, OutPermission in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
                XCTAssertNil(Options!.pointee.LocalUserId)
                XCTAssertNil(Options!.pointee.Key)
                XCTAssertNil(OutPermission)
                TestGlobals.current.sdkReceived.append("EOS_KWS_GetPermissionByKey")
                return .zero
            }
            defer { __on_EOS_KWS_GetPermissionByKey = nil }
            
            // Given Actor
            let object: SwiftEOS_KWS_Actor = SwiftEOS_KWS_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            let result: EOS_EKWSPermissionStatus? = try object.GetPermissionByKey(
                LocalUserId: nil,
                Key: nil
            )
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_KWS_GetPermissionByKey"])
            XCTAssertNil(result)
        }
    }
}
