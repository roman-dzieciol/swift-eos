import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Sessions_EndSessionOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Sessions_EndSessionOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Sessions_EndSessionOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, EOS_SESSIONS_ENDSESSION_API_LATEST)
            XCTAssertNil(cstruct.SessionName)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Sessions_EndSessionOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, EOS_SESSIONS_ENDSESSION_API_LATEST)
            XCTAssertNil(swiftObject.SessionName) }
    }
}
