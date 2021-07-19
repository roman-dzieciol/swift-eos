import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_AntiCheatClient_AddNotifyMessageToServerOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_AntiCheatClient_AddNotifyMessageToServerOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_AntiCheatClient_AddNotifyMessageToServerOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, EOS_ANTICHEATCLIENT_ADDNOTIFYMESSAGETOSERVER_API_LATEST)
            let swiftObject = try XCTUnwrap(try SwiftEOS_AntiCheatClient_AddNotifyMessageToServerOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, EOS_ANTICHEATCLIENT_ADDNOTIFYMESSAGETOSERVER_API_LATEST) }
    }
}
