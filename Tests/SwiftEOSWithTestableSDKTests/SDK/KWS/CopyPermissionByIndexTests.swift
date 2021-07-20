import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_KWS_CopyPermissionByIndexTests: XCTestCase {
    public func testEOS_KWS_CopyPermissionByIndex_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_KWS_CopyPermissionByIndex = { Handle, Options, OutPermission in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_KWS_COPYPERMISSIONBYINDEX_API_LATEST)
                XCTAssertNil(Options!.pointee.LocalUserId)
                XCTAssertEqual(Options!.pointee.Index, .zero)
                XCTAssertNotNil(OutPermission)
                TestGlobals.current.sdkReceived.append("EOS_KWS_CopyPermissionByIndex")
                return .zero
            }
            defer { __on_EOS_KWS_CopyPermissionByIndex = nil }
            
            // Given Actor
            let object: SwiftEOS_KWS_Actor = SwiftEOS_KWS_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            let result: SwiftEOS_KWS_PermissionStatus? = try object.CopyPermissionByIndex(
                LocalUserId: nil,
                Index: .zero
            )
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_KWS_CopyPermissionByIndex"])
            XCTAssertNil(result)
        }
    }
}
