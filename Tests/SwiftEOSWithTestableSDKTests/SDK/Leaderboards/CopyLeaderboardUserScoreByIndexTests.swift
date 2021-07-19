import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Leaderboards_CopyLeaderboardUserScoreByIndexTests: XCTestCase {
    public func testEOS_Leaderboards_CopyLeaderboardUserScoreByIndex_Null() throws {
        TestGlobals.reset()
        __on_EOS_Leaderboards_CopyLeaderboardUserScoreByIndex = { Handle, Options, OutLeaderboardUserScore in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertEqual(Options!.pointee.LeaderboardUserScoreIndex, .zero)
            XCTAssertNil(Options!.pointee.StatName)
            XCTAssertNil(OutLeaderboardUserScore)
            TestGlobals.sdkReceived.append("EOS_Leaderboards_CopyLeaderboardUserScoreByIndex")
            return .init(rawValue: .zero)! }
        let object: SwiftEOS_Leaderboards_Actor = SwiftEOS_Leaderboards_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: SwiftEOS_Leaderboards_LeaderboardUserScore? = try object.CopyLeaderboardUserScoreByIndex(
            LeaderboardUserScoreIndex: .zero,
            StatName: nil
        )
        XCTAssertNil(result)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_Leaderboards_CopyLeaderboardUserScoreByIndex"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
