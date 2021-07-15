import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Ecom_CatalogReleaseTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Ecom_CatalogRelease() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Ecom_CatalogRelease.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertEqual(cstruct.CompatibleAppIdCount, .zero)
            XCTAssertNil(cstruct.CompatibleAppIds)
            XCTAssertEqual(cstruct.CompatiblePlatformCount, .zero)
            XCTAssertNil(cstruct.CompatiblePlatforms)
            XCTAssertNil(cstruct.ReleaseNote)
            let swiftObject = try SwiftEOS_Ecom_CatalogRelease(sdkObject: cstruct) }
    }
}
