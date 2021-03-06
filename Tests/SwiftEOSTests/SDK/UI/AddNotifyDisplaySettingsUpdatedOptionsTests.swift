import XCTest
import EOSSDK
@testable import SwiftEOS

public final class SwiftEOS_UI_AddNotifyDisplaySettingsUpdatedOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_UI_AddNotifyDisplaySettingsUpdatedOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_UI_AddNotifyDisplaySettingsUpdatedOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            let swiftObject = try XCTUnwrap(try SwiftEOS_UI_AddNotifyDisplaySettingsUpdatedOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero) }
    }
}
