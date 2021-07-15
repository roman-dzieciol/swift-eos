import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_AntiCheatCommon_Vec3fTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_AntiCheatCommon_Vec3f() throws {
        try withZeroInitializedCStruct(type: _tagEOS_AntiCheatCommon_Vec3f.self) { cstruct in
            XCTAssertEqual(cstruct.x, .zero)
            XCTAssertEqual(cstruct.y, .zero)
            XCTAssertEqual(cstruct.z, .zero)
            let swiftObject = try SwiftEOS_AntiCheatCommon_Vec3f(sdkObject: cstruct) }
    }
}
