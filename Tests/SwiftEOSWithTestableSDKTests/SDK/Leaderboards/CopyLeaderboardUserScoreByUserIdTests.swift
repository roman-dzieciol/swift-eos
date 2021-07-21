import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Leaderboards_CopyLeaderboardUserScoreByUserIdTests: XCTestCase {
    public func testEOS_Leaderboards_CopyLeaderboardUserScoreByUserId_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_Leaderboards_CopyLeaderboardUserScoreByUserId = { Handle, Options, OutLeaderboardUserScore in
                GTest.current.sdkReceived.append("EOS_Leaderboards_CopyLeaderboardUserScoreByUserId")
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_LEADERBOARDS_COPYLEADERBOARDUSERSCOREBYUSERID_API_LATEST)
                XCTAssertNil(Options!.pointee.UserId)
                XCTAssertNil(Options!.pointee.StatName)
                XCTAssertNotNil(OutLeaderboardUserScore)
                return .zero
            }
            defer { __on_EOS_Leaderboards_CopyLeaderboardUserScoreByUserId = nil }
            
            // Given Actor
            let object: SwiftEOS_Leaderboards_Actor = SwiftEOS_Leaderboards_Actor(Handle: nil)
            
            // When SDK function is called
            try XCTAssertThrowsError(try object.CopyLeaderboardUserScoreByUserId(
                    UserId: nil,
                    StatName: nil
                )) { error in
                guard case SwiftEOSError.unexpectedNilResult = error else { return XCTFail("unexpected \(error)") }
            }
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Leaderboards_CopyLeaderboardUserScoreByUserId"])
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Leaderboards_CopyLeaderboardUserScoreByUserId"])
    }
}
