import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_AntiCheatClient_EndSessionOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_AntiCheatClient_EndSessionOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_AntiCheatClient_EndSessionOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, EOS_ANTICHEATCLIENT_ENDSESSION_API_LATEST)
            let swiftObject = try XCTUnwrap(try SwiftEOS_AntiCheatClient_EndSessionOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, EOS_ANTICHEATCLIENT_ENDSESSION_API_LATEST) }
    }
}
