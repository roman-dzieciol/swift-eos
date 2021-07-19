import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Connect_CopyProductUserExternalAccountByIndexOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Connect_CopyProductUserExternalAccountByIndexOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Connect_CopyProductUserExternalAccountByIndexOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, EOS_CONNECT_COPYPRODUCTUSEREXTERNALACCOUNTBYINDEX_API_LATEST)
            XCTAssertNil(cstruct.TargetUserId)
            XCTAssertEqual(cstruct.ExternalAccountInfoIndex, .zero)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Connect_CopyProductUserExternalAccountByIndexOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, EOS_CONNECT_COPYPRODUCTUSEREXTERNALACCOUNTBYINDEX_API_LATEST)
            XCTAssertNil(swiftObject.TargetUserId)
            XCTAssertEqual(swiftObject.ExternalAccountInfoIndex, .zero) }
    }
}
