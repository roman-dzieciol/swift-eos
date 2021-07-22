import XCTest
import EOSSDK
@testable import SwiftEOS

public final class SwiftEOS_P2P_AddNotifyIncomingPacketQueueFullOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_P2P_AddNotifyIncomingPacketQueueFullOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_P2P_AddNotifyIncomingPacketQueueFullOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            let swiftObject = try XCTUnwrap(try SwiftEOS_P2P_AddNotifyIncomingPacketQueueFullOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero) }
    }
}
