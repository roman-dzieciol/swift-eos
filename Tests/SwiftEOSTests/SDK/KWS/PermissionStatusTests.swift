import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_KWS_PermissionStatusTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_KWS_PermissionStatus() throws {
        try withZeroInitializedCStruct(type: _tagEOS_KWS_PermissionStatus.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.Name)
            XCTAssertEqual(cstruct.Status, .init(rawValue: .zero)!)
            let swiftObject = try XCTUnwrap(try SwiftEOS_KWS_PermissionStatus(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertNil(swiftObject.Name)
            XCTAssertEqual(swiftObject.Status, .init(rawValue: .zero)!) }
    }
}
