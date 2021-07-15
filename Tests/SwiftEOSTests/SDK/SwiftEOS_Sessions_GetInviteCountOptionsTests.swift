import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Sessions_GetInviteCountOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Sessions_GetInviteCountOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Sessions_GetInviteCountOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.LocalUserId)
            let swiftObject = try SwiftEOS_Sessions_GetInviteCountOptions(sdkObject: cstruct) }
    }
}
