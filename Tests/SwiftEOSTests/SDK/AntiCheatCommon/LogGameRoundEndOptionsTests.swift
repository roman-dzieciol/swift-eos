import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_AntiCheatCommon_LogGameRoundEndOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_AntiCheatCommon_LogGameRoundEndOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_AntiCheatCommon_LogGameRoundEndOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, EOS_ANTICHEATCOMMON_LOGGAMEROUNDEND_API_LATEST)
            XCTAssertEqual(cstruct.WinningTeamId, .zero)
            let swiftObject = try XCTUnwrap(try SwiftEOS_AntiCheatCommon_LogGameRoundEndOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, EOS_ANTICHEATCOMMON_LOGGAMEROUNDEND_API_LATEST)
            XCTAssertEqual(swiftObject.WinningTeamId, .zero) }
    }
}
