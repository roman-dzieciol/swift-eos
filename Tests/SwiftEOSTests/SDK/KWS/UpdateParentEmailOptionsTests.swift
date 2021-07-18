import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_KWS_UpdateParentEmailOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_KWS_UpdateParentEmailOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_KWS_UpdateParentEmailOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertNil(cstruct.ParentEmail)
            let swiftObject = try XCTUnwrap(try SwiftEOS_KWS_UpdateParentEmailOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertNil(swiftObject.LocalUserId)
            XCTAssertNil(swiftObject.ParentEmail) }
    }
}
