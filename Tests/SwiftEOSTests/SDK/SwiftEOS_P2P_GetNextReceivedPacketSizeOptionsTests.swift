import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_P2P_GetNextReceivedPacketSizeOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_P2P_GetNextReceivedPacketSizeOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_P2P_GetNextReceivedPacketSizeOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertNil(cstruct.RequestedChannel)
            let swiftObject = try XCTUnwrap(try SwiftEOS_P2P_GetNextReceivedPacketSizeOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertNil(swiftObject.LocalUserId)
            XCTAssertNil(swiftObject.RequestedChannel) }
    }
}
