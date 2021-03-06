import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public final class SwiftEOS_LobbySearch_SetMaxResultsTests: XCTestCase {
    public func testEOS_LobbySearch_SetMaxResults_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK release function
            __on_EOS_LobbySearch_Release = { LobbySearchHandle in
                GTest.current.sdkReceived.append("EOS_LobbySearch_Release")
                XCTAssertNil(LobbySearchHandle)
            }
            
            // Given implementation for SDK function
            __on_EOS_LobbySearch_SetMaxResults = { Handle, Options in
                GTest.current.sdkReceived.append("EOS_LobbySearch_SetMaxResults")
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_LOBBYSEARCH_SETMAXRESULTS_API_LATEST)
                XCTAssertEqual(Options!.pointee.MaxResults, .zero)
                return .zero
            }
            defer { __on_EOS_LobbySearch_SetMaxResults = nil }
            
            // Given Actor
            let object: SwiftEOS_LobbySearch_Actor = SwiftEOS_LobbySearch_Actor(Handle: nil)
            
            // When SDK function is called
            try object.SetMaxResults(MaxResults: .zero)
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_LobbySearch_SetMaxResults"])
        }
        
        // Then
        __on_EOS_LobbySearch_Release = nil
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_LobbySearch_SetMaxResults", "EOS_LobbySearch_Release"])
    }
}
