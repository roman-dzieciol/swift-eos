import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Connect_QueryExternalAccountMappingsOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Connect_QueryExternalAccountMappingsOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Connect_QueryExternalAccountMappingsOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, EOS_CONNECT_QUERYEXTERNALACCOUNTMAPPINGS_API_LATEST)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertEqual(cstruct.AccountIdType, .zero)
            XCTAssertNil(cstruct.ExternalAccountIds)
            XCTAssertEqual(cstruct.ExternalAccountIdCount, .zero)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Connect_QueryExternalAccountMappingsOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, EOS_CONNECT_QUERYEXTERNALACCOUNTMAPPINGS_API_LATEST)
            XCTAssertNil(swiftObject.LocalUserId)
            XCTAssertEqual(swiftObject.AccountIdType, .zero)
            XCTAssertNil(swiftObject.ExternalAccountIds) }
    }
}
