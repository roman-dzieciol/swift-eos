import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Sessions_RegisterPlayersOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Sessions_RegisterPlayersOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Sessions_RegisterPlayersOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, EOS_SESSIONS_REGISTERPLAYERS_API_LATEST)
            XCTAssertNil(cstruct.SessionName)
            XCTAssertNil(cstruct.PlayersToRegister)
            XCTAssertEqual(cstruct.PlayersToRegisterCount, .zero)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Sessions_RegisterPlayersOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, EOS_SESSIONS_REGISTERPLAYERS_API_LATEST)
            XCTAssertNil(swiftObject.SessionName)
            XCTAssertNil(swiftObject.PlayersToRegister) }
    }
}
