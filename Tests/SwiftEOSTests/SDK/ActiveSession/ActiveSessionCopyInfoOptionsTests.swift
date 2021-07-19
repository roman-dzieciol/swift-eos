import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_ActiveSession_CopyInfoOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_ActiveSession_CopyInfoOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_ActiveSession_CopyInfoOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, EOS_ACTIVESESSION_COPYINFO_API_LATEST)
            let swiftObject = try XCTUnwrap(try SwiftEOS_ActiveSession_CopyInfoOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, EOS_ACTIVESESSION_COPYINFO_API_LATEST) }
    }
}
