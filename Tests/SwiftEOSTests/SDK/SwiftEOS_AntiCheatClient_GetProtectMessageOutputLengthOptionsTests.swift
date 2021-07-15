import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_AntiCheatClient_GetProtectMessageOutputLengthOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_AntiCheatClient_GetProtectMessageOutputLengthOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_AntiCheatClient_GetProtectMessageOutputLengthOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertEqual(cstruct.DataLengthBytes, .zero)
            let swiftObject = try SwiftEOS_AntiCheatClient_GetProtectMessageOutputLengthOptions(sdkObject: cstruct) }
    }
}
