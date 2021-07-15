import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_P2P_ReceivePacketOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_P2P_ReceivePacketOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_P2P_ReceivePacketOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertEqual(cstruct.MaxDataSizeBytes, .zero)
            XCTAssertNil(cstruct.RequestedChannel)
            let swiftObject = try SwiftEOS_P2P_ReceivePacketOptions(sdkObject: cstruct) }
    }
}
