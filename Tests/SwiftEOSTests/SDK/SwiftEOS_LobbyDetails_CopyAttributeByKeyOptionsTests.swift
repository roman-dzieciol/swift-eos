import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_LobbyDetails_CopyAttributeByKeyOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_LobbyDetails_CopyAttributeByKeyOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_LobbyDetails_CopyAttributeByKeyOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.AttrKey)
            let swiftObject = try SwiftEOS_LobbyDetails_CopyAttributeByKeyOptions(sdkObject: cstruct) }
    }
}
