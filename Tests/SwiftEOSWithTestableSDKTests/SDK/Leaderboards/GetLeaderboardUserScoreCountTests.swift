import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Leaderboards_GetLeaderboardUserScoreCountTests: XCTestCase {
    public func testEOS_Leaderboards_GetLeaderboardUserScoreCount_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_Leaderboards_GetLeaderboardUserScoreCount = { Handle, Options in
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_LEADERBOARDS_GETLEADERBOARDUSERSCORECOUNT_API_LATEST)
                XCTAssertNil(Options!.pointee.StatName)
                TestGlobals.current.sdkReceived.append("EOS_Leaderboards_GetLeaderboardUserScoreCount")
                return .zero
            }
            defer { __on_EOS_Leaderboards_GetLeaderboardUserScoreCount = nil }
            
            // Given Actor
            let object: SwiftEOS_Leaderboards_Actor = SwiftEOS_Leaderboards_Actor(Handle: nil)
            
            // When SDK function is called
            let result: Int = try object.GetLeaderboardUserScoreCount(StatName: nil)
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_Leaderboards_GetLeaderboardUserScoreCount"])
            XCTAssertEqual(result, .zero)
        }
        
        // Then
        XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_Leaderboards_GetLeaderboardUserScoreCount"])
    }
}
