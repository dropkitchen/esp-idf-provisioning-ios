// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: prov-shutdown.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that you are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

enum ProvShutdownStatus: SwiftProtobuf.Enum {
  typealias RawValue = Int
  case provShutdownSuccess // = 0
  case provShutdownFail // = 1
  case UNRECOGNIZED(Int)

  init() {
    self = .provShutdownSuccess
  }

  init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .provShutdownSuccess
    case 1: self = .provShutdownFail
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  var rawValue: Int {
    switch self {
    case .provShutdownSuccess: return 0
    case .provShutdownFail: return 1
    case .UNRECOGNIZED(let i): return i
    }
  }

}

#if swift(>=4.2)

extension ProvShutdownStatus: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  static var allCases: [ProvShutdownStatus] = [
    .provShutdownSuccess,
    .provShutdownFail,
  ]
}

#endif  // swift(>=4.2)

enum ProvShutdownMsgType: SwiftProtobuf.Enum {
  typealias RawValue = Int
  case typeCmdShutdown // = 0
  case typeRespShutdown // = 1
  case UNRECOGNIZED(Int)

  init() {
    self = .typeCmdShutdown
  }

  init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .typeCmdShutdown
    case 1: self = .typeRespShutdown
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  var rawValue: Int {
    switch self {
    case .typeCmdShutdown: return 0
    case .typeRespShutdown: return 1
    case .UNRECOGNIZED(let i): return i
    }
  }

}

#if swift(>=4.2)

extension ProvShutdownMsgType: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  static var allCases: [ProvShutdownMsgType] = [
    .typeCmdShutdown,
    .typeRespShutdown,
  ]
}

#endif  // swift(>=4.2)

struct ProvShutdownCmdShutdown {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var delay: Int32 = 0

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

struct ProvShutdownRespShutdown {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var status: ProvShutdownStatus = .provShutdownSuccess

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

struct ProvShutdownPayload {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var msg: ProvShutdownMsgType = .typeCmdShutdown

  var payload: ProvShutdownPayload.OneOf_Payload? = nil

  var cmdShutdown: ProvShutdownCmdShutdown {
    get {
      if case .cmdShutdown(let v)? = payload {return v}
      return ProvShutdownCmdShutdown()
    }
    set {payload = .cmdShutdown(newValue)}
  }

  var respShutdown: ProvShutdownRespShutdown {
    get {
      if case .respShutdown(let v)? = payload {return v}
      return ProvShutdownRespShutdown()
    }
    set {payload = .respShutdown(newValue)}
  }

  var unknownFields = SwiftProtobuf.UnknownStorage()

  enum OneOf_Payload: Equatable {
    case cmdShutdown(ProvShutdownCmdShutdown)
    case respShutdown(ProvShutdownRespShutdown)

  #if !swift(>=4.1)
    static func ==(lhs: ProvShutdownPayload.OneOf_Payload, rhs: ProvShutdownPayload.OneOf_Payload) -> Bool {
      switch (lhs, rhs) {
      case (.cmdShutdown(let l), .cmdShutdown(let r)): return l == r
      case (.respShutdown(let l), .respShutdown(let r)): return l == r
      default: return false
      }
    }
  #endif
  }

  init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

extension ProvShutdownStatus: SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "ProvShutdownSuccess"),
    1: .same(proto: "ProvShutdownFail"),
  ]
}

extension ProvShutdownMsgType: SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "TypeCmdShutdown"),
    1: .same(proto: "TypeRespShutdown"),
  ]
}

extension ProvShutdownCmdShutdown: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = "ProvShutdownCmdShutdown"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "delay"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularInt32Field(value: &self.delay)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.delay != 0 {
      try visitor.visitSingularInt32Field(value: self.delay, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: ProvShutdownCmdShutdown, rhs: ProvShutdownCmdShutdown) -> Bool {
    if lhs.delay != rhs.delay {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension ProvShutdownRespShutdown: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = "ProvShutdownRespShutdown"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "status"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularEnumField(value: &self.status)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.status != .provShutdownSuccess {
      try visitor.visitSingularEnumField(value: self.status, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: ProvShutdownRespShutdown, rhs: ProvShutdownRespShutdown) -> Bool {
    if lhs.status != rhs.status {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension ProvShutdownPayload: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = "ProvShutdownPayload"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "msg"),
    10: .standard(proto: "cmd_shutdown"),
    11: .standard(proto: "resp_shutdown"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularEnumField(value: &self.msg)
      case 10:
        var v: ProvShutdownCmdShutdown?
        if let current = self.payload {
          try decoder.handleConflictingOneOf()
          if case .cmdShutdown(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {self.payload = .cmdShutdown(v)}
      case 11:
        var v: ProvShutdownRespShutdown?
        if let current = self.payload {
          try decoder.handleConflictingOneOf()
          if case .respShutdown(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {self.payload = .respShutdown(v)}
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.msg != .typeCmdShutdown {
      try visitor.visitSingularEnumField(value: self.msg, fieldNumber: 1)
    }
    switch self.payload {
    case .cmdShutdown(let v)?:
      try visitor.visitSingularMessageField(value: v, fieldNumber: 10)
    case .respShutdown(let v)?:
      try visitor.visitSingularMessageField(value: v, fieldNumber: 11)
    case nil: break
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: ProvShutdownPayload, rhs: ProvShutdownPayload) -> Bool {
    if lhs.msg != rhs.msg {return false}
    if lhs.payload != rhs.payload {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
