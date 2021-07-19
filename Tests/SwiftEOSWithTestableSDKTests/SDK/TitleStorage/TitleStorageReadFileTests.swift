import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_TitleStorage_ReadFileTests: XCTestCase {
    public func testEOS_TitleStorage_ReadFile_Null() throws {
        TestGlobals.reset()
        __on_EOS_TitleStorage_ReadFile = { Handle, Options, ClientData, CompletionCallback in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(Options!.pointee.LocalUserId)
            XCTAssertNil(Options!.pointee.Filename)
            XCTAssertEqual(Options!.pointee.ReadChunkLengthBytes, .zero)
            XCTAssertNil(Options!.pointee.ReadFileDataCallback)
            XCTAssertNil(Options!.pointee.FileTransferProgressCallback)
            XCTAssertNil(ClientData)
            CompletionCallback?(nil)
            TestGlobals.sdkReceived.append("EOS_TitleStorage_ReadFile")
            return OpaquePointer(bitPattern: Int(1))! }
        let object: SwiftEOS_TitleStorage_Actor = SwiftEOS_TitleStorage_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: EOS_HTitleStorageFileTransferRequest = try object.ReadFile(
            LocalUserId: nil,
            Filename: nil,
            ReadChunkLengthBytes: .zero,
            ReadFileDataCallback: nil,
            FileTransferProgressCallback: nil,
            CompletionCallback: { arg0 in
                XCTAssertEqual(arg0.ResultCode, .init(rawValue: .zero)!)
                XCTAssertNil(arg0.LocalUserId)
                XCTAssertNil(arg0.Filename)
                TestGlobals.swiftReceived.append("CompletionCallback") }
        )
        XCTAssertNil(result)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_TitleStorage_ReadFile"])
        XCTAssertEqual(TestGlobals.swiftReceived, ["ReadFileDataCallback", "FileTransferProgressCallback", "CompletionCallback"])
    }
}
