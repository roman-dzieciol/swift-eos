import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Leaderboards_DefinitionTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Leaderboards_Definition() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Leaderboards_Definition.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.LeaderboardId)
            XCTAssertNil(cstruct.StatName)
            XCTAssertEqual(cstruct.Aggregation, .init(rawValue: .zero)!)
            XCTAssertEqual(cstruct.StartTime, .zero)
            XCTAssertEqual(cstruct.EndTime, .zero)
            let swiftObject = try SwiftEOS_Leaderboards_Definition(sdkObject: cstruct) }
    }
}
