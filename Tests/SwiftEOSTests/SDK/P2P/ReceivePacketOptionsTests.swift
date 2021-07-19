import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_P2P_ReceivePacketOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_P2P_ReceivePacketOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_P2P_ReceivePacketOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, EOS_P2P_RECEIVEPACKET_API_LATEST)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertEqual(cstruct.MaxDataSizeBytes, .zero)
            XCTAssertNil(cstruct.RequestedChannel)
            let swiftObject = try XCTUnwrap(try SwiftEOS_P2P_ReceivePacketOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, EOS_P2P_RECEIVEPACKET_API_LATEST)
            XCTAssertNil(swiftObject.LocalUserId)
            XCTAssertEqual(swiftObject.MaxDataSizeBytes, .zero)
            XCTAssertNil(swiftObject.RequestedChannel) }
    }
}
