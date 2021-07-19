import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_AntiCheatServer_EndSessionOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_AntiCheatServer_EndSessionOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_AntiCheatServer_EndSessionOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, EOS_ANTICHEATSERVER_ENDSESSION_API_LATEST)
            let swiftObject = try XCTUnwrap(try SwiftEOS_AntiCheatServer_EndSessionOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, EOS_ANTICHEATSERVER_ENDSESSION_API_LATEST) }
    }
}
