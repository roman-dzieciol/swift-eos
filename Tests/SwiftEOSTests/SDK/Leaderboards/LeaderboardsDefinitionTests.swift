import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Leaderboards_DefinitionTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Leaderboards_Definition() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Leaderboards_Definition.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, EOS_LEADERBOARDS_DEFINITION_API_LATEST)
            XCTAssertNil(cstruct.LeaderboardId)
            XCTAssertNil(cstruct.StatName)
            XCTAssertEqual(cstruct.Aggregation, .zero)
            XCTAssertEqual(cstruct.StartTime, .zero)
            XCTAssertEqual(cstruct.EndTime, .zero)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Leaderboards_Definition(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, EOS_LEADERBOARDS_DEFINITION_API_LATEST)
            XCTAssertNil(swiftObject.LeaderboardId)
            XCTAssertNil(swiftObject.StatName)
            XCTAssertEqual(swiftObject.Aggregation, .zero)
            XCTAssertEqual(swiftObject.StartTime, .zero)
            XCTAssertEqual(swiftObject.EndTime, .zero) }
    }
}
