import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Sessions_UnregisterPlayersOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Sessions_UnregisterPlayersOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Sessions_UnregisterPlayersOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, EOS_SESSIONS_UNREGISTERPLAYERS_API_LATEST)
            XCTAssertNil(cstruct.SessionName)
            XCTAssertNil(cstruct.PlayersToUnregister)
            XCTAssertEqual(cstruct.PlayersToUnregisterCount, .zero)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Sessions_UnregisterPlayersOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, EOS_SESSIONS_UNREGISTERPLAYERS_API_LATEST)
            XCTAssertNil(swiftObject.SessionName)
            XCTAssertNil(swiftObject.PlayersToUnregister) }
    }
}
