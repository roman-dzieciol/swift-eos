import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Achievements_QueryDefinitionsOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Achievements_QueryDefinitionsOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Achievements_QueryDefinitionsOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertNil(cstruct.EpicUserId_DEPRECATED)
            XCTAssertNil(cstruct.HiddenAchievementIds_DEPRECATED)
            XCTAssertEqual(cstruct.HiddenAchievementsCount_DEPRECATED, .zero)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Achievements_QueryDefinitionsOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertNil(swiftObject.LocalUserId)
            XCTAssertNil(swiftObject.EpicUserId_DEPRECATED)
            XCTAssertNil(swiftObject.HiddenAchievementIds_DEPRECATED) }
    }
}
