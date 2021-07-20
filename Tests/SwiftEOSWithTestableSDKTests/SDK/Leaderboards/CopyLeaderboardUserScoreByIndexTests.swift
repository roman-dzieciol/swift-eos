import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Leaderboards_CopyLeaderboardUserScoreByIndexTests: XCTestCase {
    public func testEOS_Leaderboards_CopyLeaderboardUserScoreByIndex_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_Leaderboards_CopyLeaderboardUserScoreByIndex = { Handle, Options, OutLeaderboardUserScore in
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_LEADERBOARDS_COPYLEADERBOARDUSERSCOREBYINDEX_API_LATEST)
                XCTAssertEqual(Options!.pointee.LeaderboardUserScoreIndex, .zero)
                XCTAssertNil(Options!.pointee.StatName)
                XCTAssertNotNil(OutLeaderboardUserScore)
                GTest.current.sdkReceived.append("EOS_Leaderboards_CopyLeaderboardUserScoreByIndex")
                return .zero
            }
            defer { __on_EOS_Leaderboards_CopyLeaderboardUserScoreByIndex = nil }
            
            // Given Actor
            let object: SwiftEOS_Leaderboards_Actor = SwiftEOS_Leaderboards_Actor(Handle: nil)
            
            // When SDK function is called
            let result: SwiftEOS_Leaderboards_LeaderboardUserScore? = try object.CopyLeaderboardUserScoreByIndex(
                LeaderboardUserScoreIndex: .zero,
                StatName: nil
            )
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Leaderboards_CopyLeaderboardUserScoreByIndex"])
            XCTAssertNil(result)
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Leaderboards_CopyLeaderboardUserScoreByIndex"])
    }
}
