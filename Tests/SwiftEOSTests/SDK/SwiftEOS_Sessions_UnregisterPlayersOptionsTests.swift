import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Sessions_UnregisterPlayersOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Sessions_UnregisterPlayersOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Sessions_UnregisterPlayersOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.SessionName)
            XCTAssertNil(cstruct.PlayersToUnregister)
            XCTAssertEqual(cstruct.PlayersToUnregisterCount, .zero)
            let swiftObject = try SwiftEOS_Sessions_UnregisterPlayersOptions(sdkObject: cstruct) }
    }
}
