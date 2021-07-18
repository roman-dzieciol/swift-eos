import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_AntiCheatClient_PollStatusOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_AntiCheatClient_PollStatusOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_AntiCheatClient_PollStatusOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertEqual(cstruct.OutMessageLength, .zero)
            let swiftObject = try XCTUnwrap(try SwiftEOS_AntiCheatClient_PollStatusOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertEqual(swiftObject.OutMessageLength, .zero) }
    }
}
