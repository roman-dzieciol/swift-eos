import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_P2P_AddNotifyIncomingPacketQueueFullOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_P2P_AddNotifyIncomingPacketQueueFullOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_P2P_AddNotifyIncomingPacketQueueFullOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, EOS_P2P_ADDNOTIFYINCOMINGPACKETQUEUEFULL_API_LATEST)
            let swiftObject = try XCTUnwrap(try SwiftEOS_P2P_AddNotifyIncomingPacketQueueFullOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, EOS_P2P_ADDNOTIFYINCOMINGPACKETQUEUEFULL_API_LATEST) }
    }
}
