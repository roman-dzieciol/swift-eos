import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_AntiCheatCommon_LogGameRoundStartOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_AntiCheatCommon_LogGameRoundStartOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_AntiCheatCommon_LogGameRoundStartOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.SessionIdentifier)
            XCTAssertNil(cstruct.LevelName)
            XCTAssertNil(cstruct.ModeName)
            XCTAssertEqual(cstruct.RoundTimeSeconds, .zero)
            let swiftObject = try SwiftEOS_AntiCheatCommon_LogGameRoundStartOptions(sdkObject: cstruct) }
    }
}
