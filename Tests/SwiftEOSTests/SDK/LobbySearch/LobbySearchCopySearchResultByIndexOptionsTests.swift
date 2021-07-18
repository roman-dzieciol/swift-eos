import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_LobbySearch_CopySearchResultByIndexOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_LobbySearch_CopySearchResultByIndexOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_LobbySearch_CopySearchResultByIndexOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertEqual(cstruct.LobbyIndex, .zero)
            let swiftObject = try XCTUnwrap(try SwiftEOS_LobbySearch_CopySearchResultByIndexOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertEqual(swiftObject.LobbyIndex, .zero) }
    }
}
