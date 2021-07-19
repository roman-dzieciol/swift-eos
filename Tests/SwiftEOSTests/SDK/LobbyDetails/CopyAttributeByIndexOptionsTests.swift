import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_LobbyDetails_CopyAttributeByIndexOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_LobbyDetails_CopyAttributeByIndexOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_LobbyDetails_CopyAttributeByIndexOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, EOS_LOBBYDETAILS_COPYATTRIBUTEBYINDEX_API_LATEST)
            XCTAssertEqual(cstruct.AttrIndex, .zero)
            let swiftObject = try XCTUnwrap(try SwiftEOS_LobbyDetails_CopyAttributeByIndexOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, EOS_LOBBYDETAILS_COPYATTRIBUTEBYINDEX_API_LATEST)
            XCTAssertEqual(swiftObject.AttrIndex, .zero) }
    }
}
