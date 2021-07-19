import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_ActiveSession_GetRegisteredPlayerCountTests: XCTestCase {
    public func testEOS_ActiveSession_GetRegisteredPlayerCount_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            
            // Given implementation for SDK release function
            __on_EOS_ActiveSession_Release = { ActiveSessionHandle in
                XCTAssertNil(ActiveSessionHandle)
                TestGlobals.current.sdkReceived.append("EOS_ActiveSession_Release")
            }
            
            // Given implementation for SDK function
            __on_EOS_ActiveSession_GetRegisteredPlayerCount = { Handle, Options in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_ACTIVESESSION_GETREGISTEREDPLAYERCOUNT_API_LATEST)
                TestGlobals.current.sdkReceived.append("EOS_ActiveSession_GetRegisteredPlayerCount")
                return .zero
            }
            defer { __on_EOS_ActiveSession_GetRegisteredPlayerCount = nil }
            
            // Given Actor
            let object: SwiftEOS_ActiveSession_Actor = SwiftEOS_ActiveSession_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            let result: Int = try object.GetRegisteredPlayerCount()
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_ActiveSession_GetRegisteredPlayerCount", "EOS_ActiveSession_Release"])
            XCTAssertEqual(result, .zero)
        }
        
        // Then
        __on_EOS_ActiveSession_Release = nil
    }
}
