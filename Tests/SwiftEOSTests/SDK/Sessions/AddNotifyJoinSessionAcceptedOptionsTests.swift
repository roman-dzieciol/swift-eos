import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Sessions_AddNotifyJoinSessionAcceptedOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Sessions_AddNotifyJoinSessionAcceptedOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Sessions_AddNotifyJoinSessionAcceptedOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, EOS_SESSIONS_ADDNOTIFYJOINSESSIONACCEPTED_API_LATEST)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Sessions_AddNotifyJoinSessionAcceptedOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, EOS_SESSIONS_ADDNOTIFYJOINSESSIONACCEPTED_API_LATEST) }
    }
}
