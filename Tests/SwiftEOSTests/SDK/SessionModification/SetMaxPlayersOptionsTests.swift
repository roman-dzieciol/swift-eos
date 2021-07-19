import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_SessionModification_SetMaxPlayersOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_SessionModification_SetMaxPlayersOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_SessionModification_SetMaxPlayersOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, EOS_SESSIONMODIFICATION_SETMAXPLAYERS_API_LATEST)
            XCTAssertEqual(cstruct.MaxPlayers, .zero)
            let swiftObject = try XCTUnwrap(try SwiftEOS_SessionModification_SetMaxPlayersOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, EOS_SESSIONMODIFICATION_SETMAXPLAYERS_API_LATEST)
            XCTAssertEqual(swiftObject.MaxPlayers, .zero) }
    }
}
