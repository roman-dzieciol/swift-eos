import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_P2P_GetPacketQueueInfoOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_P2P_GetPacketQueueInfoOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_P2P_GetPacketQueueInfoOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, EOS_P2P_GETPACKETQUEUEINFO_API_LATEST)
            let swiftObject = try XCTUnwrap(try SwiftEOS_P2P_GetPacketQueueInfoOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, EOS_P2P_GETPACKETQUEUEINFO_API_LATEST) }
    }
}
