import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Sessions_CopySessionHandleByUiEventIdOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Sessions_CopySessionHandleByUiEventIdOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Sessions_CopySessionHandleByUiEventIdOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertEqual(cstruct.UiEventId, .zero)
            let swiftObject = try SwiftEOS_Sessions_CopySessionHandleByUiEventIdOptions(sdkObject: cstruct) }
    }
}
