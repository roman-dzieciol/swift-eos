import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public final class SwiftEOS_SessionModification_SetJoinInProgressAllowedTests: XCTestCase {
    public func testEOS_SessionModification_SetJoinInProgressAllowed_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK release function
            __on_EOS_SessionModification_Release = { SessionModificationHandle in
                GTest.current.sdkReceived.append("EOS_SessionModification_Release")
                XCTAssertNil(SessionModificationHandle)
            }
            
            // Given implementation for SDK function
            __on_EOS_SessionModification_SetJoinInProgressAllowed = { Handle, Options in
                GTest.current.sdkReceived.append("EOS_SessionModification_SetJoinInProgressAllowed")
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_SESSIONMODIFICATION_SETJOININPROGRESSALLOWED_API_LATEST)
                XCTAssertEqual(Options!.pointee.bAllowJoinInProgress, .zero)
                return .zero
            }
            defer { __on_EOS_SessionModification_SetJoinInProgressAllowed = nil }
            
            // Given Actor
            let object: SwiftEOS_SessionModification_Actor = SwiftEOS_SessionModification_Actor(Handle: nil)
            
            // When SDK function is called
            try object.SetJoinInProgressAllowed(bAllowJoinInProgress: false)
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_SessionModification_SetJoinInProgressAllowed"])
        }
        
        // Then
        __on_EOS_SessionModification_Release = nil
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_SessionModification_SetJoinInProgressAllowed", "EOS_SessionModification_Release"])
    }
}
