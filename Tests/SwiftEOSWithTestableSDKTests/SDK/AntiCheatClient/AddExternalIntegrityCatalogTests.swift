import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_AntiCheatClient_AddExternalIntegrityCatalogTests: XCTestCase {
    public func testEOS_AntiCheatClient_AddExternalIntegrityCatalog_Null() throws {
        TestGlobals.reset()
        __on_EOS_AntiCheatClient_AddExternalIntegrityCatalog = { Handle, Options in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(Options!.pointee.PathToBinFile)
            TestGlobals.sdkReceived.append("EOS_AntiCheatClient_AddExternalIntegrityCatalog")
            return .init(rawValue: .zero)! }
        let object: SwiftEOS_AntiCheatClient_Actor = SwiftEOS_AntiCheatClient_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        try object.AddExternalIntegrityCatalog(PathToBinFile: nil)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_AntiCheatClient_AddExternalIntegrityCatalog"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
