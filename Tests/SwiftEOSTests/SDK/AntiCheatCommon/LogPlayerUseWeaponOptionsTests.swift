import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_AntiCheatCommon_LogPlayerUseWeaponOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_AntiCheatCommon_LogPlayerUseWeaponOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_AntiCheatCommon_LogPlayerUseWeaponOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, EOS_ANTICHEATCOMMON_LOGPLAYERUSEWEAPON_API_LATEST)
            XCTAssertNil(cstruct.UseWeaponData)
            let swiftObject = try XCTUnwrap(try SwiftEOS_AntiCheatCommon_LogPlayerUseWeaponOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, EOS_ANTICHEATCOMMON_LOGPLAYERUSEWEAPON_API_LATEST)
            XCTAssertNil(swiftObject.UseWeaponData) }
    }
}
