import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_AntiCheatServer_UnregisterClientOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_AntiCheatServer_UnregisterClientOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_AntiCheatServer_UnregisterClientOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, EOS_ANTICHEATSERVER_UNREGISTERCLIENT_API_LATEST)
            XCTAssertNil(cstruct.ClientHandle)
            let swiftObject = try XCTUnwrap(try SwiftEOS_AntiCheatServer_UnregisterClientOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, EOS_ANTICHEATSERVER_UNREGISTERCLIENT_API_LATEST)
            XCTAssertNil(swiftObject.ClientHandle) }
    }
}
