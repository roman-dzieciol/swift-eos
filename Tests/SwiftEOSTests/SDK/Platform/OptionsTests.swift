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
            XCTAssertNil(cstruct.ClientCredentials.ClientId)
            XCTAssertNil(cstruct.ClientCredentials.ClientSecret)
            XCTAssertEqual(cstruct.bIsServer, .zero)
            XCTAssertNil(cstruct.EncryptionKey)
            XCTAssertNil(cstruct.OverrideCountryCode)
            XCTAssertNil(cstruct.OverrideLocaleCode)
            XCTAssertNil(cstruct.DeploymentId)
            XCTAssertEqual(cstruct.Flags, .zero)
            XCTAssertNil(cstruct.CacheDirectory)
            XCTAssertEqual(cstruct.TickBudgetInMilliseconds, .zero)
            XCTAssertNil(cstruct.RTCOptions)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Platform_Options(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertNil(swiftObject.Reserved)
            XCTAssertNil(swiftObject.ProductId)
            XCTAssertNil(swiftObject.SandboxId)
            XCTAssertNil(swiftObject.ClientCredentials.ClientId)
            XCTAssertNil(swiftObject.ClientCredentials.ClientSecret)
            XCTAssertEqual(swiftObject.bIsServer, false)
            XCTAssertNil(swiftObject.EncryptionKey)
            XCTAssertNil(swiftObject.OverrideCountryCode)
            XCTAssertNil(swiftObject.OverrideLocaleCode)
            XCTAssertNil(swiftObject.DeploymentId)
            XCTAssertEqual(swiftObject.Flags, .zero)
            XCTAssertNil(swiftObject.CacheDirectory)
            XCTAssertEqual(swiftObject.TickBudgetInMilliseconds, .zero)
            XCTAssertNil(swiftObject.RTCOptions) }
    }
}
