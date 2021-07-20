import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_AntiCheatClient_AddExternalIntegrityCatalogTests: XCTestCase {
    public func testEOS_AntiCheatClient_AddExternalIntegrityCatalog_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_AntiCheatClient_AddExternalIntegrityCatalog = { Handle, Options in
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_ANTICHEATCLIENT_ADDEXTERNALINTEGRITYCATALOG_API_LATEST)
                XCTAssertNil(Options!.pointee.PathToBinFile)
                TestGlobals.current.sdkReceived.append("EOS_AntiCheatClient_AddExternalIntegrityCatalog")
                return .zero
            }
            defer { __on_EOS_AntiCheatClient_AddExternalIntegrityCatalog = nil }
            
            // Given Actor
            let object: SwiftEOS_AntiCheatClient_Actor = SwiftEOS_AntiCheatClient_Actor(Handle: nil)
            
            // When SDK function is called
            try object.AddExternalIntegrityCatalog(PathToBinFile: nil)
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_AntiCheatClient_AddExternalIntegrityCatalog"])
        }
        
        // Then
        XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_AntiCheatClient_AddExternalIntegrityCatalog"])
    }
}
