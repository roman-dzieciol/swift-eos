import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public final class SwiftEOS_Leaderboards_GetLeaderboardDefinitionCountTests: XCTestCase {
    public func testEOS_Leaderboards_GetLeaderboardDefinitionCount_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_Leaderboards_GetLeaderboardDefinitionCount = { Handle, Options in
                GTest.current.sdkReceived.append("EOS_Leaderboards_GetLeaderboardDefinitionCount")
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_LEADERBOARDS_GETLEADERBOARDDEFINITIONCOUNT_API_LATEST)
                return .zero
            }
            defer { __on_EOS_Leaderboards_GetLeaderboardDefinitionCount = nil }
            
            // Given Actor
            let object: SwiftEOS_Leaderboards_Actor = SwiftEOS_Leaderboards_Actor(Handle: nil)
            
            // When SDK function is called
            let result: Int = try object.GetLeaderboardDefinitionCount()
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Leaderboards_GetLeaderboardDefinitionCount"])
            XCTAssertEqual(result, .zero)
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Leaderboards_GetLeaderboardDefinitionCount"])
    }
}
