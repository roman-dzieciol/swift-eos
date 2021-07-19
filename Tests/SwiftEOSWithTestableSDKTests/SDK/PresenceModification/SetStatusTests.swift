import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_PresenceModification_SetStatusTests: XCTestCase {
    public func testEOS_PresenceModification_SetStatus_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            
            // Given implementation for SDK release function
            __on_EOS_PresenceModification_Release = { PresenceModificationHandle in
                XCTAssertNil(PresenceModificationHandle)
                TestGlobals.current.sdkReceived.append("EOS_PresenceModification_Release")
            }
            
            // Given implementation for SDK function
            __on_EOS_PresenceModification_SetStatus = { Handle, Options in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_PRESENCEMODIFICATION_SETSTATUS_API_LATEST)
                XCTAssertEqual(Options!.pointee.Status, .zero)
                TestGlobals.current.sdkReceived.append("EOS_PresenceModification_SetStatus")
                return .zero
            }
            defer { __on_EOS_PresenceModification_SetStatus = nil }
            
            // Given Actor
            let object: SwiftEOS_PresenceModification_Actor = SwiftEOS_PresenceModification_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            try object.SetStatus(Status: .zero)
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_PresenceModification_SetStatus", "EOS_PresenceModification_Release"])
        }
        
        // Then
        __on_EOS_PresenceModification_Release = nil
    }
}
