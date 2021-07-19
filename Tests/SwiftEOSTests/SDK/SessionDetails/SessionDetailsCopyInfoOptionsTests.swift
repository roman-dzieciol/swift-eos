import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_SessionDetails_CopyInfoOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_SessionDetails_CopyInfoOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_SessionDetails_CopyInfoOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, EOS_SESSIONDETAILS_COPYINFO_API_LATEST)
            let swiftObject = try XCTUnwrap(try SwiftEOS_SessionDetails_CopyInfoOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, EOS_SESSIONDETAILS_COPYINFO_API_LATEST) }
    }
}
