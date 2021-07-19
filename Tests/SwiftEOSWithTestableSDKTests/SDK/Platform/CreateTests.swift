import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Platform_CreateTests: XCTestCase {
    public func testEOS_Platform_Create_Null() throws {
        TestGlobals.reset()
        __on_EOS_Platform_Create = { Options in
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(Options!.pointee.Reserved)
            XCTAssertNil(Options!.pointee.ProductId)
            XCTAssertNil(Options!.pointee.SandboxId)
            XCTAssertNil(Options!.pointee.ClientCredentials.ClientId)
            XCTAssertNil(Options!.pointee.ClientCredentials.ClientSecret)
            XCTAssertEqual(Options!.pointee.bIsServer, .zero)
            XCTAssertNil(Options!.pointee.EncryptionKey)
            XCTAssertNil(Options!.pointee.OverrideCountryCode)
            XCTAssertNil(Options!.pointee.OverrideLocaleCode)
            XCTAssertNil(Options!.pointee.DeploymentId)
            XCTAssertEqual(Options!.pointee.Flags, .zero)
            XCTAssertNil(Options!.pointee.CacheDirectory)
            XCTAssertEqual(Options!.pointee.TickBudgetInMilliseconds, .zero)
            XCTAssertNil(Options!.pointee.RTCOptions)
            TestGlobals.sdkReceived.append("EOS_Platform_Create")
            return OpaquePointer(bitPattern: Int(1))! }
        let result: EOS_HPlatform = try SwiftEOS_Platform_Create(Options: SwiftEOS_Platform_Options(
                ApiVersion: .zero,
                Reserved: nil,
                ProductId: nil,
                SandboxId: nil,
                ClientCredentials: SwiftEOS_Platform_ClientCredentials(
                    ClientId: nil,
                    ClientSecret: nil
                ),
                bIsServer: false,
                EncryptionKey: nil,
                OverrideCountryCode: nil,
                OverrideLocaleCode: nil,
                DeploymentId: nil,
                Flags: .zero,
                CacheDirectory: nil,
                TickBudgetInMilliseconds: .zero,
                RTCOptions: nil
            ))
        XCTAssertNil(result)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_Platform_Create"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
