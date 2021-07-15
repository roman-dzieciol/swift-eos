import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_AntiCheatCommon_LogPlayerTickOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_AntiCheatCommon_LogPlayerTickOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_AntiCheatCommon_LogPlayerTickOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.PlayerHandle)
            XCTAssertNil(cstruct.PlayerPosition)
            XCTAssertNil(cstruct.PlayerViewRotation)
            XCTAssertEqual(cstruct.bIsPlayerViewZoomed, .zero)
            XCTAssertEqual(cstruct.PlayerHealth, .zero)
            XCTAssertEqual(cstruct.PlayerMovementState, .init(rawValue: .zero)!)
            let swiftObject = try SwiftEOS_AntiCheatCommon_LogPlayerTickOptions(sdkObject: cstruct) }
    }
}
