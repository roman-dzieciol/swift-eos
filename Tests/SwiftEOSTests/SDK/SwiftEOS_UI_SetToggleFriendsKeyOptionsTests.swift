import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_UI_SetToggleFriendsKeyOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_UI_SetToggleFriendsKeyOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_UI_SetToggleFriendsKeyOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertEqual(cstruct.KeyCombination, .init(rawValue: .zero)!)
            let swiftObject = try XCTUnwrap(try SwiftEOS_UI_SetToggleFriendsKeyOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertEqual(swiftObject.KeyCombination, .init(rawValue: .zero)!) }
    }
}
