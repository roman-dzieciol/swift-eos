import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Ecom_CatalogReleaseTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Ecom_CatalogRelease() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Ecom_CatalogRelease.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, EOS_ECOM_CATALOGRELEASE_API_LATEST)
            XCTAssertEqual(cstruct.CompatibleAppIdCount, .zero)
            XCTAssertNil(cstruct.CompatibleAppIds)
            XCTAssertEqual(cstruct.CompatiblePlatformCount, .zero)
            XCTAssertNil(cstruct.CompatiblePlatforms)
            XCTAssertNil(cstruct.ReleaseNote)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Ecom_CatalogRelease(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, EOS_ECOM_CATALOGRELEASE_API_LATEST)
            XCTAssertNil(swiftObject.CompatibleAppIds)
            XCTAssertNil(swiftObject.CompatiblePlatforms)
            XCTAssertNil(swiftObject.ReleaseNote) }
    }
}
