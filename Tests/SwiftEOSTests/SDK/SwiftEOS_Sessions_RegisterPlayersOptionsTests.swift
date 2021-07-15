import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Sessions_RegisterPlayersOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Sessions_RegisterPlayersOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Sessions_RegisterPlayersOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.SessionName)
            XCTAssertNil(cstruct.PlayersToRegister)
            XCTAssertEqual(cstruct.PlayersToRegisterCount, .zero)
            let swiftObject = try SwiftEOS_Sessions_RegisterPlayersOptions(sdkObject: cstruct) }
    }
}
