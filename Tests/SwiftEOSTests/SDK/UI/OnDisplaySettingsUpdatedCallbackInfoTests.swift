import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_UI_OnDisplaySettingsUpdatedCallbackInfoTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_UI_OnDisplaySettingsUpdatedCallbackInfo() throws {
        try withZeroInitializedCStruct(type: _tagEOS_UI_OnDisplaySettingsUpdatedCallbackInfo.self) { cstruct in
            XCTAssertNil(cstruct.ClientData)
            XCTAssertEqual(cstruct.bIsVisible, .zero)
            XCTAssertEqual(cstruct.bIsExclusiveInput, .zero)
            let swiftObject = try XCTUnwrap(try SwiftEOS_UI_OnDisplaySettingsUpdatedCallbackInfo(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.bIsVisible, false)
            XCTAssertEqual(swiftObject.bIsExclusiveInput, false) }
    }
}
