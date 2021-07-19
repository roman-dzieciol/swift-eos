import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_SessionModification_SetMaxPlayersTests: XCTestCase {
    public func testEOS_SessionModification_SetMaxPlayers_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            
            // Given implementation for SDK release function
            __on_EOS_SessionModification_Release = { SessionModificationHandle in
                XCTAssertNil(SessionModificationHandle)
                TestGlobals.current.sdkReceived.append("EOS_SessionModification_Release")
            }
            
            // Given implementation for SDK function
            __on_EOS_SessionModification_SetMaxPlayers = { Handle, Options in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_SESSIONMODIFICATION_SETMAXPLAYERS_API_LATEST)
                XCTAssertEqual(Options!.pointee.MaxPlayers, .zero)
                TestGlobals.current.sdkReceived.append("EOS_SessionModification_SetMaxPlayers")
                return .zero
            }
            defer { __on_EOS_SessionModification_SetMaxPlayers = nil }
            
            // Given Actor
            let object: SwiftEOS_SessionModification_Actor = SwiftEOS_SessionModification_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            try object.SetMaxPlayers(MaxPlayers: .zero)
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_SessionModification_SetMaxPlayers", "EOS_SessionModification_Release"])
        }
        
        // Then
        __on_EOS_SessionModification_Release = nil
    }
}
