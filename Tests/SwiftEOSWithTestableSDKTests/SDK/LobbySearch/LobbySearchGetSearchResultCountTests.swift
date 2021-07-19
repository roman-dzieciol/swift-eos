import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_LobbySearch_GetSearchResultCountTests: XCTestCase {
    public func testEOS_LobbySearch_GetSearchResultCount_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            
            // Given implementation for SDK release function
            __on_EOS_LobbySearch_Release = { LobbySearchHandle in
                XCTAssertNil(LobbySearchHandle)
                TestGlobals.current.sdkReceived.append("EOS_LobbySearch_Release")
            }
            
            // Given implementation for SDK function
            __on_EOS_LobbySearch_GetSearchResultCount = { Handle, Options in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
                TestGlobals.current.sdkReceived.append("EOS_LobbySearch_GetSearchResultCount")
                return .zero
            }
            defer { __on_EOS_LobbySearch_GetSearchResultCount = nil }
            
            // Given Actor
            let object: SwiftEOS_LobbySearch_Actor = SwiftEOS_LobbySearch_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            let result: Int = try object.GetSearchResultCount()
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_LobbySearch_GetSearchResultCount", "EOS_LobbySearch_Release"])
            XCTAssertEqual(result, .zero)
        }
        
        // Then
        __on_EOS_LobbySearch_Release = nil
    }
}
