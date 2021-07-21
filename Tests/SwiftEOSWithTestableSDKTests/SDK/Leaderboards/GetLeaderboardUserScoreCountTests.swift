import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Leaderboards_GetLeaderboardUserScoreCountTests: XCTestCase {
    public func testEOS_Leaderboards_GetLeaderboardUserScoreCount_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_Leaderboards_GetLeaderboardUserScoreCount = { Handle, Options in
                GTest.current.sdkReceived.append("EOS_Leaderboards_GetLeaderboardUserScoreCount")
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_LEADERBOARDS_GETLEADERBOARDUSERSCORECOUNT_API_LATEST)
                XCTAssertNil(Options!.pointee.StatName)
                return .zero
            }
            defer { __on_EOS_Leaderboards_GetLeaderboardUserScoreCount = nil }
            
            // Given Actor
            let object: SwiftEOS_Leaderboards_Actor = SwiftEOS_Leaderboards_Actor(Handle: nil)
            
            // When SDK function is called
            let result: Int = try object.GetLeaderboardUserScoreCount(StatName: nil)
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Leaderboards_GetLeaderboardUserScoreCount"])
            XCTAssertEqual(result, .zero)
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Leaderboards_GetLeaderboardUserScoreCount"])
    }
}
