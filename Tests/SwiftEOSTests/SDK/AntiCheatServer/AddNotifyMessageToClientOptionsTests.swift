import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_AntiCheatServer_AddNotifyMessageToClientOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_AntiCheatServer_AddNotifyMessageToClientOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_AntiCheatServer_AddNotifyMessageToClientOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, EOS_ANTICHEATSERVER_ADDNOTIFYMESSAGETOCLIENT_API_LATEST)
            let swiftObject = try XCTUnwrap(try SwiftEOS_AntiCheatServer_AddNotifyMessageToClientOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, EOS_ANTICHEATSERVER_ADDNOTIFYMESSAGETOCLIENT_API_LATEST) }
    }
}
