import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_ActiveSession_GetRegisteredPlayerCountOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_ActiveSession_GetRegisteredPlayerCountOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_ActiveSession_GetRegisteredPlayerCountOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, EOS_ACTIVESESSION_GETREGISTEREDPLAYERCOUNT_API_LATEST)
            let swiftObject = try XCTUnwrap(try SwiftEOS_ActiveSession_GetRegisteredPlayerCountOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, EOS_ACTIVESESSION_GETREGISTEREDPLAYERCOUNT_API_LATEST) }
    }
}
