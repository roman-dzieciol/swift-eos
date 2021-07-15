import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Platform_OptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Platform_Options() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Platform_Options.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.Reserved)
            XCTAssertNil(cstruct.ProductId)
            XCTAssertNil(cstruct.SandboxId)
            XCTFail("TODO: cstruct.ClientCredentials")
            XCTAssertEqual(cstruct.bIsServer, .zero)
            XCTAssertNil(cstruct.EncryptionKey)
            XCTAssertNil(cstruct.OverrideCountryCode)
            XCTAssertNil(cstruct.OverrideLocaleCode)
            XCTAssertNil(cstruct.DeploymentId)
            XCTAssertEqual(cstruct.Flags, .zero)
            XCTAssertNil(cstruct.CacheDirectory)
            XCTAssertEqual(cstruct.TickBudgetInMilliseconds, .zero)
            XCTAssertNil(cstruct.RTCOptions)
            let swiftObject = try SwiftEOS_Platform_Options(sdkObject: cstruct) }
    }
}
