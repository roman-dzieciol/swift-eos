import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_SessionModification_SetPermissionLevelTests: XCTestCase {
    public func testEOS_SessionModification_SetPermissionLevel_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK release function
            __on_EOS_SessionModification_Release = { SessionModificationHandle in
                GTest.current.sdkReceived.append("EOS_SessionModification_Release")
                XCTAssertNil(SessionModificationHandle)
            }
            
            // Given implementation for SDK function
            __on_EOS_SessionModification_SetPermissionLevel = { Handle, Options in
                GTest.current.sdkReceived.append("EOS_SessionModification_SetPermissionLevel")
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_SESSIONMODIFICATION_SETPERMISSIONLEVEL_API_LATEST)
                XCTAssertEqual(Options!.pointee.PermissionLevel, .zero)
                return .zero
            }
            defer { __on_EOS_SessionModification_SetPermissionLevel = nil }
            
            // Given Actor
            let object: SwiftEOS_SessionModification_Actor = SwiftEOS_SessionModification_Actor(Handle: nil)
            
            // When SDK function is called
            try object.SetPermissionLevel(PermissionLevel: .zero)
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_SessionModification_SetPermissionLevel"])
        }
        
        // Then
        __on_EOS_SessionModification_Release = nil
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_SessionModification_SetPermissionLevel", "EOS_SessionModification_Release"])
    }
}
