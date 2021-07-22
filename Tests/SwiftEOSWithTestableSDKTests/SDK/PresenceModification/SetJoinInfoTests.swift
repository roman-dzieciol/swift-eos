import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public final class SwiftEOS_PresenceModification_SetJoinInfoTests: XCTestCase {
    public func testEOS_PresenceModification_SetJoinInfo_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK release function
            __on_EOS_PresenceModification_Release = { PresenceModificationHandle in
                GTest.current.sdkReceived.append("EOS_PresenceModification_Release")
                XCTAssertNil(PresenceModificationHandle)
            }
            
            // Given implementation for SDK function
            __on_EOS_PresenceModification_SetJoinInfo = { Handle, Options in
                GTest.current.sdkReceived.append("EOS_PresenceModification_SetJoinInfo")
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_PRESENCEMODIFICATION_SETJOININFO_API_LATEST)
                XCTAssertNil(Options!.pointee.JoinInfo)
                return .zero
            }
            defer { __on_EOS_PresenceModification_SetJoinInfo = nil }
            
            // Given Actor
            let object: SwiftEOS_PresenceModification_Actor = SwiftEOS_PresenceModification_Actor(Handle: nil)
            
            // When SDK function is called
            try object.SetJoinInfo(JoinInfo: nil)
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_PresenceModification_SetJoinInfo"])
        }
        
        // Then
        __on_EOS_PresenceModification_Release = nil
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_PresenceModification_SetJoinInfo", "EOS_PresenceModification_Release"])
    }
}
