import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Sessions_DumpSessionStateOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Sessions_DumpSessionStateOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Sessions_DumpSessionStateOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, EOS_SESSIONS_DUMPSESSIONSTATE_API_LATEST)
            XCTAssertNil(cstruct.SessionName)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Sessions_DumpSessionStateOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, EOS_SESSIONS_DUMPSESSIONSTATE_API_LATEST)
            XCTAssertNil(swiftObject.SessionName) }
    }
}
