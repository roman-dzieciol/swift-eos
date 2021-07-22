import XCTest
import EOSSDK
@testable import SwiftEOS

public final class SwiftEOS_AntiCheatCommon_QuatTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_AntiCheatCommon_Quat() throws {
        try withZeroInitializedCStruct(type: _tagEOS_AntiCheatCommon_Quat.self) { cstruct in
            XCTAssertEqual(cstruct.w, .zero)
            XCTAssertEqual(cstruct.x, .zero)
            XCTAssertEqual(cstruct.y, .zero)
            XCTAssertEqual(cstruct.z, .zero)
            let swiftObject = try XCTUnwrap(try SwiftEOS_AntiCheatCommon_Quat(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.w, .zero)
            XCTAssertEqual(swiftObject.x, .zero)
            XCTAssertEqual(swiftObject.y, .zero)
            XCTAssertEqual(swiftObject.z, .zero) }
    }
}
