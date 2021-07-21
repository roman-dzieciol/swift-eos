import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_AntiCheatCommon_LogPlayerSpawnOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_AntiCheatCommon_LogPlayerSpawnOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_AntiCheatCommon_LogPlayerSpawnOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.SpawnedPlayerHandle)
            XCTAssertEqual(cstruct.TeamId, .zero)
            XCTAssertEqual(cstruct.CharacterId, .zero)
            let swiftObject = try XCTUnwrap(try SwiftEOS_AntiCheatCommon_LogPlayerSpawnOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertNil(swiftObject.SpawnedPlayerHandle)
            XCTAssertEqual(swiftObject.TeamId, .zero)
            XCTAssertEqual(swiftObject.CharacterId, .zero) }
    }
}
