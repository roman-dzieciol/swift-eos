import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_LobbyDetails_GetAttributeCountTests: XCTestCase {
    public func testEOS_LobbyDetails_GetAttributeCount_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            
            // Given implementation for SDK release function
            __on_EOS_LobbyDetails_Release = { LobbyHandle in
                XCTAssertNil(LobbyHandle)
                TestGlobals.current.sdkReceived.append("EOS_LobbyDetails_Release")
            }
            
            // Given implementation for SDK function
            __on_EOS_LobbyDetails_GetAttributeCount = { Handle, Options in
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_LOBBYDETAILS_GETATTRIBUTECOUNT_API_LATEST)
                TestGlobals.current.sdkReceived.append("EOS_LobbyDetails_GetAttributeCount")
                return .zero
            }
            defer { __on_EOS_LobbyDetails_GetAttributeCount = nil }
            
            // Given Actor
            let object: SwiftEOS_LobbyDetails_Actor = SwiftEOS_LobbyDetails_Actor(Handle: nil)
            
            // When SDK function is called
            let result: Int = try object.GetAttributeCount()
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_LobbyDetails_GetAttributeCount"])
            XCTAssertEqual(result, .zero)
        }
        
        // Then
        __on_EOS_LobbyDetails_Release = nil
        XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_LobbyDetails_GetAttributeCount", "EOS_LobbyDetails_Release"])
    }
}
