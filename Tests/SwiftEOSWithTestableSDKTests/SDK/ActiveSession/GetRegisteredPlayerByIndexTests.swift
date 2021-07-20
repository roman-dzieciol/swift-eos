import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_ActiveSession_GetRegisteredPlayerByIndexTests: XCTestCase {
    public func testEOS_ActiveSession_GetRegisteredPlayerByIndex_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            
            // Given implementation for SDK release function
            __on_EOS_ActiveSession_Release = { ActiveSessionHandle in
                XCTAssertNil(ActiveSessionHandle)
                TestGlobals.current.sdkReceived.append("EOS_ActiveSession_Release")
            }
            
            // Given implementation for SDK function
            __on_EOS_ActiveSession_GetRegisteredPlayerByIndex = { Handle, Options in
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_ACTIVESESSION_GETREGISTEREDPLAYERBYINDEX_API_LATEST)
                XCTAssertEqual(Options!.pointee.PlayerIndex, .zero)
                TestGlobals.current.sdkReceived.append("EOS_ActiveSession_GetRegisteredPlayerByIndex")
                return nil
            }
            defer { __on_EOS_ActiveSession_GetRegisteredPlayerByIndex = nil }
            
            // Given Actor
            let object: SwiftEOS_ActiveSession_Actor = SwiftEOS_ActiveSession_Actor(Handle: nil)
            
            // When SDK function is called
            let result: EOS_ProductUserId? = try object.GetRegisteredPlayerByIndex(PlayerIndex: .zero)
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_ActiveSession_GetRegisteredPlayerByIndex"])
            XCTAssertNil(result)
        }
        
        // Then
        __on_EOS_ActiveSession_Release = nil
        XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_ActiveSession_GetRegisteredPlayerByIndex", "EOS_ActiveSession_Release"])
    }
}
