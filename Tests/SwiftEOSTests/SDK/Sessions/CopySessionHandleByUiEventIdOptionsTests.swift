import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Sessions_CopySessionHandleByUiEventIdOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Sessions_CopySessionHandleByUiEventIdOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Sessions_CopySessionHandleByUiEventIdOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, EOS_SESSIONS_COPYSESSIONHANDLEBYUIEVENTID_API_LATEST)
            XCTAssertEqual(cstruct.UiEventId, .zero)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Sessions_CopySessionHandleByUiEventIdOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, EOS_SESSIONS_COPYSESSIONHANDLEBYUIEVENTID_API_LATEST)
            XCTAssertEqual(swiftObject.UiEventId, .zero) }
    }
}
