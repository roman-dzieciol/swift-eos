import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Connect_AddNotifyAuthExpirationOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Connect_AddNotifyAuthExpirationOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Connect_AddNotifyAuthExpirationOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Connect_AddNotifyAuthExpirationOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero) }
    }
}
