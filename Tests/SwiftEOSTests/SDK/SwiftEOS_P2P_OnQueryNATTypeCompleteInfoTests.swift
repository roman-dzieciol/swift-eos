import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_P2P_OnQueryNATTypeCompleteInfoTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_P2P_OnQueryNATTypeCompleteInfo() throws {
        try withZeroInitializedCStruct(type: _tagEOS_P2P_OnQueryNATTypeCompleteInfo.self) { cstruct in
            XCTAssertEqual(cstruct.ResultCode, .init(rawValue: .zero)!)
            XCTAssertNil(cstruct.ClientData)
            XCTAssertEqual(cstruct.NATType, .init(rawValue: .zero)!)
            let swiftObject = try XCTUnwrap(try SwiftEOS_P2P_OnQueryNATTypeCompleteInfo(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ResultCode, .init(rawValue: .zero)!)
            XCTAssertEqual(swiftObject.NATType, .init(rawValue: .zero)!) }
    }
}
