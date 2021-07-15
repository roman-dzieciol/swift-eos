import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_AntiCheatCommon_SetGameSessionIdOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_AntiCheatCommon_SetGameSessionIdOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_AntiCheatCommon_SetGameSessionIdOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.GameSessionId)
            let swiftObject = try SwiftEOS_AntiCheatCommon_SetGameSessionIdOptions(sdkObject: cstruct) }
    }
}
