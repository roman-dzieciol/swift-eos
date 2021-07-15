import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_SessionSearch_SetTargetUserIdOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_SessionSearch_SetTargetUserIdOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_SessionSearch_SetTargetUserIdOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.TargetUserId)
            let swiftObject = try SwiftEOS_SessionSearch_SetTargetUserIdOptions(sdkObject: cstruct) }
    }
}
