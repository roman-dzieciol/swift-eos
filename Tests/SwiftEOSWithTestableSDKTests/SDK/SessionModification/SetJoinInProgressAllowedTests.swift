import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_SessionModification_SetJoinInProgressAllowedTests: XCTestCase {
    public func testEOS_SessionModification_SetJoinInProgressAllowed_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            
            // Given implementation for SDK release function
            __on_EOS_SessionModification_Release = { SessionModificationHandle in
                XCTAssertNil(SessionModificationHandle)
                TestGlobals.current.sdkReceived.append("EOS_SessionModification_Release")
            }
            
            // Given implementation for SDK function
            __on_EOS_SessionModification_SetJoinInProgressAllowed = { Handle, Options in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_SESSIONMODIFICATION_SETJOININPROGRESSALLOWED_API_LATEST)
                XCTAssertEqual(Options!.pointee.bAllowJoinInProgress, .zero)
                TestGlobals.current.sdkReceived.append("EOS_SessionModification_SetJoinInProgressAllowed")
                return .zero
            }
            defer { __on_EOS_SessionModification_SetJoinInProgressAllowed = nil }
            
            // Given Actor
            let object: SwiftEOS_SessionModification_Actor = SwiftEOS_SessionModification_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            try object.SetJoinInProgressAllowed(bAllowJoinInProgress: false)
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_SessionModification_SetJoinInProgressAllowed", "EOS_SessionModification_Release"])
        }
        
        // Then
        __on_EOS_SessionModification_Release = nil
    }
}
