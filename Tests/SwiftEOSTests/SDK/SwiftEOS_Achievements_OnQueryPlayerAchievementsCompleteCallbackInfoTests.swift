import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Achievements_OnQueryPlayerAchievementsCompleteCallbackInfoTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Achievements_OnQueryPlayerAchievementsCompleteCallbackInfo() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Achievements_OnQueryPlayerAchievementsCompleteCallbackInfo.self) { cstruct in
            XCTAssertEqual(cstruct.ResultCode, .init(rawValue: .zero)!)
            XCTAssertNil(cstruct.ClientData)
            XCTAssertNil(cstruct.UserId)
            let swiftObject = try SwiftEOS_Achievements_OnQueryPlayerAchievementsCompleteCallbackInfo(sdkObject: cstruct) }
    }
}
