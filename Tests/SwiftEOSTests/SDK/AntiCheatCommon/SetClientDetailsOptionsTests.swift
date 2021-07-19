import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_AntiCheatCommon_SetClientDetailsOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_AntiCheatCommon_SetClientDetailsOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_AntiCheatCommon_SetClientDetailsOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, EOS_ANTICHEATCOMMON_SETCLIENTDETAILS_API_LATEST)
            XCTAssertNil(cstruct.ClientHandle)
            XCTAssertEqual(cstruct.ClientFlags, .zero)
            XCTAssertEqual(cstruct.ClientInputMethod, .zero)
            let swiftObject = try XCTUnwrap(try SwiftEOS_AntiCheatCommon_SetClientDetailsOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, EOS_ANTICHEATCOMMON_SETCLIENTDETAILS_API_LATEST)
            XCTAssertNil(swiftObject.ClientHandle)
            XCTAssertEqual(swiftObject.ClientFlags, .zero)
            XCTAssertEqual(swiftObject.ClientInputMethod, .zero) }
    }
}
