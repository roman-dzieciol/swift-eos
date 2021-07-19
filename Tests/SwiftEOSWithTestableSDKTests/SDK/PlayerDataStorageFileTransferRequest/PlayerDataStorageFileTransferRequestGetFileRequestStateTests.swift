import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_PlayerDataStorageFileTransferRequest_GetFileRequestStateTests: XCTestCase {
    public func testEOS_PlayerDataStorageFileTransferRequest_GetFileRequestState_Null() throws {
        TestGlobals.reset()
        __on_EOS_PlayerDataStorageFileTransferRequest_GetFileRequestState = { Handle in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            TestGlobals.sdkReceived.append("EOS_PlayerDataStorageFileTransferRequest_GetFileRequestState")
            return .init(rawValue: .zero)! }
        let object: SwiftEOS_PlayerDataStorageFileTransferRequest_Actor = SwiftEOS_PlayerDataStorageFileTransferRequest_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        try object.GetFileRequestState()
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_PlayerDataStorageFileTransferRequest_GetFileRequestState"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
