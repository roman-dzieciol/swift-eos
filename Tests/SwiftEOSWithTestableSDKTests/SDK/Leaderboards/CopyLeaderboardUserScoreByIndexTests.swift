import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public final class SwiftEOS_Leaderboards_CopyLeaderboardUserScoreByIndexTests: XCTestCase {
    public func testEOS_Leaderboards_CopyLeaderboardUserScoreByIndex_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_Leaderboards_CopyLeaderboardUserScoreByIndex = { Handle, Options, OutLeaderboardUserScore in
                GTest.current.sdkReceived.append("EOS_Leaderboards_CopyLeaderboardUserScoreByIndex")
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_LEADERBOARDS_COPYLEADERBOARDUSERSCOREBYINDEX_API_LATEST)
                XCTAssertEqual(Options!.pointee.LeaderboardUserScoreIndex, .zero)
                XCTAssertNil(Options!.pointee.StatName)
                XCTAssertNotNil(OutLeaderboardUserScore)
                return .zero
            }
            defer { __on_EOS_Leaderboards_CopyLeaderboardUserScoreByIndex = nil }
            
            // Given Actor
            let object: SwiftEOS_Leaderboards_Actor = SwiftEOS_Leaderboards_Actor(Handle: nil)
            
            // When SDK function is called
            try XCTAssertThrowsError(try object.CopyLeaderboardUserScoreByIndex(
                    LeaderboardUserScoreIndex: .zero,
                    StatName: nil
                )) { error in
                guard case SwiftEOSError.unexpectedNilResult = error else { return XCTFail("unexpected \(error)") }
            }
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Leaderboards_CopyLeaderboardUserScoreByIndex"])
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Leaderboards_CopyLeaderboardUserScoreByIndex"])
    }
}
