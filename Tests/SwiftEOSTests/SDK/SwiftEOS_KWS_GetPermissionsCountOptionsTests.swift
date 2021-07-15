import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_KWS_GetPermissionsCountOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_KWS_GetPermissionsCountOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_KWS_GetPermissionsCountOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.LocalUserId)
            let swiftObject = try SwiftEOS_KWS_GetPermissionsCountOptions(sdkObject: cstruct) }
    }
}
