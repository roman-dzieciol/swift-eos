import XCTest
import EOSSDK
@testable import SwiftEOS

public final class SwiftEOS_Sessions_AddNotifySessionInviteReceivedOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Sessions_AddNotifySessionInviteReceivedOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Sessions_AddNotifySessionInviteReceivedOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Sessions_AddNotifySessionInviteReceivedOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero) }
    }
}
