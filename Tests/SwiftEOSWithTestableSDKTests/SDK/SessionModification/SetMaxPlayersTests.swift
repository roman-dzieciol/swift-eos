import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public final class SwiftEOS_SessionModification_SetMaxPlayersTests: XCTestCase {
    public func testEOS_SessionModification_SetMaxPlayers_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK release function
            __on_EOS_SessionModification_Release = { SessionModificationHandle in
                GTest.current.sdkReceived.append("EOS_SessionModification_Release")
                XCTAssertNil(SessionModificationHandle)
            }
            
            // Given implementation for SDK function
            __on_EOS_SessionModification_SetMaxPlayers = { Handle, Options in
                GTest.current.sdkReceived.append("EOS_SessionModification_SetMaxPlayers")
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_SESSIONMODIFICATION_SETMAXPLAYERS_API_LATEST)
                XCTAssertEqual(Options!.pointee.MaxPlayers, .zero)
                return .zero
            }
            defer { __on_EOS_SessionModification_SetMaxPlayers = nil }
            
            // Given Actor
            let object: SwiftEOS_SessionModification_Actor = SwiftEOS_SessionModification_Actor(Handle: nil)
            
            // When SDK function is called
            try object.SetMaxPlayers(MaxPlayers: .zero)
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_SessionModification_SetMaxPlayers"])
        }
        
        // Then
        __on_EOS_SessionModification_Release = nil
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_SessionModification_SetMaxPlayers", "EOS_SessionModification_Release"])
    }
}
