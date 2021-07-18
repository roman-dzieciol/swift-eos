import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_AntiCheatClient_AddNotifyMessageToPeerOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_AntiCheatClient_AddNotifyMessageToPeerOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_AntiCheatClient_AddNotifyMessageToPeerOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            let swiftObject = try XCTUnwrap(try SwiftEOS_AntiCheatClient_AddNotifyMessageToPeerOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero) }
    }
}
