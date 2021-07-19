import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_LobbyDetails_CopyInfoTests: XCTestCase {
    public func testEOS_LobbyDetails_CopyInfo_Null() throws {
        TestGlobals.reset()
        __on_EOS_LobbyDetails_CopyInfo = { Handle, Options, OutLobbyDetailsInfo in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(OutLobbyDetailsInfo)
            TestGlobals.sdkReceived.append("EOS_LobbyDetails_CopyInfo")
            return .init(rawValue: .zero)! }
        let object: SwiftEOS_LobbyDetails_Actor = SwiftEOS_LobbyDetails_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: SwiftEOS_LobbyDetails_Info? = try object.CopyInfo()
        XCTAssertNil(result)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_LobbyDetails_CopyInfo"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
