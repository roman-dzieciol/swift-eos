import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Leaderboards_UserScoresQueryStatInfoTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Leaderboards_UserScoresQueryStatInfo() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Leaderboards_UserScoresQueryStatInfo.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.StatName)
            XCTAssertEqual(cstruct.Aggregation, .init(rawValue: .zero)!)
            let swiftObject = try SwiftEOS_Leaderboards_UserScoresQueryStatInfo(sdkObject: cstruct) }
    }
}
