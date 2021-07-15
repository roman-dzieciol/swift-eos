import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_AntiCheatCommon_LogGameRoundEndOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_AntiCheatCommon_LogGameRoundEndOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_AntiCheatCommon_LogGameRoundEndOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertEqual(cstruct.WinningTeamId, .zero)
            let swiftObject = try SwiftEOS_AntiCheatCommon_LogGameRoundEndOptions(sdkObject: cstruct) }
    }
}
