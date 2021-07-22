import XCTest
import EOSSDK
@testable import SwiftEOS

public final class SwiftEOS_AntiCheatClient_AddExternalIntegrityCatalogOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_AntiCheatClient_AddExternalIntegrityCatalogOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_AntiCheatClient_AddExternalIntegrityCatalogOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.PathToBinFile)
            let swiftObject = try XCTUnwrap(try SwiftEOS_AntiCheatClient_AddExternalIntegrityCatalogOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertNil(swiftObject.PathToBinFile) }
    }
}
