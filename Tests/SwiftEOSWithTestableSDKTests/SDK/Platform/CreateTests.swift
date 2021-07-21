import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Platform_CreateTests: XCTestCase {
    public func testEOS_Platform_Create_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_Platform_Create = { Options in
                GTest.current.sdkReceived.append("EOS_Platform_Create")
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_PLATFORM_OPTIONS_API_LATEST)
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
                return nil
            }
            defer { __on_EOS_Platform_Create = nil }
            
            // When SDK function is called
            let result: EOS_HPlatform? = try SwiftEOS_Platform_Create(Options: SwiftEOS_Platform_Options(
                    ApiVersion: EOS_PLATFORM_OPTIONS_API_LATEST,
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
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Platform_Create"])
            XCTAssertNil(result)
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Platform_Create"])
    }
}
