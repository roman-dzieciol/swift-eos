import XCTest
import EOSSDK
@testable import SwiftEOS

public final class SwiftEOS_Sessions_RegisterPlayersOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Sessions_RegisterPlayersOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Sessions_RegisterPlayersOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.SessionName)
            XCTAssertNil(cstruct.PlayersToRegister)
            XCTAssertEqual(cstruct.PlayersToRegisterCount, .zero)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Sessions_RegisterPlayersOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertNil(swiftObject.SessionName)
            XCTAssertNil(swiftObject.PlayersToRegister) }
    }
}
