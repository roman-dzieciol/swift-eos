import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_UI_SetToggleFriendsKeyOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_UI_SetToggleFriendsKeyOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_UI_SetToggleFriendsKeyOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, EOS_UI_SETTOGGLEFRIENDSKEY_API_LATEST)
            XCTAssertEqual(cstruct.KeyCombination, .zero)
            let swiftObject = try XCTUnwrap(try SwiftEOS_UI_SetToggleFriendsKeyOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, EOS_UI_SETTOGGLEFRIENDSKEY_API_LATEST)
            XCTAssertEqual(swiftObject.KeyCombination, .zero) }
    }
}
