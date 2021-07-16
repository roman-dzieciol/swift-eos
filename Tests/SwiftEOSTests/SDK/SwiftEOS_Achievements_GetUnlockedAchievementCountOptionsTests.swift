import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Achievements_GetUnlockedAchievementCountOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Achievements_GetUnlockedAchievementCountOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Achievements_GetUnlockedAchievementCountOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.UserId)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Achievements_GetUnlockedAchievementCountOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertNil(swiftObject.UserId) }
    }
}
