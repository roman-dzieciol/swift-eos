import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_LobbySearch_GetSearchResultCountTests: XCTestCase {
    public func testEOS_LobbySearch_GetSearchResultCount_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK release function
            __on_EOS_LobbySearch_Release = { LobbySearchHandle in
                XCTAssertNil(LobbySearchHandle)
                GTest.current.sdkReceived.append("EOS_LobbySearch_Release")
            }
            
            // Given implementation for SDK function
            __on_EOS_LobbySearch_GetSearchResultCount = { Handle, Options in
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_LOBBYSEARCH_GETSEARCHRESULTCOUNT_API_LATEST)
                GTest.current.sdkReceived.append("EOS_LobbySearch_GetSearchResultCount")
                return .zero
            }
            defer { __on_EOS_LobbySearch_GetSearchResultCount = nil }
            
            // Given Actor
            let object: SwiftEOS_LobbySearch_Actor = SwiftEOS_LobbySearch_Actor(Handle: nil)
            
            // When SDK function is called
            let result: Int = try object.GetSearchResultCount()
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_LobbySearch_GetSearchResultCount"])
            XCTAssertEqual(result, .zero)
        }
        
        // Then
        __on_EOS_LobbySearch_Release = nil
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_LobbySearch_GetSearchResultCount", "EOS_LobbySearch_Release"])
    }
}
