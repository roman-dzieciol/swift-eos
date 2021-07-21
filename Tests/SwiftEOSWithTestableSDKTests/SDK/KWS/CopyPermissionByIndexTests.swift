import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_KWS_CopyPermissionByIndexTests: XCTestCase {
    public func testEOS_KWS_CopyPermissionByIndex_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_KWS_CopyPermissionByIndex = { Handle, Options, OutPermission in
                GTest.current.sdkReceived.append("EOS_KWS_CopyPermissionByIndex")
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_KWS_COPYPERMISSIONBYINDEX_API_LATEST)
                XCTAssertNil(Options!.pointee.LocalUserId)
                XCTAssertEqual(Options!.pointee.Index, .zero)
                XCTAssertNotNil(OutPermission)
                return .zero
            }
            defer { __on_EOS_KWS_CopyPermissionByIndex = nil }
            
            // Given Actor
            let object: SwiftEOS_KWS_Actor = SwiftEOS_KWS_Actor(Handle: nil)
            
            // When SDK function is called
            try XCTAssertThrowsError(try object.CopyPermissionByIndex(
                    LocalUserId: nil,
                    Index: .zero
                )) { error in
                guard case SwiftEOSError.unexpectedNilResult = error else { return XCTFail("unexpected \(error)") }
            }
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_KWS_CopyPermissionByIndex"])
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_KWS_CopyPermissionByIndex"])
    }
}
