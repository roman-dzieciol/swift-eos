import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_AntiCheatClient_BeginSessionOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_AntiCheatClient_BeginSessionOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_AntiCheatClient_BeginSessionOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertEqual(cstruct.Mode, .init(rawValue: .zero)!)
            let swiftObject = try SwiftEOS_AntiCheatClient_BeginSessionOptions(sdkObject: cstruct) }
    }
}
