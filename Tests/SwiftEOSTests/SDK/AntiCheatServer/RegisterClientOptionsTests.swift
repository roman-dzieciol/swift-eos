import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_AntiCheatServer_RegisterClientOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_AntiCheatServer_RegisterClientOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_AntiCheatServer_RegisterClientOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, EOS_ANTICHEATSERVER_REGISTERCLIENT_API_LATEST)
            XCTAssertNil(cstruct.ClientHandle)
            XCTAssertEqual(cstruct.ClientType, .zero)
            XCTAssertEqual(cstruct.ClientPlatform, .zero)
            XCTAssertNil(cstruct.AccountId)
            XCTAssertNil(cstruct.IpAddress)
            let swiftObject = try XCTUnwrap(try SwiftEOS_AntiCheatServer_RegisterClientOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, EOS_ANTICHEATSERVER_REGISTERCLIENT_API_LATEST)
            XCTAssertNil(swiftObject.ClientHandle)
            XCTAssertEqual(swiftObject.ClientType, .zero)
            XCTAssertEqual(swiftObject.ClientPlatform, .zero)
            XCTAssertNil(swiftObject.AccountId)
            XCTAssertNil(swiftObject.IpAddress) }
    }
}
