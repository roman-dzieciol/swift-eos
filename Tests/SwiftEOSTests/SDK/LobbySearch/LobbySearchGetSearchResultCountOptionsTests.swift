import XCTest
import EOSSDK
@testable import SwiftEOS

public final class SwiftEOS_LobbySearch_GetSearchResultCountOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_LobbySearch_GetSearchResultCountOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_LobbySearch_GetSearchResultCountOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            let swiftObject = try XCTUnwrap(try SwiftEOS_LobbySearch_GetSearchResultCountOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero) }
    }
}
