import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Connect_CopyProductUserInfoOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Connect_CopyProductUserInfoOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Connect_CopyProductUserInfoOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, EOS_CONNECT_COPYPRODUCTUSERINFO_API_LATEST)
            XCTAssertNil(cstruct.TargetUserId)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Connect_CopyProductUserInfoOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, EOS_CONNECT_COPYPRODUCTUSERINFO_API_LATEST)
            XCTAssertNil(swiftObject.TargetUserId) }
    }
}
