import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Connect_TransferDeviceIdAccountOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Connect_TransferDeviceIdAccountOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Connect_TransferDeviceIdAccountOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.PrimaryLocalUserId)
            XCTAssertNil(cstruct.LocalDeviceUserId)
            XCTAssertNil(cstruct.ProductUserIdToPreserve)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Connect_TransferDeviceIdAccountOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertNil(swiftObject.PrimaryLocalUserId)
            XCTAssertNil(swiftObject.LocalDeviceUserId)
            XCTAssertNil(swiftObject.ProductUserIdToPreserve) }
    }
}
