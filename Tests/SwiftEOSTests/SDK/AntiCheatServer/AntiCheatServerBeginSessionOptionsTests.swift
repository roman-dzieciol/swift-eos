import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_AntiCheatServer_BeginSessionOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_AntiCheatServer_BeginSessionOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_AntiCheatServer_BeginSessionOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, EOS_ANTICHEATSERVER_BEGINSESSION_API_LATEST)
            XCTAssertEqual(cstruct.RegisterTimeoutSeconds, .zero)
            XCTAssertNil(cstruct.ServerName)
            XCTAssertEqual(cstruct.bEnableGameplayData, .zero)
            XCTAssertNil(cstruct.LocalUserId)
            let swiftObject = try XCTUnwrap(try SwiftEOS_AntiCheatServer_BeginSessionOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, EOS_ANTICHEATSERVER_BEGINSESSION_API_LATEST)
            XCTAssertEqual(swiftObject.RegisterTimeoutSeconds, .zero)
            XCTAssertNil(swiftObject.ServerName)
            XCTAssertEqual(swiftObject.bEnableGameplayData, false)
            XCTAssertNil(swiftObject.LocalUserId) }
    }
}
