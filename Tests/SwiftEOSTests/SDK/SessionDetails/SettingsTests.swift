import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_SessionDetails_SettingsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_SessionDetails_Settings() throws {
        try withZeroInitializedCStruct(type: _tagEOS_SessionDetails_Settings.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, EOS_SESSIONDETAILS_SETTINGS_API_LATEST)
            XCTAssertNil(cstruct.BucketId)
            XCTAssertEqual(cstruct.NumPublicConnections, .zero)
            XCTAssertEqual(cstruct.bAllowJoinInProgress, .zero)
            XCTAssertEqual(cstruct.PermissionLevel, .zero)
            XCTAssertEqual(cstruct.bInvitesAllowed, .zero)
            let swiftObject = try XCTUnwrap(try SwiftEOS_SessionDetails_Settings(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, EOS_SESSIONDETAILS_SETTINGS_API_LATEST)
            XCTAssertNil(swiftObject.BucketId)
            XCTAssertEqual(swiftObject.NumPublicConnections, .zero)
            XCTAssertEqual(swiftObject.bAllowJoinInProgress, false)
            XCTAssertEqual(swiftObject.PermissionLevel, .zero)
            XCTAssertEqual(swiftObject.bInvitesAllowed, false) }
    }
}
