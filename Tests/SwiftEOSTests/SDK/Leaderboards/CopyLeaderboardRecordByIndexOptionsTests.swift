import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Leaderboards_CopyLeaderboardRecordByIndexOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Leaderboards_CopyLeaderboardRecordByIndexOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Leaderboards_CopyLeaderboardRecordByIndexOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertEqual(cstruct.LeaderboardRecordIndex, .zero)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Leaderboards_CopyLeaderboardRecordByIndexOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertEqual(swiftObject.LeaderboardRecordIndex, .zero) }
    }
}
