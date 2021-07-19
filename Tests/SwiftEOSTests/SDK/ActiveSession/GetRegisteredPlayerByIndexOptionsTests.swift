import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_ActiveSession_GetRegisteredPlayerByIndexOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_ActiveSession_GetRegisteredPlayerByIndexOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_ActiveSession_GetRegisteredPlayerByIndexOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, EOS_ACTIVESESSION_GETREGISTEREDPLAYERBYINDEX_API_LATEST)
            XCTAssertEqual(cstruct.PlayerIndex, .zero)
            let swiftObject = try XCTUnwrap(try SwiftEOS_ActiveSession_GetRegisteredPlayerByIndexOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, EOS_ACTIVESESSION_GETREGISTEREDPLAYERBYINDEX_API_LATEST)
            XCTAssertEqual(swiftObject.PlayerIndex, .zero) }
    }
}
