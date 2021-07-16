import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_LobbyModification_SetPermissionLevelOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_LobbyModification_SetPermissionLevelOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_LobbyModification_SetPermissionLevelOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertEqual(cstruct.PermissionLevel, .init(rawValue: .zero)!)
            let swiftObject = try XCTUnwrap(try SwiftEOS_LobbyModification_SetPermissionLevelOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertEqual(swiftObject.PermissionLevel, .init(rawValue: .zero)!) }
    }
}
