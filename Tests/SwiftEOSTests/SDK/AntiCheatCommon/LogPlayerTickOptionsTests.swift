import XCTest
import EOSSDK
@testable import SwiftEOS

public final class SwiftEOS_AntiCheatCommon_LogPlayerTickOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_AntiCheatCommon_LogPlayerTickOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_AntiCheatCommon_LogPlayerTickOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.PlayerHandle)
            XCTAssertNil(cstruct.PlayerPosition)
            XCTAssertNil(cstruct.PlayerViewRotation)
            XCTAssertEqual(cstruct.bIsPlayerViewZoomed, .zero)
            XCTAssertEqual(cstruct.PlayerHealth, .zero)
            XCTAssertEqual(cstruct.PlayerMovementState, .zero)
            let swiftObject = try XCTUnwrap(try SwiftEOS_AntiCheatCommon_LogPlayerTickOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertNil(swiftObject.PlayerHandle)
            XCTAssertNil(swiftObject.PlayerPosition)
            XCTAssertNil(swiftObject.PlayerViewRotation)
            XCTAssertEqual(swiftObject.bIsPlayerViewZoomed, false)
            XCTAssertEqual(swiftObject.PlayerHealth, .zero)
            XCTAssertEqual(swiftObject.PlayerMovementState, .zero) }
    }
}
