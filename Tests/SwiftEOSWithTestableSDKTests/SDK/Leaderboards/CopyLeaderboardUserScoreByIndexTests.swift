import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Leaderboards_CopyLeaderboardUserScoreByIndexTests: XCTestCase {
    public func testEOS_Leaderboards_CopyLeaderboardUserScoreByIndex_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_Leaderboards_CopyLeaderboardUserScoreByIndex = { Handle, Options, OutLeaderboardUserScore in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
                XCTAssertEqual(Options!.pointee.LeaderboardUserScoreIndex, .zero)
                XCTAssertNil(Options!.pointee.StatName)
                XCTAssertNil(OutLeaderboardUserScore)
                TestGlobals.current.sdkReceived.append("EOS_Leaderboards_CopyLeaderboardUserScoreByIndex")
                return .zero
            }
            defer { __on_EOS_Leaderboards_CopyLeaderboardUserScoreByIndex = nil }
            
            // Given Actor
            let object: SwiftEOS_Leaderboards_Actor = SwiftEOS_Leaderboards_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            let result: SwiftEOS_Leaderboards_LeaderboardUserScore? = try object.CopyLeaderboardUserScoreByIndex(
                LeaderboardUserScoreIndex: .zero,
                StatName: nil
            )
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_Leaderboards_CopyLeaderboardUserScoreByIndex"])
            XCTAssertNil(result)
        }
    }
}
