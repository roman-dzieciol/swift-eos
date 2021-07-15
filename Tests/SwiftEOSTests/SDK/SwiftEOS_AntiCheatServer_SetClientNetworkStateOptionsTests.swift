import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_AntiCheatServer_SetClientNetworkStateOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_AntiCheatServer_SetClientNetworkStateOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_AntiCheatServer_SetClientNetworkStateOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.ClientHandle)
            XCTAssertEqual(cstruct.bIsNetworkActive, .zero)
            let swiftObject = try SwiftEOS_AntiCheatServer_SetClientNetworkStateOptions(sdkObject: cstruct) }
    }
}
