import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_LobbySearch_FindOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_LobbySearch_FindOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_LobbySearch_FindOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.LocalUserId)
            let swiftObject = try SwiftEOS_LobbySearch_FindOptions(sdkObject: cstruct) }
    }
}
