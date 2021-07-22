import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public final class SwiftEOS_Presence_CreatePresenceModificationTests: XCTestCase {
    public func testEOS_Presence_CreatePresenceModification_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_Presence_CreatePresenceModification = { Handle, Options, OutPresenceModificationHandle in
                GTest.current.sdkReceived.append("EOS_Presence_CreatePresenceModification")
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_PRESENCE_CREATEPRESENCEMODIFICATION_API_LATEST)
                XCTAssertNil(Options!.pointee.LocalUserId)
                XCTAssertNotNil(OutPresenceModificationHandle)
                return .zero
            }
            defer { __on_EOS_Presence_CreatePresenceModification = nil }
            
            // Given Actor
            let object: SwiftEOS_Presence_Actor = SwiftEOS_Presence_Actor(Handle: nil)
            
            // When SDK function is called
            try XCTAssertThrowsError(try object.CreatePresenceModification(LocalUserId: nil)) { error in
                guard case SwiftEOSError.unexpectedNilResult = error else { return XCTFail("unexpected \(error)") }
            }
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Presence_CreatePresenceModification"])
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Presence_CreatePresenceModification"])
    }
}
