import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Leaderboards_LeaderboardRecordTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Leaderboards_LeaderboardRecord() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Leaderboards_LeaderboardRecord.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.UserId)
            XCTAssertEqual(cstruct.Rank, .zero)
            XCTAssertEqual(cstruct.Score, .zero)
            XCTAssertNil(cstruct.UserDisplayName)
            let swiftObject = try SwiftEOS_Leaderboards_LeaderboardRecord(sdkObject: cstruct) }
    }
}
