import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_UI_AddNotifyDisplaySettingsUpdatedOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_UI_AddNotifyDisplaySettingsUpdatedOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_UI_AddNotifyDisplaySettingsUpdatedOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, EOS_UI_ADDNOTIFYDISPLAYSETTINGSUPDATED_API_LATEST)
            let swiftObject = try XCTUnwrap(try SwiftEOS_UI_AddNotifyDisplaySettingsUpdatedOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, EOS_UI_ADDNOTIFYDISPLAYSETTINGSUPDATED_API_LATEST) }
    }
}
