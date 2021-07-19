import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_KWS_QueryPermissionsOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_KWS_QueryPermissionsOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_KWS_QueryPermissionsOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, EOS_KWS_QUERYPERMISSIONS_API_LATEST)
            XCTAssertNil(cstruct.LocalUserId)
            let swiftObject = try XCTUnwrap(try SwiftEOS_KWS_QueryPermissionsOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, EOS_KWS_QUERYPERMISSIONS_API_LATEST)
            XCTAssertNil(swiftObject.LocalUserId) }
    }
}
