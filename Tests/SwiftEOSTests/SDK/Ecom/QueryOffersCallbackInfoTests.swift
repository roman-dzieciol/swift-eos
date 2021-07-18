import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Ecom_QueryOffersCallbackInfoTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Ecom_QueryOffersCallbackInfo() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Ecom_QueryOffersCallbackInfo.self) { cstruct in
            XCTAssertEqual(cstruct.ResultCode, .init(rawValue: .zero)!)
            XCTAssertNil(cstruct.ClientData)
            XCTAssertNil(cstruct.LocalUserId)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Ecom_QueryOffersCallbackInfo(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ResultCode, .init(rawValue: .zero)!)
            XCTAssertNil(swiftObject.LocalUserId) }
    }
}
