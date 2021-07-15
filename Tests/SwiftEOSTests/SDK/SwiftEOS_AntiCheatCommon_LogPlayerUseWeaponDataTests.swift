import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_AntiCheatCommon_LogPlayerUseWeaponDataTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_AntiCheatCommon_LogPlayerUseWeaponData() throws {
        try withZeroInitializedCStruct(type: _tagEOS_AntiCheatCommon_LogPlayerUseWeaponData.self) { cstruct in
            XCTAssertNil(cstruct.PlayerHandle)
            XCTAssertNil(cstruct.PlayerPosition)
            XCTAssertNil(cstruct.PlayerViewRotation)
            XCTAssertEqual(cstruct.bIsPlayerViewZoomed, .zero)
            XCTAssertEqual(cstruct.bIsMeleeAttack, .zero)
            XCTAssertNil(cstruct.WeaponName)
            let swiftObject = try SwiftEOS_AntiCheatCommon_LogPlayerUseWeaponData(sdkObject: cstruct) }
    }
}
