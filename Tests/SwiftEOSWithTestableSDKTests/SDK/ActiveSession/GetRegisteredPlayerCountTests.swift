import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_ActiveSession_GetRegisteredPlayerCountTests: XCTestCase {
    public func testEOS_ActiveSession_GetRegisteredPlayerCount_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK release function
            __on_EOS_ActiveSession_Release = { ActiveSessionHandle in
                GTest.current.sdkReceived.append("EOS_ActiveSession_Release")
                XCTAssertNil(ActiveSessionHandle)
            }
            
            // Given implementation for SDK function
            __on_EOS_ActiveSession_GetRegisteredPlayerCount = { Handle, Options in
                GTest.current.sdkReceived.append("EOS_ActiveSession_GetRegisteredPlayerCount")
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_ACTIVESESSION_GETREGISTEREDPLAYERCOUNT_API_LATEST)
                return .zero
            }
            defer { __on_EOS_ActiveSession_GetRegisteredPlayerCount = nil }
            
            // Given Actor
            let object: SwiftEOS_ActiveSession_Actor = SwiftEOS_ActiveSession_Actor(Handle: nil)
            
            // When SDK function is called
            let result: Int = try object.GetRegisteredPlayerCount()
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_ActiveSession_GetRegisteredPlayerCount"])
            XCTAssertEqual(result, .zero)
        }
        
        // Then
        __on_EOS_ActiveSession_Release = nil
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_ActiveSession_GetRegisteredPlayerCount", "EOS_ActiveSession_Release"])
    }
}
