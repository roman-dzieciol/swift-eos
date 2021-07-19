import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Leaderboards_CopyLeaderboardUserScoreByUserIdTests: XCTestCase {
    public func testEOS_Leaderboards_CopyLeaderboardUserScoreByUserId_Null() throws {
        TestGlobals.reset()
        __on_EOS_Leaderboards_CopyLeaderboardUserScoreByUserId = { Handle, Options, OutLeaderboardUserScore in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(Options!.pointee.UserId)
            XCTAssertNil(Options!.pointee.StatName)
            XCTAssertNil(OutLeaderboardUserScore)
            TestGlobals.sdkReceived.append("EOS_Leaderboards_CopyLeaderboardUserScoreByUserId")
            return .init(rawValue: .zero)! }
        let object: SwiftEOS_Leaderboards_Actor = SwiftEOS_Leaderboards_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: SwiftEOS_Leaderboards_LeaderboardUserScore? = try object.CopyLeaderboardUserScoreByUserId(
            UserId: nil,
            StatName: nil
        )
        XCTAssertNil(result)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_Leaderboards_CopyLeaderboardUserScoreByUserId"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
