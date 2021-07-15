import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Sessions_AddNotifySessionInviteAcceptedOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Sessions_AddNotifySessionInviteAcceptedOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Sessions_AddNotifySessionInviteAcceptedOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            let swiftObject = try SwiftEOS_Sessions_AddNotifySessionInviteAcceptedOptions(sdkObject: cstruct) }
    }
}
