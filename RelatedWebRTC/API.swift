// @generated
//  This file was automatically generated and should not be edited.

import Apollo
import Foundation

public final class InsertFriendMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation InsertFriend($objectId: String!, $userId: String!, $friendId: String!, $isDeleted: Boolean!, $createdAt: Int!, $updatedAt: Int!) {
      insertFriend(objectId: $objectId, userId: $userId, friendId: $friendId, isDeleted: $isDeleted, createdAt: $createdAt, updatedAt: $updatedAt) {
        __typename
        objectId
        userId
        friendId
        isDeleted
        createdAt
        updatedAt
      }
    }
    """

  public let operationName: String = "InsertFriend"

  public var objectId: String
  public var userId: String
  public var friendId: String
  public var isDeleted: Bool
  public var createdAt: Int
  public var updatedAt: Int

  public init(objectId: String, userId: String, friendId: String, isDeleted: Bool, createdAt: Int, updatedAt: Int) {
    self.objectId = objectId
    self.userId = userId
    self.friendId = friendId
    self.isDeleted = isDeleted
    self.createdAt = createdAt
    self.updatedAt = updatedAt
  }

  public var variables: GraphQLMap? {
    return ["objectId": objectId, "userId": userId, "friendId": friendId, "isDeleted": isDeleted, "createdAt": createdAt, "updatedAt": updatedAt]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("insertFriend", arguments: ["objectId": GraphQLVariable("objectId"), "userId": GraphQLVariable("userId"), "friendId": GraphQLVariable("friendId"), "isDeleted": GraphQLVariable("isDeleted"), "createdAt": GraphQLVariable("createdAt"), "updatedAt": GraphQLVariable("updatedAt")], type: .nonNull(.object(InsertFriend.selections))),
    ]

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(insertFriend: InsertFriend) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "insertFriend": insertFriend.resultMap])
    }

    public var insertFriend: InsertFriend {
      get {
        return InsertFriend(unsafeResultMap: resultMap["insertFriend"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "insertFriend")
      }
    }

    public struct InsertFriend: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Friend"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("objectId", type: .nonNull(.scalar(String.self))),
        GraphQLField("userId", type: .nonNull(.scalar(String.self))),
        GraphQLField("friendId", type: .nonNull(.scalar(String.self))),
        GraphQLField("isDeleted", type: .nonNull(.scalar(Bool.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(Int.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(Int.self))),
      ]

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(objectId: String, userId: String, friendId: String, isDeleted: Bool, createdAt: Int, updatedAt: Int) {
        self.init(unsafeResultMap: ["__typename": "Friend", "objectId": objectId, "userId": userId, "friendId": friendId, "isDeleted": isDeleted, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var objectId: String {
        get {
          return resultMap["objectId"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "objectId")
        }
      }

      public var userId: String {
        get {
          return resultMap["userId"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "userId")
        }
      }

      public var friendId: String {
        get {
          return resultMap["friendId"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "friendId")
        }
      }

      public var isDeleted: Bool {
        get {
          return resultMap["isDeleted"]! as! Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "isDeleted")
        }
      }

      public var createdAt: Int {
        get {
          return resultMap["createdAt"]! as! Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: Int {
        get {
          return resultMap["updatedAt"]! as! Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class UpdateFriendMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation UpdateFriend($objectId: String!, $userId: String!, $friendId: String!, $isDeleted: Boolean!, $createdAt: Int!, $updatedAt: Int!) {
      updateFriend(objectId: $objectId, userId: $userId, friendId: $friendId, isDeleted: $isDeleted, createdAt: $createdAt, updatedAt: $updatedAt) {
        __typename
        objectId
        userId
        friendId
        isDeleted
        createdAt
        updatedAt
      }
    }
    """

  public let operationName: String = "UpdateFriend"

  public var objectId: String
  public var userId: String
  public var friendId: String
  public var isDeleted: Bool
  public var createdAt: Int
  public var updatedAt: Int

  public init(objectId: String, userId: String, friendId: String, isDeleted: Bool, createdAt: Int, updatedAt: Int) {
    self.objectId = objectId
    self.userId = userId
    self.friendId = friendId
    self.isDeleted = isDeleted
    self.createdAt = createdAt
    self.updatedAt = updatedAt
  }

  public var variables: GraphQLMap? {
    return ["objectId": objectId, "userId": userId, "friendId": friendId, "isDeleted": isDeleted, "createdAt": createdAt, "updatedAt": updatedAt]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("updateFriend", arguments: ["objectId": GraphQLVariable("objectId"), "userId": GraphQLVariable("userId"), "friendId": GraphQLVariable("friendId"), "isDeleted": GraphQLVariable("isDeleted"), "createdAt": GraphQLVariable("createdAt"), "updatedAt": GraphQLVariable("updatedAt")], type: .nonNull(.object(UpdateFriend.selections))),
    ]

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(updateFriend: UpdateFriend) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "updateFriend": updateFriend.resultMap])
    }

    public var updateFriend: UpdateFriend {
      get {
        return UpdateFriend(unsafeResultMap: resultMap["updateFriend"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "updateFriend")
      }
    }

    public struct UpdateFriend: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Friend"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("objectId", type: .nonNull(.scalar(String.self))),
        GraphQLField("userId", type: .nonNull(.scalar(String.self))),
        GraphQLField("friendId", type: .nonNull(.scalar(String.self))),
        GraphQLField("isDeleted", type: .nonNull(.scalar(Bool.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(Int.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(Int.self))),
      ]

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(objectId: String, userId: String, friendId: String, isDeleted: Bool, createdAt: Int, updatedAt: Int) {
        self.init(unsafeResultMap: ["__typename": "Friend", "objectId": objectId, "userId": userId, "friendId": friendId, "isDeleted": isDeleted, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var objectId: String {
        get {
          return resultMap["objectId"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "objectId")
        }
      }

      public var userId: String {
        get {
          return resultMap["userId"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "userId")
        }
      }

      public var friendId: String {
        get {
          return resultMap["friendId"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "friendId")
        }
      }

      public var isDeleted: Bool {
        get {
          return resultMap["isDeleted"]! as! Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "isDeleted")
        }
      }

      public var createdAt: Int {
        get {
          return resultMap["createdAt"]! as! Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: Int {
        get {
          return resultMap["updatedAt"]! as! Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class InsertPersonMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation InsertPerson($email: String!, $phone: String!, $firstname: String!, $lastname: String!, $fullname: String!, $country: String!, $location: String!, $pictureAt: Int!, $status: String!, $keepMedia: Int!, $networkPhoto: Int!, $networkVideo: Int!, $networkAudio: Int!, $wallpaper: String!, $loginMethod: String!, $oneSignalId: String!, $lastActive: Int!, $lastTerminate: Int!, $createdAt: Int!, $updatedAt: Int!) {
      insertPerson(email: $email, phone: $phone, firstname: $firstname, lastname: $lastname, fullname: $fullname, country: $country, location: $location, pictureAt: $pictureAt, status: $status, keepMedia: $keepMedia, networkPhoto: $networkPhoto, networkVideo: $networkVideo, networkAudio: $networkAudio, wallpaper: $wallpaper, loginMethod: $loginMethod, oneSignalId: $oneSignalId, lastActive: $lastActive, lastTerminate: $lastTerminate, createdAt: $createdAt, updatedAt: $updatedAt) {
        __typename
        email
        phone
        firstname
        lastname
        fullname
        country
        location
        pictureAt
        status
        keepMedia
        networkPhoto
        networkVideo
        networkAudio
        wallpaper
        loginMethod
        oneSignalId
        lastActive
        lastTerminate
        createdAt
        updatedAt
      }
    }
    """

  public let operationName: String = "InsertPerson"

  public var email: String
  public var phone: String
  public var firstname: String
  public var lastname: String
  public var fullname: String
  public var country: String
  public var location: String
  public var pictureAt: Int
  public var status: String
  public var keepMedia: Int
  public var networkPhoto: Int
  public var networkVideo: Int
  public var networkAudio: Int
  public var wallpaper: String
  public var loginMethod: String
  public var oneSignalId: String
  public var lastActive: Int
  public var lastTerminate: Int
  public var createdAt: Int
  public var updatedAt: Int

  public init(email: String, phone: String, firstname: String, lastname: String, fullname: String, country: String, location: String, pictureAt: Int, status: String, keepMedia: Int, networkPhoto: Int, networkVideo: Int, networkAudio: Int, wallpaper: String, loginMethod: String, oneSignalId: String, lastActive: Int, lastTerminate: Int, createdAt: Int, updatedAt: Int) {
    self.email = email
    self.phone = phone
    self.firstname = firstname
    self.lastname = lastname
    self.fullname = fullname
    self.country = country
    self.location = location
    self.pictureAt = pictureAt
    self.status = status
    self.keepMedia = keepMedia
    self.networkPhoto = networkPhoto
    self.networkVideo = networkVideo
    self.networkAudio = networkAudio
    self.wallpaper = wallpaper
    self.loginMethod = loginMethod
    self.oneSignalId = oneSignalId
    self.lastActive = lastActive
    self.lastTerminate = lastTerminate
    self.createdAt = createdAt
    self.updatedAt = updatedAt
  }

  public var variables: GraphQLMap? {
    return ["email": email, "phone": phone, "firstname": firstname, "lastname": lastname, "fullname": fullname, "country": country, "location": location, "pictureAt": pictureAt, "status": status, "keepMedia": keepMedia, "networkPhoto": networkPhoto, "networkVideo": networkVideo, "networkAudio": networkAudio, "wallpaper": wallpaper, "loginMethod": loginMethod, "oneSignalId": oneSignalId, "lastActive": lastActive, "lastTerminate": lastTerminate, "createdAt": createdAt, "updatedAt": updatedAt]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("insertPerson", arguments: ["email": GraphQLVariable("email"), "phone": GraphQLVariable("phone"), "firstname": GraphQLVariable("firstname"), "lastname": GraphQLVariable("lastname"), "fullname": GraphQLVariable("fullname"), "country": GraphQLVariable("country"), "location": GraphQLVariable("location"), "pictureAt": GraphQLVariable("pictureAt"), "status": GraphQLVariable("status"), "keepMedia": GraphQLVariable("keepMedia"), "networkPhoto": GraphQLVariable("networkPhoto"), "networkVideo": GraphQLVariable("networkVideo"), "networkAudio": GraphQLVariable("networkAudio"), "wallpaper": GraphQLVariable("wallpaper"), "loginMethod": GraphQLVariable("loginMethod"), "oneSignalId": GraphQLVariable("oneSignalId"), "lastActive": GraphQLVariable("lastActive"), "lastTerminate": GraphQLVariable("lastTerminate"), "createdAt": GraphQLVariable("createdAt"), "updatedAt": GraphQLVariable("updatedAt")], type: .nonNull(.object(InsertPerson.selections))),
    ]

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(insertPerson: InsertPerson) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "insertPerson": insertPerson.resultMap])
    }

    public var insertPerson: InsertPerson {
      get {
        return InsertPerson(unsafeResultMap: resultMap["insertPerson"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "insertPerson")
      }
    }

    public struct InsertPerson: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Person"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("email", type: .nonNull(.scalar(String.self))),
        GraphQLField("phone", type: .nonNull(.scalar(String.self))),
        GraphQLField("firstname", type: .nonNull(.scalar(String.self))),
        GraphQLField("lastname", type: .nonNull(.scalar(String.self))),
        GraphQLField("fullname", type: .nonNull(.scalar(String.self))),
        GraphQLField("country", type: .nonNull(.scalar(String.self))),
        GraphQLField("location", type: .nonNull(.scalar(String.self))),
        GraphQLField("pictureAt", type: .nonNull(.scalar(Int.self))),
        GraphQLField("status", type: .nonNull(.scalar(String.self))),
        GraphQLField("keepMedia", type: .nonNull(.scalar(Int.self))),
        GraphQLField("networkPhoto", type: .nonNull(.scalar(Int.self))),
        GraphQLField("networkVideo", type: .nonNull(.scalar(Int.self))),
        GraphQLField("networkAudio", type: .nonNull(.scalar(Int.self))),
        GraphQLField("wallpaper", type: .nonNull(.scalar(String.self))),
        GraphQLField("loginMethod", type: .nonNull(.scalar(String.self))),
        GraphQLField("oneSignalId", type: .nonNull(.scalar(String.self))),
        GraphQLField("lastActive", type: .nonNull(.scalar(Int.self))),
        GraphQLField("lastTerminate", type: .nonNull(.scalar(Int.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(Int.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(Int.self))),
      ]

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(email: String, phone: String, firstname: String, lastname: String, fullname: String, country: String, location: String, pictureAt: Int, status: String, keepMedia: Int, networkPhoto: Int, networkVideo: Int, networkAudio: Int, wallpaper: String, loginMethod: String, oneSignalId: String, lastActive: Int, lastTerminate: Int, createdAt: Int, updatedAt: Int) {
        self.init(unsafeResultMap: ["__typename": "Person", "email": email, "phone": phone, "firstname": firstname, "lastname": lastname, "fullname": fullname, "country": country, "location": location, "pictureAt": pictureAt, "status": status, "keepMedia": keepMedia, "networkPhoto": networkPhoto, "networkVideo": networkVideo, "networkAudio": networkAudio, "wallpaper": wallpaper, "loginMethod": loginMethod, "oneSignalId": oneSignalId, "lastActive": lastActive, "lastTerminate": lastTerminate, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var email: String {
        get {
          return resultMap["email"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "email")
        }
      }

      public var phone: String {
        get {
          return resultMap["phone"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "phone")
        }
      }

      public var firstname: String {
        get {
          return resultMap["firstname"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "firstname")
        }
      }

      public var lastname: String {
        get {
          return resultMap["lastname"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "lastname")
        }
      }

      public var fullname: String {
        get {
          return resultMap["fullname"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "fullname")
        }
      }

      public var country: String {
        get {
          return resultMap["country"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "country")
        }
      }

      public var location: String {
        get {
          return resultMap["location"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "location")
        }
      }

      public var pictureAt: Int {
        get {
          return resultMap["pictureAt"]! as! Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "pictureAt")
        }
      }

      public var status: String {
        get {
          return resultMap["status"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "status")
        }
      }

      public var keepMedia: Int {
        get {
          return resultMap["keepMedia"]! as! Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "keepMedia")
        }
      }

      public var networkPhoto: Int {
        get {
          return resultMap["networkPhoto"]! as! Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "networkPhoto")
        }
      }

      public var networkVideo: Int {
        get {
          return resultMap["networkVideo"]! as! Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "networkVideo")
        }
      }

      public var networkAudio: Int {
        get {
          return resultMap["networkAudio"]! as! Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "networkAudio")
        }
      }

      public var wallpaper: String {
        get {
          return resultMap["wallpaper"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "wallpaper")
        }
      }

      public var loginMethod: String {
        get {
          return resultMap["loginMethod"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "loginMethod")
        }
      }

      public var oneSignalId: String {
        get {
          return resultMap["oneSignalId"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "oneSignalId")
        }
      }

      public var lastActive: Int {
        get {
          return resultMap["lastActive"]! as! Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "lastActive")
        }
      }

      public var lastTerminate: Int {
        get {
          return resultMap["lastTerminate"]! as! Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "lastTerminate")
        }
      }

      public var createdAt: Int {
        get {
          return resultMap["createdAt"]! as! Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: Int {
        get {
          return resultMap["updatedAt"]! as! Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class UpdatePersonMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation UpdatePerson($email: String!, $phone: String!, $firstname: String!, $lastname: String!, $fullname: String!, $country: String!, $location: String!, $pictureAt: Int!, $status: String!, $keepMedia: Int!, $networkPhoto: Int!, $networkVideo: Int!, $networkAudio: Int!, $wallpaper: String!, $loginMethod: String!, $oneSignalId: String!, $lastActive: Int!, $lastTerminate: Int!, $createdAt: Int!, $updatedAt: Int!) {
      updatePerson(email: $email, phone: $phone, firstname: $firstname, lastname: $lastname, fullname: $fullname, country: $country, location: $location, pictureAt: $pictureAt, status: $status, keepMedia: $keepMedia, networkPhoto: $networkPhoto, networkVideo: $networkVideo, networkAudio: $networkAudio, wallpaper: $wallpaper, loginMethod: $loginMethod, oneSignalId: $oneSignalId, lastActive: $lastActive, lastTerminate: $lastTerminate, createdAt: $createdAt, updatedAt: $updatedAt) {
        __typename
        email
        phone
        firstname
        lastname
        fullname
        country
        location
        pictureAt
        status
        keepMedia
        networkPhoto
        networkVideo
        networkAudio
        wallpaper
        loginMethod
        oneSignalId
        lastActive
        lastTerminate
        createdAt
        updatedAt
      }
    }
    """

  public let operationName: String = "UpdatePerson"

  public var email: String
  public var phone: String
  public var firstname: String
  public var lastname: String
  public var fullname: String
  public var country: String
  public var location: String
  public var pictureAt: Int
  public var status: String
  public var keepMedia: Int
  public var networkPhoto: Int
  public var networkVideo: Int
  public var networkAudio: Int
  public var wallpaper: String
  public var loginMethod: String
  public var oneSignalId: String
  public var lastActive: Int
  public var lastTerminate: Int
  public var createdAt: Int
  public var updatedAt: Int

  public init(email: String, phone: String, firstname: String, lastname: String, fullname: String, country: String, location: String, pictureAt: Int, status: String, keepMedia: Int, networkPhoto: Int, networkVideo: Int, networkAudio: Int, wallpaper: String, loginMethod: String, oneSignalId: String, lastActive: Int, lastTerminate: Int, createdAt: Int, updatedAt: Int) {
    self.email = email
    self.phone = phone
    self.firstname = firstname
    self.lastname = lastname
    self.fullname = fullname
    self.country = country
    self.location = location
    self.pictureAt = pictureAt
    self.status = status
    self.keepMedia = keepMedia
    self.networkPhoto = networkPhoto
    self.networkVideo = networkVideo
    self.networkAudio = networkAudio
    self.wallpaper = wallpaper
    self.loginMethod = loginMethod
    self.oneSignalId = oneSignalId
    self.lastActive = lastActive
    self.lastTerminate = lastTerminate
    self.createdAt = createdAt
    self.updatedAt = updatedAt
  }

  public var variables: GraphQLMap? {
    return ["email": email, "phone": phone, "firstname": firstname, "lastname": lastname, "fullname": fullname, "country": country, "location": location, "pictureAt": pictureAt, "status": status, "keepMedia": keepMedia, "networkPhoto": networkPhoto, "networkVideo": networkVideo, "networkAudio": networkAudio, "wallpaper": wallpaper, "loginMethod": loginMethod, "oneSignalId": oneSignalId, "lastActive": lastActive, "lastTerminate": lastTerminate, "createdAt": createdAt, "updatedAt": updatedAt]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("updatePerson", arguments: ["email": GraphQLVariable("email"), "phone": GraphQLVariable("phone"), "firstname": GraphQLVariable("firstname"), "lastname": GraphQLVariable("lastname"), "fullname": GraphQLVariable("fullname"), "country": GraphQLVariable("country"), "location": GraphQLVariable("location"), "pictureAt": GraphQLVariable("pictureAt"), "status": GraphQLVariable("status"), "keepMedia": GraphQLVariable("keepMedia"), "networkPhoto": GraphQLVariable("networkPhoto"), "networkVideo": GraphQLVariable("networkVideo"), "networkAudio": GraphQLVariable("networkAudio"), "wallpaper": GraphQLVariable("wallpaper"), "loginMethod": GraphQLVariable("loginMethod"), "oneSignalId": GraphQLVariable("oneSignalId"), "lastActive": GraphQLVariable("lastActive"), "lastTerminate": GraphQLVariable("lastTerminate"), "createdAt": GraphQLVariable("createdAt"), "updatedAt": GraphQLVariable("updatedAt")], type: .nonNull(.object(UpdatePerson.selections))),
    ]

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(updatePerson: UpdatePerson) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "updatePerson": updatePerson.resultMap])
    }

    public var updatePerson: UpdatePerson {
      get {
        return UpdatePerson(unsafeResultMap: resultMap["updatePerson"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "updatePerson")
      }
    }

    public struct UpdatePerson: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Person"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("email", type: .nonNull(.scalar(String.self))),
        GraphQLField("phone", type: .nonNull(.scalar(String.self))),
        GraphQLField("firstname", type: .nonNull(.scalar(String.self))),
        GraphQLField("lastname", type: .nonNull(.scalar(String.self))),
        GraphQLField("fullname", type: .nonNull(.scalar(String.self))),
        GraphQLField("country", type: .nonNull(.scalar(String.self))),
        GraphQLField("location", type: .nonNull(.scalar(String.self))),
        GraphQLField("pictureAt", type: .nonNull(.scalar(Int.self))),
        GraphQLField("status", type: .nonNull(.scalar(String.self))),
        GraphQLField("keepMedia", type: .nonNull(.scalar(Int.self))),
        GraphQLField("networkPhoto", type: .nonNull(.scalar(Int.self))),
        GraphQLField("networkVideo", type: .nonNull(.scalar(Int.self))),
        GraphQLField("networkAudio", type: .nonNull(.scalar(Int.self))),
        GraphQLField("wallpaper", type: .nonNull(.scalar(String.self))),
        GraphQLField("loginMethod", type: .nonNull(.scalar(String.self))),
        GraphQLField("oneSignalId", type: .nonNull(.scalar(String.self))),
        GraphQLField("lastActive", type: .nonNull(.scalar(Int.self))),
        GraphQLField("lastTerminate", type: .nonNull(.scalar(Int.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(Int.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(Int.self))),
      ]

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(email: String, phone: String, firstname: String, lastname: String, fullname: String, country: String, location: String, pictureAt: Int, status: String, keepMedia: Int, networkPhoto: Int, networkVideo: Int, networkAudio: Int, wallpaper: String, loginMethod: String, oneSignalId: String, lastActive: Int, lastTerminate: Int, createdAt: Int, updatedAt: Int) {
        self.init(unsafeResultMap: ["__typename": "Person", "email": email, "phone": phone, "firstname": firstname, "lastname": lastname, "fullname": fullname, "country": country, "location": location, "pictureAt": pictureAt, "status": status, "keepMedia": keepMedia, "networkPhoto": networkPhoto, "networkVideo": networkVideo, "networkAudio": networkAudio, "wallpaper": wallpaper, "loginMethod": loginMethod, "oneSignalId": oneSignalId, "lastActive": lastActive, "lastTerminate": lastTerminate, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var email: String {
        get {
          return resultMap["email"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "email")
        }
      }

      public var phone: String {
        get {
          return resultMap["phone"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "phone")
        }
      }

      public var firstname: String {
        get {
          return resultMap["firstname"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "firstname")
        }
      }

      public var lastname: String {
        get {
          return resultMap["lastname"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "lastname")
        }
      }

      public var fullname: String {
        get {
          return resultMap["fullname"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "fullname")
        }
      }

      public var country: String {
        get {
          return resultMap["country"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "country")
        }
      }

      public var location: String {
        get {
          return resultMap["location"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "location")
        }
      }

      public var pictureAt: Int {
        get {
          return resultMap["pictureAt"]! as! Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "pictureAt")
        }
      }

      public var status: String {
        get {
          return resultMap["status"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "status")
        }
      }

      public var keepMedia: Int {
        get {
          return resultMap["keepMedia"]! as! Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "keepMedia")
        }
      }

      public var networkPhoto: Int {
        get {
          return resultMap["networkPhoto"]! as! Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "networkPhoto")
        }
      }

      public var networkVideo: Int {
        get {
          return resultMap["networkVideo"]! as! Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "networkVideo")
        }
      }

      public var networkAudio: Int {
        get {
          return resultMap["networkAudio"]! as! Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "networkAudio")
        }
      }

      public var wallpaper: String {
        get {
          return resultMap["wallpaper"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "wallpaper")
        }
      }

      public var loginMethod: String {
        get {
          return resultMap["loginMethod"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "loginMethod")
        }
      }

      public var oneSignalId: String {
        get {
          return resultMap["oneSignalId"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "oneSignalId")
        }
      }

      public var lastActive: Int {
        get {
          return resultMap["lastActive"]! as! Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "lastActive")
        }
      }

      public var lastTerminate: Int {
        get {
          return resultMap["lastTerminate"]! as! Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "lastTerminate")
        }
      }

      public var createdAt: Int {
        get {
          return resultMap["createdAt"]! as! Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: Int {
        get {
          return resultMap["updatedAt"]! as! Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class InsertBlockedMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation InsertBlocked($objectId: String!, $blockerId: String!, $blockedId: String!, $isDeleted: Boolean!, $createdAt: Int!, $updatedAt: Int!) {
      insertBlocked(objectId: $objectId, blockerId: $blockerId, blockedId: $blockedId, isDeleted: $isDeleted, createdAt: $createdAt, updatedAt: $updatedAt) {
        __typename
        objectId
        blockerId
        blockedId
        isDeleted
        createdAt
        updatedAt
      }
    }
    """

  public let operationName: String = "InsertBlocked"

  public var objectId: String
  public var blockerId: String
  public var blockedId: String
  public var isDeleted: Bool
  public var createdAt: Int
  public var updatedAt: Int

  public init(objectId: String, blockerId: String, blockedId: String, isDeleted: Bool, createdAt: Int, updatedAt: Int) {
    self.objectId = objectId
    self.blockerId = blockerId
    self.blockedId = blockedId
    self.isDeleted = isDeleted
    self.createdAt = createdAt
    self.updatedAt = updatedAt
  }

  public var variables: GraphQLMap? {
    return ["objectId": objectId, "blockerId": blockerId, "blockedId": blockedId, "isDeleted": isDeleted, "createdAt": createdAt, "updatedAt": updatedAt]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("insertBlocked", arguments: ["objectId": GraphQLVariable("objectId"), "blockerId": GraphQLVariable("blockerId"), "blockedId": GraphQLVariable("blockedId"), "isDeleted": GraphQLVariable("isDeleted"), "createdAt": GraphQLVariable("createdAt"), "updatedAt": GraphQLVariable("updatedAt")], type: .nonNull(.object(InsertBlocked.selections))),
    ]

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(insertBlocked: InsertBlocked) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "insertBlocked": insertBlocked.resultMap])
    }

    public var insertBlocked: InsertBlocked {
      get {
        return InsertBlocked(unsafeResultMap: resultMap["insertBlocked"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "insertBlocked")
      }
    }

    public struct InsertBlocked: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Blocked"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("objectId", type: .nonNull(.scalar(String.self))),
        GraphQLField("blockerId", type: .nonNull(.scalar(String.self))),
        GraphQLField("blockedId", type: .nonNull(.scalar(String.self))),
        GraphQLField("isDeleted", type: .nonNull(.scalar(Bool.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(Int.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(Int.self))),
      ]

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(objectId: String, blockerId: String, blockedId: String, isDeleted: Bool, createdAt: Int, updatedAt: Int) {
        self.init(unsafeResultMap: ["__typename": "Blocked", "objectId": objectId, "blockerId": blockerId, "blockedId": blockedId, "isDeleted": isDeleted, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var objectId: String {
        get {
          return resultMap["objectId"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "objectId")
        }
      }

      public var blockerId: String {
        get {
          return resultMap["blockerId"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "blockerId")
        }
      }

      public var blockedId: String {
        get {
          return resultMap["blockedId"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "blockedId")
        }
      }

      public var isDeleted: Bool {
        get {
          return resultMap["isDeleted"]! as! Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "isDeleted")
        }
      }

      public var createdAt: Int {
        get {
          return resultMap["createdAt"]! as! Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: Int {
        get {
          return resultMap["updatedAt"]! as! Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class UpdateBlockedMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation UpdateBlocked($objectId: String!, $blockerId: String!, $blockedId: String!, $isDeleted: Boolean!, $createdAt: Int!, $updatedAt: Int!) {
      updateBlocked(objectId: $objectId, blockerId: $blockerId, blockedId: $blockedId, isDeleted: $isDeleted, createdAt: $createdAt, updatedAt: $updatedAt) {
        __typename
        objectId
        blockerId
        blockedId
        isDeleted
        createdAt
        updatedAt
      }
    }
    """

  public let operationName: String = "UpdateBlocked"

  public var objectId: String
  public var blockerId: String
  public var blockedId: String
  public var isDeleted: Bool
  public var createdAt: Int
  public var updatedAt: Int

  public init(objectId: String, blockerId: String, blockedId: String, isDeleted: Bool, createdAt: Int, updatedAt: Int) {
    self.objectId = objectId
    self.blockerId = blockerId
    self.blockedId = blockedId
    self.isDeleted = isDeleted
    self.createdAt = createdAt
    self.updatedAt = updatedAt
  }

  public var variables: GraphQLMap? {
    return ["objectId": objectId, "blockerId": blockerId, "blockedId": blockedId, "isDeleted": isDeleted, "createdAt": createdAt, "updatedAt": updatedAt]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("updateBlocked", arguments: ["objectId": GraphQLVariable("objectId"), "blockerId": GraphQLVariable("blockerId"), "blockedId": GraphQLVariable("blockedId"), "isDeleted": GraphQLVariable("isDeleted"), "createdAt": GraphQLVariable("createdAt"), "updatedAt": GraphQLVariable("updatedAt")], type: .nonNull(.object(UpdateBlocked.selections))),
    ]

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(updateBlocked: UpdateBlocked) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "updateBlocked": updateBlocked.resultMap])
    }

    public var updateBlocked: UpdateBlocked {
      get {
        return UpdateBlocked(unsafeResultMap: resultMap["updateBlocked"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "updateBlocked")
      }
    }

    public struct UpdateBlocked: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Blocked"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("objectId", type: .nonNull(.scalar(String.self))),
        GraphQLField("blockerId", type: .nonNull(.scalar(String.self))),
        GraphQLField("blockedId", type: .nonNull(.scalar(String.self))),
        GraphQLField("isDeleted", type: .nonNull(.scalar(Bool.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(Int.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(Int.self))),
      ]

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(objectId: String, blockerId: String, blockedId: String, isDeleted: Bool, createdAt: Int, updatedAt: Int) {
        self.init(unsafeResultMap: ["__typename": "Blocked", "objectId": objectId, "blockerId": blockerId, "blockedId": blockedId, "isDeleted": isDeleted, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var objectId: String {
        get {
          return resultMap["objectId"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "objectId")
        }
      }

      public var blockerId: String {
        get {
          return resultMap["blockerId"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "blockerId")
        }
      }

      public var blockedId: String {
        get {
          return resultMap["blockedId"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "blockedId")
        }
      }

      public var isDeleted: Bool {
        get {
          return resultMap["isDeleted"]! as! Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "isDeleted")
        }
      }

      public var createdAt: Int {
        get {
          return resultMap["createdAt"]! as! Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: Int {
        get {
          return resultMap["updatedAt"]! as! Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class InsertDetailMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation InsertDetail($objectId: String!, $chatId: String!, $userId: String!, $typing: Boolean!, $lastRead: Int!, $mutedUntil: Int!, $isDeleted: Boolean!, $isArchived: Boolean!, $createdAt: Int!, $updatedAt: Int!) {
      insertDetail(objectId: $objectId, chatId: $chatId, userId: $userId, typing: $typing, lastRead: $lastRead, mutedUntil: $mutedUntil, isDeleted: $isDeleted, isArchived: $isArchived, createdAt: $createdAt, updatedAt: $updatedAt) {
        __typename
        objectId
        chatId
        userId
        typing
        lastRead
        mutedUntil
        isDeleted
        isArchived
        createdAt
        updatedAt
      }
    }
    """

  public let operationName: String = "InsertDetail"

  public var objectId: String
  public var chatId: String
  public var userId: String
  public var typing: Bool
  public var lastRead: Int
  public var mutedUntil: Int
  public var isDeleted: Bool
  public var isArchived: Bool
  public var createdAt: Int
  public var updatedAt: Int

  public init(objectId: String, chatId: String, userId: String, typing: Bool, lastRead: Int, mutedUntil: Int, isDeleted: Bool, isArchived: Bool, createdAt: Int, updatedAt: Int) {
    self.objectId = objectId
    self.chatId = chatId
    self.userId = userId
    self.typing = typing
    self.lastRead = lastRead
    self.mutedUntil = mutedUntil
    self.isDeleted = isDeleted
    self.isArchived = isArchived
    self.createdAt = createdAt
    self.updatedAt = updatedAt
  }

  public var variables: GraphQLMap? {
    return ["objectId": objectId, "chatId": chatId, "userId": userId, "typing": typing, "lastRead": lastRead, "mutedUntil": mutedUntil, "isDeleted": isDeleted, "isArchived": isArchived, "createdAt": createdAt, "updatedAt": updatedAt]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("insertDetail", arguments: ["objectId": GraphQLVariable("objectId"), "chatId": GraphQLVariable("chatId"), "userId": GraphQLVariable("userId"), "typing": GraphQLVariable("typing"), "lastRead": GraphQLVariable("lastRead"), "mutedUntil": GraphQLVariable("mutedUntil"), "isDeleted": GraphQLVariable("isDeleted"), "isArchived": GraphQLVariable("isArchived"), "createdAt": GraphQLVariable("createdAt"), "updatedAt": GraphQLVariable("updatedAt")], type: .nonNull(.object(InsertDetail.selections))),
    ]

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(insertDetail: InsertDetail) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "insertDetail": insertDetail.resultMap])
    }

    public var insertDetail: InsertDetail {
      get {
        return InsertDetail(unsafeResultMap: resultMap["insertDetail"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "insertDetail")
      }
    }

    public struct InsertDetail: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Detail"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("objectId", type: .nonNull(.scalar(String.self))),
        GraphQLField("chatId", type: .nonNull(.scalar(String.self))),
        GraphQLField("userId", type: .nonNull(.scalar(String.self))),
        GraphQLField("typing", type: .nonNull(.scalar(Bool.self))),
        GraphQLField("lastRead", type: .nonNull(.scalar(Int.self))),
        GraphQLField("mutedUntil", type: .nonNull(.scalar(Int.self))),
        GraphQLField("isDeleted", type: .nonNull(.scalar(Bool.self))),
        GraphQLField("isArchived", type: .nonNull(.scalar(Bool.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(Int.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(Int.self))),
      ]

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(objectId: String, chatId: String, userId: String, typing: Bool, lastRead: Int, mutedUntil: Int, isDeleted: Bool, isArchived: Bool, createdAt: Int, updatedAt: Int) {
        self.init(unsafeResultMap: ["__typename": "Detail", "objectId": objectId, "chatId": chatId, "userId": userId, "typing": typing, "lastRead": lastRead, "mutedUntil": mutedUntil, "isDeleted": isDeleted, "isArchived": isArchived, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var objectId: String {
        get {
          return resultMap["objectId"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "objectId")
        }
      }

      public var chatId: String {
        get {
          return resultMap["chatId"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "chatId")
        }
      }

      public var userId: String {
        get {
          return resultMap["userId"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "userId")
        }
      }

      public var typing: Bool {
        get {
          return resultMap["typing"]! as! Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "typing")
        }
      }

      public var lastRead: Int {
        get {
          return resultMap["lastRead"]! as! Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "lastRead")
        }
      }

      public var mutedUntil: Int {
        get {
          return resultMap["mutedUntil"]! as! Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "mutedUntil")
        }
      }

      public var isDeleted: Bool {
        get {
          return resultMap["isDeleted"]! as! Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "isDeleted")
        }
      }

      public var isArchived: Bool {
        get {
          return resultMap["isArchived"]! as! Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "isArchived")
        }
      }

      public var createdAt: Int {
        get {
          return resultMap["createdAt"]! as! Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: Int {
        get {
          return resultMap["updatedAt"]! as! Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class UpdateDetailMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation UpdateDetail($objectId: String!, $chatId: String!, $userId: String!, $typing: Boolean!, $lastRead: Int!, $mutedUntil: Int!, $isDeleted: Boolean!, $isArchived: Boolean!, $createdAt: Int!, $updatedAt: Int!) {
      updateDetail(objectId: $objectId, chatId: $chatId, userId: $userId, typing: $typing, lastRead: $lastRead, mutedUntil: $mutedUntil, isDeleted: $isDeleted, isArchived: $isArchived, createdAt: $createdAt, updatedAt: $updatedAt) {
        __typename
        objectId
        chatId
        userId
        typing
        lastRead
        mutedUntil
        isDeleted
        isArchived
        createdAt
        updatedAt
      }
    }
    """

  public let operationName: String = "UpdateDetail"

  public var objectId: String
  public var chatId: String
  public var userId: String
  public var typing: Bool
  public var lastRead: Int
  public var mutedUntil: Int
  public var isDeleted: Bool
  public var isArchived: Bool
  public var createdAt: Int
  public var updatedAt: Int

  public init(objectId: String, chatId: String, userId: String, typing: Bool, lastRead: Int, mutedUntil: Int, isDeleted: Bool, isArchived: Bool, createdAt: Int, updatedAt: Int) {
    self.objectId = objectId
    self.chatId = chatId
    self.userId = userId
    self.typing = typing
    self.lastRead = lastRead
    self.mutedUntil = mutedUntil
    self.isDeleted = isDeleted
    self.isArchived = isArchived
    self.createdAt = createdAt
    self.updatedAt = updatedAt
  }

  public var variables: GraphQLMap? {
    return ["objectId": objectId, "chatId": chatId, "userId": userId, "typing": typing, "lastRead": lastRead, "mutedUntil": mutedUntil, "isDeleted": isDeleted, "isArchived": isArchived, "createdAt": createdAt, "updatedAt": updatedAt]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("updateDetail", arguments: ["objectId": GraphQLVariable("objectId"), "chatId": GraphQLVariable("chatId"), "userId": GraphQLVariable("userId"), "typing": GraphQLVariable("typing"), "lastRead": GraphQLVariable("lastRead"), "mutedUntil": GraphQLVariable("mutedUntil"), "isDeleted": GraphQLVariable("isDeleted"), "isArchived": GraphQLVariable("isArchived"), "createdAt": GraphQLVariable("createdAt"), "updatedAt": GraphQLVariable("updatedAt")], type: .nonNull(.object(UpdateDetail.selections))),
    ]

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(updateDetail: UpdateDetail) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "updateDetail": updateDetail.resultMap])
    }

    public var updateDetail: UpdateDetail {
      get {
        return UpdateDetail(unsafeResultMap: resultMap["updateDetail"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "updateDetail")
      }
    }

    public struct UpdateDetail: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Detail"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("objectId", type: .nonNull(.scalar(String.self))),
        GraphQLField("chatId", type: .nonNull(.scalar(String.self))),
        GraphQLField("userId", type: .nonNull(.scalar(String.self))),
        GraphQLField("typing", type: .nonNull(.scalar(Bool.self))),
        GraphQLField("lastRead", type: .nonNull(.scalar(Int.self))),
        GraphQLField("mutedUntil", type: .nonNull(.scalar(Int.self))),
        GraphQLField("isDeleted", type: .nonNull(.scalar(Bool.self))),
        GraphQLField("isArchived", type: .nonNull(.scalar(Bool.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(Int.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(Int.self))),
      ]

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(objectId: String, chatId: String, userId: String, typing: Bool, lastRead: Int, mutedUntil: Int, isDeleted: Bool, isArchived: Bool, createdAt: Int, updatedAt: Int) {
        self.init(unsafeResultMap: ["__typename": "Detail", "objectId": objectId, "chatId": chatId, "userId": userId, "typing": typing, "lastRead": lastRead, "mutedUntil": mutedUntil, "isDeleted": isDeleted, "isArchived": isArchived, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var objectId: String {
        get {
          return resultMap["objectId"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "objectId")
        }
      }

      public var chatId: String {
        get {
          return resultMap["chatId"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "chatId")
        }
      }

      public var userId: String {
        get {
          return resultMap["userId"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "userId")
        }
      }

      public var typing: Bool {
        get {
          return resultMap["typing"]! as! Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "typing")
        }
      }

      public var lastRead: Int {
        get {
          return resultMap["lastRead"]! as! Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "lastRead")
        }
      }

      public var mutedUntil: Int {
        get {
          return resultMap["mutedUntil"]! as! Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "mutedUntil")
        }
      }

      public var isDeleted: Bool {
        get {
          return resultMap["isDeleted"]! as! Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "isDeleted")
        }
      }

      public var isArchived: Bool {
        get {
          return resultMap["isArchived"]! as! Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "isArchived")
        }
      }

      public var createdAt: Int {
        get {
          return resultMap["createdAt"]! as! Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: Int {
        get {
          return resultMap["updatedAt"]! as! Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class InsertGroupMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation InsertGroup($objectId: String!, $chatId: String!, $name: String!, $ownerId: String!, $isDeleted: Boolean!, $createdAt: Int!, $updatedAt: Int!) {
      insertGroup(objectId: $objectId, chatId: $chatId, name: $name, ownerId: $ownerId, isDeleted: $isDeleted, createdAt: $createdAt, updatedAt: $updatedAt) {
        __typename
        objectId
        chatId
        name
        ownerId
        isDeleted
        createdAt
        updatedAt
      }
    }
    """

  public let operationName: String = "InsertGroup"

  public var objectId: String
  public var chatId: String
  public var name: String
  public var ownerId: String
  public var isDeleted: Bool
  public var createdAt: Int
  public var updatedAt: Int

  public init(objectId: String, chatId: String, name: String, ownerId: String, isDeleted: Bool, createdAt: Int, updatedAt: Int) {
    self.objectId = objectId
    self.chatId = chatId
    self.name = name
    self.ownerId = ownerId
    self.isDeleted = isDeleted
    self.createdAt = createdAt
    self.updatedAt = updatedAt
  }

  public var variables: GraphQLMap? {
    return ["objectId": objectId, "chatId": chatId, "name": name, "ownerId": ownerId, "isDeleted": isDeleted, "createdAt": createdAt, "updatedAt": updatedAt]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("insertGroup", arguments: ["objectId": GraphQLVariable("objectId"), "chatId": GraphQLVariable("chatId"), "name": GraphQLVariable("name"), "ownerId": GraphQLVariable("ownerId"), "isDeleted": GraphQLVariable("isDeleted"), "createdAt": GraphQLVariable("createdAt"), "updatedAt": GraphQLVariable("updatedAt")], type: .nonNull(.object(InsertGroup.selections))),
    ]

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(insertGroup: InsertGroup) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "insertGroup": insertGroup.resultMap])
    }

    public var insertGroup: InsertGroup {
      get {
        return InsertGroup(unsafeResultMap: resultMap["insertGroup"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "insertGroup")
      }
    }

    public struct InsertGroup: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Group"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("objectId", type: .nonNull(.scalar(String.self))),
        GraphQLField("chatId", type: .nonNull(.scalar(String.self))),
        GraphQLField("name", type: .nonNull(.scalar(String.self))),
        GraphQLField("ownerId", type: .nonNull(.scalar(String.self))),
        GraphQLField("isDeleted", type: .nonNull(.scalar(Bool.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(Int.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(Int.self))),
      ]

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(objectId: String, chatId: String, name: String, ownerId: String, isDeleted: Bool, createdAt: Int, updatedAt: Int) {
        self.init(unsafeResultMap: ["__typename": "Group", "objectId": objectId, "chatId": chatId, "name": name, "ownerId": ownerId, "isDeleted": isDeleted, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var objectId: String {
        get {
          return resultMap["objectId"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "objectId")
        }
      }

      public var chatId: String {
        get {
          return resultMap["chatId"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "chatId")
        }
      }

      public var name: String {
        get {
          return resultMap["name"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "name")
        }
      }

      public var ownerId: String {
        get {
          return resultMap["ownerId"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "ownerId")
        }
      }

      public var isDeleted: Bool {
        get {
          return resultMap["isDeleted"]! as! Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "isDeleted")
        }
      }

      public var createdAt: Int {
        get {
          return resultMap["createdAt"]! as! Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: Int {
        get {
          return resultMap["updatedAt"]! as! Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class UpdateGroupMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation UpdateGroup($objectId: String!, $chatId: String!, $name: String!, $ownerId: String!, $isDeleted: Boolean!, $createdAt: Int!, $updatedAt: Int!) {
      updateGroup(objectId: $objectId, chatId: $chatId, name: $name, ownerId: $ownerId, isDeleted: $isDeleted, createdAt: $createdAt, updatedAt: $updatedAt) {
        __typename
        objectId
        chatId
        name
        ownerId
        isDeleted
        createdAt
        updatedAt
      }
    }
    """

  public let operationName: String = "UpdateGroup"

  public var objectId: String
  public var chatId: String
  public var name: String
  public var ownerId: String
  public var isDeleted: Bool
  public var createdAt: Int
  public var updatedAt: Int

  public init(objectId: String, chatId: String, name: String, ownerId: String, isDeleted: Bool, createdAt: Int, updatedAt: Int) {
    self.objectId = objectId
    self.chatId = chatId
    self.name = name
    self.ownerId = ownerId
    self.isDeleted = isDeleted
    self.createdAt = createdAt
    self.updatedAt = updatedAt
  }

  public var variables: GraphQLMap? {
    return ["objectId": objectId, "chatId": chatId, "name": name, "ownerId": ownerId, "isDeleted": isDeleted, "createdAt": createdAt, "updatedAt": updatedAt]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("updateGroup", arguments: ["objectId": GraphQLVariable("objectId"), "chatId": GraphQLVariable("chatId"), "name": GraphQLVariable("name"), "ownerId": GraphQLVariable("ownerId"), "isDeleted": GraphQLVariable("isDeleted"), "createdAt": GraphQLVariable("createdAt"), "updatedAt": GraphQLVariable("updatedAt")], type: .nonNull(.object(UpdateGroup.selections))),
    ]

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(updateGroup: UpdateGroup) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "updateGroup": updateGroup.resultMap])
    }

    public var updateGroup: UpdateGroup {
      get {
        return UpdateGroup(unsafeResultMap: resultMap["updateGroup"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "updateGroup")
      }
    }

    public struct UpdateGroup: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Group"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("objectId", type: .nonNull(.scalar(String.self))),
        GraphQLField("chatId", type: .nonNull(.scalar(String.self))),
        GraphQLField("name", type: .nonNull(.scalar(String.self))),
        GraphQLField("ownerId", type: .nonNull(.scalar(String.self))),
        GraphQLField("isDeleted", type: .nonNull(.scalar(Bool.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(Int.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(Int.self))),
      ]

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(objectId: String, chatId: String, name: String, ownerId: String, isDeleted: Bool, createdAt: Int, updatedAt: Int) {
        self.init(unsafeResultMap: ["__typename": "Group", "objectId": objectId, "chatId": chatId, "name": name, "ownerId": ownerId, "isDeleted": isDeleted, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var objectId: String {
        get {
          return resultMap["objectId"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "objectId")
        }
      }

      public var chatId: String {
        get {
          return resultMap["chatId"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "chatId")
        }
      }

      public var name: String {
        get {
          return resultMap["name"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "name")
        }
      }

      public var ownerId: String {
        get {
          return resultMap["ownerId"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "ownerId")
        }
      }

      public var isDeleted: Bool {
        get {
          return resultMap["isDeleted"]! as! Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "isDeleted")
        }
      }

      public var createdAt: Int {
        get {
          return resultMap["createdAt"]! as! Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: Int {
        get {
          return resultMap["updatedAt"]! as! Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class InsertMemberMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation InsertMember($objectId: String!, $chatId: String!, $userId: String!, $isActive: Boolean!, $createdAt: Int!, $updatedAt: Int!) {
      insertMember(objectId: $objectId, chatId: $chatId, userId: $userId, isActive: $isActive, createdAt: $createdAt, updatedAt: $updatedAt) {
        __typename
        objectId
        chatId
        userId
        isActive
        createdAt
        updatedAt
      }
    }
    """

  public let operationName: String = "InsertMember"

  public var objectId: String
  public var chatId: String
  public var userId: String
  public var isActive: Bool
  public var createdAt: Int
  public var updatedAt: Int

  public init(objectId: String, chatId: String, userId: String, isActive: Bool, createdAt: Int, updatedAt: Int) {
    self.objectId = objectId
    self.chatId = chatId
    self.userId = userId
    self.isActive = isActive
    self.createdAt = createdAt
    self.updatedAt = updatedAt
  }

  public var variables: GraphQLMap? {
    return ["objectId": objectId, "chatId": chatId, "userId": userId, "isActive": isActive, "createdAt": createdAt, "updatedAt": updatedAt]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("insertMember", arguments: ["objectId": GraphQLVariable("objectId"), "chatId": GraphQLVariable("chatId"), "userId": GraphQLVariable("userId"), "isActive": GraphQLVariable("isActive"), "createdAt": GraphQLVariable("createdAt"), "updatedAt": GraphQLVariable("updatedAt")], type: .nonNull(.object(InsertMember.selections))),
    ]

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(insertMember: InsertMember) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "insertMember": insertMember.resultMap])
    }

    public var insertMember: InsertMember {
      get {
        return InsertMember(unsafeResultMap: resultMap["insertMember"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "insertMember")
      }
    }

    public struct InsertMember: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Member"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("objectId", type: .nonNull(.scalar(String.self))),
        GraphQLField("chatId", type: .nonNull(.scalar(String.self))),
        GraphQLField("userId", type: .nonNull(.scalar(String.self))),
        GraphQLField("isActive", type: .nonNull(.scalar(Bool.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(Int.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(Int.self))),
      ]

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(objectId: String, chatId: String, userId: String, isActive: Bool, createdAt: Int, updatedAt: Int) {
        self.init(unsafeResultMap: ["__typename": "Member", "objectId": objectId, "chatId": chatId, "userId": userId, "isActive": isActive, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var objectId: String {
        get {
          return resultMap["objectId"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "objectId")
        }
      }

      public var chatId: String {
        get {
          return resultMap["chatId"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "chatId")
        }
      }

      public var userId: String {
        get {
          return resultMap["userId"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "userId")
        }
      }

      public var isActive: Bool {
        get {
          return resultMap["isActive"]! as! Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "isActive")
        }
      }

      public var createdAt: Int {
        get {
          return resultMap["createdAt"]! as! Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: Int {
        get {
          return resultMap["updatedAt"]! as! Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class UpdateMemberMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation UpdateMember($objectId: String!, $chatId: String!, $userId: String!, $isActive: Boolean!, $createdAt: Int!, $updatedAt: Int!) {
      updateMember(objectId: $objectId, chatId: $chatId, userId: $userId, isActive: $isActive, createdAt: $createdAt, updatedAt: $updatedAt) {
        __typename
        objectId
        chatId
        userId
        isActive
        createdAt
        updatedAt
      }
    }
    """

  public let operationName: String = "UpdateMember"

  public var objectId: String
  public var chatId: String
  public var userId: String
  public var isActive: Bool
  public var createdAt: Int
  public var updatedAt: Int

  public init(objectId: String, chatId: String, userId: String, isActive: Bool, createdAt: Int, updatedAt: Int) {
    self.objectId = objectId
    self.chatId = chatId
    self.userId = userId
    self.isActive = isActive
    self.createdAt = createdAt
    self.updatedAt = updatedAt
  }

  public var variables: GraphQLMap? {
    return ["objectId": objectId, "chatId": chatId, "userId": userId, "isActive": isActive, "createdAt": createdAt, "updatedAt": updatedAt]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("updateMember", arguments: ["objectId": GraphQLVariable("objectId"), "chatId": GraphQLVariable("chatId"), "userId": GraphQLVariable("userId"), "isActive": GraphQLVariable("isActive"), "createdAt": GraphQLVariable("createdAt"), "updatedAt": GraphQLVariable("updatedAt")], type: .nonNull(.object(UpdateMember.selections))),
    ]

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(updateMember: UpdateMember) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "updateMember": updateMember.resultMap])
    }

    public var updateMember: UpdateMember {
      get {
        return UpdateMember(unsafeResultMap: resultMap["updateMember"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "updateMember")
      }
    }

    public struct UpdateMember: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Member"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("objectId", type: .nonNull(.scalar(String.self))),
        GraphQLField("chatId", type: .nonNull(.scalar(String.self))),
        GraphQLField("userId", type: .nonNull(.scalar(String.self))),
        GraphQLField("isActive", type: .nonNull(.scalar(Bool.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(Int.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(Int.self))),
      ]

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(objectId: String, chatId: String, userId: String, isActive: Bool, createdAt: Int, updatedAt: Int) {
        self.init(unsafeResultMap: ["__typename": "Member", "objectId": objectId, "chatId": chatId, "userId": userId, "isActive": isActive, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var objectId: String {
        get {
          return resultMap["objectId"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "objectId")
        }
      }

      public var chatId: String {
        get {
          return resultMap["chatId"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "chatId")
        }
      }

      public var userId: String {
        get {
          return resultMap["userId"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "userId")
        }
      }

      public var isActive: Bool {
        get {
          return resultMap["isActive"]! as! Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "isActive")
        }
      }

      public var createdAt: Int {
        get {
          return resultMap["createdAt"]! as! Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: Int {
        get {
          return resultMap["updatedAt"]! as! Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class InsertMessageMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation InsertMessage($objectId: String!, $chatId: String!, $userId: String!, $userFullname: String!, $userInitials: String!, $userPictureAt: Int!, $type: String!, $text: String!, $photoWidth: Int!, $photoHeight: Int!, $videoDuration: Int!, $audioDuration: Int!, $latitude: Float!, $longitude: Float!, $isMediaQueued: Boolean!, $isMediaFailed: Boolean!, $isDeleted: Boolean!, $createdAt: Int!, $updatedAt: Int!) {
      insertMessage(objectId: $objectId, chatId: $chatId, userId: $userId, userFullname: $userFullname, userInitials: $userInitials, userPictureAt: $userPictureAt, type: $type, text: $text, photoWidth: $photoWidth, photoHeight: $photoHeight, videoDuration: $videoDuration, audioDuration: $audioDuration, latitude: $latitude, longitude: $longitude, isMediaQueued: $isMediaQueued, isMediaFailed: $isMediaFailed, isDeleted: $isDeleted, createdAt: $createdAt, updatedAt: $updatedAt) {
        __typename
        objectId
        chatId
        userId
        userFullname
        userInitials
        userPictureAt
        type
        text
        photoWidth
        photoHeight
        videoDuration
        audioDuration
        latitude
        longitude
        isMediaQueued
        isMediaFailed
        isDeleted
        createdAt
        updatedAt
      }
    }
    """

  public let operationName: String = "InsertMessage"

  public var objectId: String
  public var chatId: String
  public var userId: String
  public var userFullname: String
  public var userInitials: String
  public var userPictureAt: Int
  public var type: String
  public var text: String
  public var photoWidth: Int
  public var photoHeight: Int
  public var videoDuration: Int
  public var audioDuration: Int
  public var latitude: Double
  public var longitude: Double
  public var isMediaQueued: Bool
  public var isMediaFailed: Bool
  public var isDeleted: Bool
  public var createdAt: Int
  public var updatedAt: Int

  public init(objectId: String, chatId: String, userId: String, userFullname: String, userInitials: String, userPictureAt: Int, type: String, text: String, photoWidth: Int, photoHeight: Int, videoDuration: Int, audioDuration: Int, latitude: Double, longitude: Double, isMediaQueued: Bool, isMediaFailed: Bool, isDeleted: Bool, createdAt: Int, updatedAt: Int) {
    self.objectId = objectId
    self.chatId = chatId
    self.userId = userId
    self.userFullname = userFullname
    self.userInitials = userInitials
    self.userPictureAt = userPictureAt
    self.type = type
    self.text = text
    self.photoWidth = photoWidth
    self.photoHeight = photoHeight
    self.videoDuration = videoDuration
    self.audioDuration = audioDuration
    self.latitude = latitude
    self.longitude = longitude
    self.isMediaQueued = isMediaQueued
    self.isMediaFailed = isMediaFailed
    self.isDeleted = isDeleted
    self.createdAt = createdAt
    self.updatedAt = updatedAt
  }

  public var variables: GraphQLMap? {
    return ["objectId": objectId, "chatId": chatId, "userId": userId, "userFullname": userFullname, "userInitials": userInitials, "userPictureAt": userPictureAt, "type": type, "text": text, "photoWidth": photoWidth, "photoHeight": photoHeight, "videoDuration": videoDuration, "audioDuration": audioDuration, "latitude": latitude, "longitude": longitude, "isMediaQueued": isMediaQueued, "isMediaFailed": isMediaFailed, "isDeleted": isDeleted, "createdAt": createdAt, "updatedAt": updatedAt]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("insertMessage", arguments: ["objectId": GraphQLVariable("objectId"), "chatId": GraphQLVariable("chatId"), "userId": GraphQLVariable("userId"), "userFullname": GraphQLVariable("userFullname"), "userInitials": GraphQLVariable("userInitials"), "userPictureAt": GraphQLVariable("userPictureAt"), "type": GraphQLVariable("type"), "text": GraphQLVariable("text"), "photoWidth": GraphQLVariable("photoWidth"), "photoHeight": GraphQLVariable("photoHeight"), "videoDuration": GraphQLVariable("videoDuration"), "audioDuration": GraphQLVariable("audioDuration"), "latitude": GraphQLVariable("latitude"), "longitude": GraphQLVariable("longitude"), "isMediaQueued": GraphQLVariable("isMediaQueued"), "isMediaFailed": GraphQLVariable("isMediaFailed"), "isDeleted": GraphQLVariable("isDeleted"), "createdAt": GraphQLVariable("createdAt"), "updatedAt": GraphQLVariable("updatedAt")], type: .nonNull(.object(InsertMessage.selections))),
    ]

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(insertMessage: InsertMessage) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "insertMessage": insertMessage.resultMap])
    }

    public var insertMessage: InsertMessage {
      get {
        return InsertMessage(unsafeResultMap: resultMap["insertMessage"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "insertMessage")
      }
    }

    public struct InsertMessage: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Message"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("objectId", type: .nonNull(.scalar(String.self))),
        GraphQLField("chatId", type: .nonNull(.scalar(String.self))),
        GraphQLField("userId", type: .nonNull(.scalar(String.self))),
        GraphQLField("userFullname", type: .nonNull(.scalar(String.self))),
        GraphQLField("userInitials", type: .nonNull(.scalar(String.self))),
        GraphQLField("userPictureAt", type: .nonNull(.scalar(Int.self))),
        GraphQLField("type", type: .nonNull(.scalar(String.self))),
        GraphQLField("text", type: .nonNull(.scalar(String.self))),
        GraphQLField("photoWidth", type: .nonNull(.scalar(Int.self))),
        GraphQLField("photoHeight", type: .nonNull(.scalar(Int.self))),
        GraphQLField("videoDuration", type: .nonNull(.scalar(Int.self))),
        GraphQLField("audioDuration", type: .nonNull(.scalar(Int.self))),
        GraphQLField("latitude", type: .nonNull(.scalar(Double.self))),
        GraphQLField("longitude", type: .nonNull(.scalar(Double.self))),
        GraphQLField("isMediaQueued", type: .nonNull(.scalar(Bool.self))),
        GraphQLField("isMediaFailed", type: .nonNull(.scalar(Bool.self))),
        GraphQLField("isDeleted", type: .nonNull(.scalar(Bool.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(Int.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(Int.self))),
      ]

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(objectId: String, chatId: String, userId: String, userFullname: String, userInitials: String, userPictureAt: Int, type: String, text: String, photoWidth: Int, photoHeight: Int, videoDuration: Int, audioDuration: Int, latitude: Double, longitude: Double, isMediaQueued: Bool, isMediaFailed: Bool, isDeleted: Bool, createdAt: Int, updatedAt: Int) {
        self.init(unsafeResultMap: ["__typename": "Message", "objectId": objectId, "chatId": chatId, "userId": userId, "userFullname": userFullname, "userInitials": userInitials, "userPictureAt": userPictureAt, "type": type, "text": text, "photoWidth": photoWidth, "photoHeight": photoHeight, "videoDuration": videoDuration, "audioDuration": audioDuration, "latitude": latitude, "longitude": longitude, "isMediaQueued": isMediaQueued, "isMediaFailed": isMediaFailed, "isDeleted": isDeleted, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var objectId: String {
        get {
          return resultMap["objectId"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "objectId")
        }
      }

      public var chatId: String {
        get {
          return resultMap["chatId"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "chatId")
        }
      }

      public var userId: String {
        get {
          return resultMap["userId"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "userId")
        }
      }

      public var userFullname: String {
        get {
          return resultMap["userFullname"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "userFullname")
        }
      }

      public var userInitials: String {
        get {
          return resultMap["userInitials"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "userInitials")
        }
      }

      public var userPictureAt: Int {
        get {
          return resultMap["userPictureAt"]! as! Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "userPictureAt")
        }
      }

      public var type: String {
        get {
          return resultMap["type"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "type")
        }
      }

      public var text: String {
        get {
          return resultMap["text"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "text")
        }
      }

      public var photoWidth: Int {
        get {
          return resultMap["photoWidth"]! as! Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "photoWidth")
        }
      }

      public var photoHeight: Int {
        get {
          return resultMap["photoHeight"]! as! Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "photoHeight")
        }
      }

      public var videoDuration: Int {
        get {
          return resultMap["videoDuration"]! as! Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "videoDuration")
        }
      }

      public var audioDuration: Int {
        get {
          return resultMap["audioDuration"]! as! Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "audioDuration")
        }
      }

      public var latitude: Double {
        get {
          return resultMap["latitude"]! as! Double
        }
        set {
          resultMap.updateValue(newValue, forKey: "latitude")
        }
      }

      public var longitude: Double {
        get {
          return resultMap["longitude"]! as! Double
        }
        set {
          resultMap.updateValue(newValue, forKey: "longitude")
        }
      }

      public var isMediaQueued: Bool {
        get {
          return resultMap["isMediaQueued"]! as! Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "isMediaQueued")
        }
      }

      public var isMediaFailed: Bool {
        get {
          return resultMap["isMediaFailed"]! as! Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "isMediaFailed")
        }
      }

      public var isDeleted: Bool {
        get {
          return resultMap["isDeleted"]! as! Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "isDeleted")
        }
      }

      public var createdAt: Int {
        get {
          return resultMap["createdAt"]! as! Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: Int {
        get {
          return resultMap["updatedAt"]! as! Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class UpdateMessageMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation UpdateMessage($objectId: String!, $chatId: String!, $userId: String!, $userFullname: String!, $userInitials: String!, $userPictureAt: Int!, $type: String!, $text: String!, $photoWidth: Int!, $photoHeight: Int!, $videoDuration: Int!, $audioDuration: Int!, $latitude: Float!, $longitude: Float!, $isMediaQueued: Boolean!, $isMediaFailed: Boolean!, $isDeleted: Boolean!, $createdAt: Int!, $updatedAt: Int!) {
      updateMessage(objectId: $objectId, chatId: $chatId, userId: $userId, userFullname: $userFullname, userInitials: $userInitials, userPictureAt: $userPictureAt, type: $type, text: $text, photoWidth: $photoWidth, photoHeight: $photoHeight, videoDuration: $videoDuration, audioDuration: $audioDuration, latitude: $latitude, longitude: $longitude, isMediaQueued: $isMediaQueued, isMediaFailed: $isMediaFailed, isDeleted: $isDeleted, createdAt: $createdAt, updatedAt: $updatedAt) {
        __typename
        objectId
        chatId
        userId
        userFullname
        userInitials
        userPictureAt
        type
        text
        photoWidth
        photoHeight
        videoDuration
        audioDuration
        latitude
        longitude
        isMediaQueued
        isMediaFailed
        isDeleted
        createdAt
        updatedAt
      }
    }
    """

  public let operationName: String = "UpdateMessage"

  public var objectId: String
  public var chatId: String
  public var userId: String
  public var userFullname: String
  public var userInitials: String
  public var userPictureAt: Int
  public var type: String
  public var text: String
  public var photoWidth: Int
  public var photoHeight: Int
  public var videoDuration: Int
  public var audioDuration: Int
  public var latitude: Double
  public var longitude: Double
  public var isMediaQueued: Bool
  public var isMediaFailed: Bool
  public var isDeleted: Bool
  public var createdAt: Int
  public var updatedAt: Int

  public init(objectId: String, chatId: String, userId: String, userFullname: String, userInitials: String, userPictureAt: Int, type: String, text: String, photoWidth: Int, photoHeight: Int, videoDuration: Int, audioDuration: Int, latitude: Double, longitude: Double, isMediaQueued: Bool, isMediaFailed: Bool, isDeleted: Bool, createdAt: Int, updatedAt: Int) {
    self.objectId = objectId
    self.chatId = chatId
    self.userId = userId
    self.userFullname = userFullname
    self.userInitials = userInitials
    self.userPictureAt = userPictureAt
    self.type = type
    self.text = text
    self.photoWidth = photoWidth
    self.photoHeight = photoHeight
    self.videoDuration = videoDuration
    self.audioDuration = audioDuration
    self.latitude = latitude
    self.longitude = longitude
    self.isMediaQueued = isMediaQueued
    self.isMediaFailed = isMediaFailed
    self.isDeleted = isDeleted
    self.createdAt = createdAt
    self.updatedAt = updatedAt
  }

  public var variables: GraphQLMap? {
    return ["objectId": objectId, "chatId": chatId, "userId": userId, "userFullname": userFullname, "userInitials": userInitials, "userPictureAt": userPictureAt, "type": type, "text": text, "photoWidth": photoWidth, "photoHeight": photoHeight, "videoDuration": videoDuration, "audioDuration": audioDuration, "latitude": latitude, "longitude": longitude, "isMediaQueued": isMediaQueued, "isMediaFailed": isMediaFailed, "isDeleted": isDeleted, "createdAt": createdAt, "updatedAt": updatedAt]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("updateMessage", arguments: ["objectId": GraphQLVariable("objectId"), "chatId": GraphQLVariable("chatId"), "userId": GraphQLVariable("userId"), "userFullname": GraphQLVariable("userFullname"), "userInitials": GraphQLVariable("userInitials"), "userPictureAt": GraphQLVariable("userPictureAt"), "type": GraphQLVariable("type"), "text": GraphQLVariable("text"), "photoWidth": GraphQLVariable("photoWidth"), "photoHeight": GraphQLVariable("photoHeight"), "videoDuration": GraphQLVariable("videoDuration"), "audioDuration": GraphQLVariable("audioDuration"), "latitude": GraphQLVariable("latitude"), "longitude": GraphQLVariable("longitude"), "isMediaQueued": GraphQLVariable("isMediaQueued"), "isMediaFailed": GraphQLVariable("isMediaFailed"), "isDeleted": GraphQLVariable("isDeleted"), "createdAt": GraphQLVariable("createdAt"), "updatedAt": GraphQLVariable("updatedAt")], type: .nonNull(.object(UpdateMessage.selections))),
    ]

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(updateMessage: UpdateMessage) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "updateMessage": updateMessage.resultMap])
    }

    public var updateMessage: UpdateMessage {
      get {
        return UpdateMessage(unsafeResultMap: resultMap["updateMessage"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "updateMessage")
      }
    }

    public struct UpdateMessage: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Message"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("objectId", type: .nonNull(.scalar(String.self))),
        GraphQLField("chatId", type: .nonNull(.scalar(String.self))),
        GraphQLField("userId", type: .nonNull(.scalar(String.self))),
        GraphQLField("userFullname", type: .nonNull(.scalar(String.self))),
        GraphQLField("userInitials", type: .nonNull(.scalar(String.self))),
        GraphQLField("userPictureAt", type: .nonNull(.scalar(Int.self))),
        GraphQLField("type", type: .nonNull(.scalar(String.self))),
        GraphQLField("text", type: .nonNull(.scalar(String.self))),
        GraphQLField("photoWidth", type: .nonNull(.scalar(Int.self))),
        GraphQLField("photoHeight", type: .nonNull(.scalar(Int.self))),
        GraphQLField("videoDuration", type: .nonNull(.scalar(Int.self))),
        GraphQLField("audioDuration", type: .nonNull(.scalar(Int.self))),
        GraphQLField("latitude", type: .nonNull(.scalar(Double.self))),
        GraphQLField("longitude", type: .nonNull(.scalar(Double.self))),
        GraphQLField("isMediaQueued", type: .nonNull(.scalar(Bool.self))),
        GraphQLField("isMediaFailed", type: .nonNull(.scalar(Bool.self))),
        GraphQLField("isDeleted", type: .nonNull(.scalar(Bool.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(Int.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(Int.self))),
      ]

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(objectId: String, chatId: String, userId: String, userFullname: String, userInitials: String, userPictureAt: Int, type: String, text: String, photoWidth: Int, photoHeight: Int, videoDuration: Int, audioDuration: Int, latitude: Double, longitude: Double, isMediaQueued: Bool, isMediaFailed: Bool, isDeleted: Bool, createdAt: Int, updatedAt: Int) {
        self.init(unsafeResultMap: ["__typename": "Message", "objectId": objectId, "chatId": chatId, "userId": userId, "userFullname": userFullname, "userInitials": userInitials, "userPictureAt": userPictureAt, "type": type, "text": text, "photoWidth": photoWidth, "photoHeight": photoHeight, "videoDuration": videoDuration, "audioDuration": audioDuration, "latitude": latitude, "longitude": longitude, "isMediaQueued": isMediaQueued, "isMediaFailed": isMediaFailed, "isDeleted": isDeleted, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var objectId: String {
        get {
          return resultMap["objectId"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "objectId")
        }
      }

      public var chatId: String {
        get {
          return resultMap["chatId"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "chatId")
        }
      }

      public var userId: String {
        get {
          return resultMap["userId"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "userId")
        }
      }

      public var userFullname: String {
        get {
          return resultMap["userFullname"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "userFullname")
        }
      }

      public var userInitials: String {
        get {
          return resultMap["userInitials"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "userInitials")
        }
      }

      public var userPictureAt: Int {
        get {
          return resultMap["userPictureAt"]! as! Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "userPictureAt")
        }
      }

      public var type: String {
        get {
          return resultMap["type"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "type")
        }
      }

      public var text: String {
        get {
          return resultMap["text"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "text")
        }
      }

      public var photoWidth: Int {
        get {
          return resultMap["photoWidth"]! as! Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "photoWidth")
        }
      }

      public var photoHeight: Int {
        get {
          return resultMap["photoHeight"]! as! Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "photoHeight")
        }
      }

      public var videoDuration: Int {
        get {
          return resultMap["videoDuration"]! as! Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "videoDuration")
        }
      }

      public var audioDuration: Int {
        get {
          return resultMap["audioDuration"]! as! Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "audioDuration")
        }
      }

      public var latitude: Double {
        get {
          return resultMap["latitude"]! as! Double
        }
        set {
          resultMap.updateValue(newValue, forKey: "latitude")
        }
      }

      public var longitude: Double {
        get {
          return resultMap["longitude"]! as! Double
        }
        set {
          resultMap.updateValue(newValue, forKey: "longitude")
        }
      }

      public var isMediaQueued: Bool {
        get {
          return resultMap["isMediaQueued"]! as! Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "isMediaQueued")
        }
      }

      public var isMediaFailed: Bool {
        get {
          return resultMap["isMediaFailed"]! as! Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "isMediaFailed")
        }
      }

      public var isDeleted: Bool {
        get {
          return resultMap["isDeleted"]! as! Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "isDeleted")
        }
      }

      public var createdAt: Int {
        get {
          return resultMap["createdAt"]! as! Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: Int {
        get {
          return resultMap["updatedAt"]! as! Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class InsertSingleMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation InsertSingle($objectId: String!, $chatId: String!, $userId1: String!, $fullname1: String!, $initials1: String!, $pictureAt1: Int!, $userId2: String!, $fullname2: String!, $initials2: String!, $pictureAt2: Int!, $createdAt: Int!, $updatedAt: Int!) {
      insertSingle(objectId: $objectId, chatId: $chatId, userId1: $userId1, fullname1: $fullname1, initials1: $initials1, pictureAt1: $pictureAt1, userId2: $userId2, fullname2: $fullname2, initials2: $initials2, pictureAt2: $pictureAt2, createdAt: $createdAt, updatedAt: $updatedAt) {
        __typename
        objectId
        chatId
        userId1
        fullname1
        initials1
        pictureAt1
        userId2
        fullname2
        initials2
        pictureAt2
        createdAt
        updatedAt
      }
    }
    """

  public let operationName: String = "InsertSingle"

  public var objectId: String
  public var chatId: String
  public var userId1: String
  public var fullname1: String
  public var initials1: String
  public var pictureAt1: Int
  public var userId2: String
  public var fullname2: String
  public var initials2: String
  public var pictureAt2: Int
  public var createdAt: Int
  public var updatedAt: Int

  public init(objectId: String, chatId: String, userId1: String, fullname1: String, initials1: String, pictureAt1: Int, userId2: String, fullname2: String, initials2: String, pictureAt2: Int, createdAt: Int, updatedAt: Int) {
    self.objectId = objectId
    self.chatId = chatId
    self.userId1 = userId1
    self.fullname1 = fullname1
    self.initials1 = initials1
    self.pictureAt1 = pictureAt1
    self.userId2 = userId2
    self.fullname2 = fullname2
    self.initials2 = initials2
    self.pictureAt2 = pictureAt2
    self.createdAt = createdAt
    self.updatedAt = updatedAt
  }

  public var variables: GraphQLMap? {
    return ["objectId": objectId, "chatId": chatId, "userId1": userId1, "fullname1": fullname1, "initials1": initials1, "pictureAt1": pictureAt1, "userId2": userId2, "fullname2": fullname2, "initials2": initials2, "pictureAt2": pictureAt2, "createdAt": createdAt, "updatedAt": updatedAt]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("insertSingle", arguments: ["objectId": GraphQLVariable("objectId"), "chatId": GraphQLVariable("chatId"), "userId1": GraphQLVariable("userId1"), "fullname1": GraphQLVariable("fullname1"), "initials1": GraphQLVariable("initials1"), "pictureAt1": GraphQLVariable("pictureAt1"), "userId2": GraphQLVariable("userId2"), "fullname2": GraphQLVariable("fullname2"), "initials2": GraphQLVariable("initials2"), "pictureAt2": GraphQLVariable("pictureAt2"), "createdAt": GraphQLVariable("createdAt"), "updatedAt": GraphQLVariable("updatedAt")], type: .nonNull(.object(InsertSingle.selections))),
    ]

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(insertSingle: InsertSingle) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "insertSingle": insertSingle.resultMap])
    }

    public var insertSingle: InsertSingle {
      get {
        return InsertSingle(unsafeResultMap: resultMap["insertSingle"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "insertSingle")
      }
    }

    public struct InsertSingle: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Single"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("objectId", type: .nonNull(.scalar(String.self))),
        GraphQLField("chatId", type: .nonNull(.scalar(String.self))),
        GraphQLField("userId1", type: .nonNull(.scalar(String.self))),
        GraphQLField("fullname1", type: .nonNull(.scalar(String.self))),
        GraphQLField("initials1", type: .nonNull(.scalar(String.self))),
        GraphQLField("pictureAt1", type: .nonNull(.scalar(Int.self))),
        GraphQLField("userId2", type: .nonNull(.scalar(String.self))),
        GraphQLField("fullname2", type: .nonNull(.scalar(String.self))),
        GraphQLField("initials2", type: .nonNull(.scalar(String.self))),
        GraphQLField("pictureAt2", type: .nonNull(.scalar(Int.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(Int.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(Int.self))),
      ]

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(objectId: String, chatId: String, userId1: String, fullname1: String, initials1: String, pictureAt1: Int, userId2: String, fullname2: String, initials2: String, pictureAt2: Int, createdAt: Int, updatedAt: Int) {
        self.init(unsafeResultMap: ["__typename": "Single", "objectId": objectId, "chatId": chatId, "userId1": userId1, "fullname1": fullname1, "initials1": initials1, "pictureAt1": pictureAt1, "userId2": userId2, "fullname2": fullname2, "initials2": initials2, "pictureAt2": pictureAt2, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var objectId: String {
        get {
          return resultMap["objectId"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "objectId")
        }
      }

      public var chatId: String {
        get {
          return resultMap["chatId"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "chatId")
        }
      }

      public var userId1: String {
        get {
          return resultMap["userId1"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "userId1")
        }
      }

      public var fullname1: String {
        get {
          return resultMap["fullname1"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "fullname1")
        }
      }

      public var initials1: String {
        get {
          return resultMap["initials1"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "initials1")
        }
      }

      public var pictureAt1: Int {
        get {
          return resultMap["pictureAt1"]! as! Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "pictureAt1")
        }
      }

      public var userId2: String {
        get {
          return resultMap["userId2"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "userId2")
        }
      }

      public var fullname2: String {
        get {
          return resultMap["fullname2"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "fullname2")
        }
      }

      public var initials2: String {
        get {
          return resultMap["initials2"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "initials2")
        }
      }

      public var pictureAt2: Int {
        get {
          return resultMap["pictureAt2"]! as! Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "pictureAt2")
        }
      }

      public var createdAt: Int {
        get {
          return resultMap["createdAt"]! as! Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: Int {
        get {
          return resultMap["updatedAt"]! as! Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class UpdateSingleMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation UpdateSingle($objectId: String!, $chatId: String!, $userId1: String!, $fullname1: String!, $initials1: String!, $pictureAt1: Int!, $userId2: String!, $fullname2: String!, $initials2: String!, $pictureAt2: Int!, $createdAt: Int!, $updatedAt: Int!) {
      updateSingle(objectId: $objectId, chatId: $chatId, userId1: $userId1, fullname1: $fullname1, initials1: $initials1, pictureAt1: $pictureAt1, userId2: $userId2, fullname2: $fullname2, initials2: $initials2, pictureAt2: $pictureAt2, createdAt: $createdAt, updatedAt: $updatedAt) {
        __typename
        objectId
        chatId
        userId1
        fullname1
        initials1
        pictureAt1
        userId2
        fullname2
        initials2
        pictureAt2
        createdAt
        updatedAt
      }
    }
    """

  public let operationName: String = "UpdateSingle"

  public var objectId: String
  public var chatId: String
  public var userId1: String
  public var fullname1: String
  public var initials1: String
  public var pictureAt1: Int
  public var userId2: String
  public var fullname2: String
  public var initials2: String
  public var pictureAt2: Int
  public var createdAt: Int
  public var updatedAt: Int

  public init(objectId: String, chatId: String, userId1: String, fullname1: String, initials1: String, pictureAt1: Int, userId2: String, fullname2: String, initials2: String, pictureAt2: Int, createdAt: Int, updatedAt: Int) {
    self.objectId = objectId
    self.chatId = chatId
    self.userId1 = userId1
    self.fullname1 = fullname1
    self.initials1 = initials1
    self.pictureAt1 = pictureAt1
    self.userId2 = userId2
    self.fullname2 = fullname2
    self.initials2 = initials2
    self.pictureAt2 = pictureAt2
    self.createdAt = createdAt
    self.updatedAt = updatedAt
  }

  public var variables: GraphQLMap? {
    return ["objectId": objectId, "chatId": chatId, "userId1": userId1, "fullname1": fullname1, "initials1": initials1, "pictureAt1": pictureAt1, "userId2": userId2, "fullname2": fullname2, "initials2": initials2, "pictureAt2": pictureAt2, "createdAt": createdAt, "updatedAt": updatedAt]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("updateSingle", arguments: ["objectId": GraphQLVariable("objectId"), "chatId": GraphQLVariable("chatId"), "userId1": GraphQLVariable("userId1"), "fullname1": GraphQLVariable("fullname1"), "initials1": GraphQLVariable("initials1"), "pictureAt1": GraphQLVariable("pictureAt1"), "userId2": GraphQLVariable("userId2"), "fullname2": GraphQLVariable("fullname2"), "initials2": GraphQLVariable("initials2"), "pictureAt2": GraphQLVariable("pictureAt2"), "createdAt": GraphQLVariable("createdAt"), "updatedAt": GraphQLVariable("updatedAt")], type: .nonNull(.object(UpdateSingle.selections))),
    ]

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(updateSingle: UpdateSingle) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "updateSingle": updateSingle.resultMap])
    }

    public var updateSingle: UpdateSingle {
      get {
        return UpdateSingle(unsafeResultMap: resultMap["updateSingle"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "updateSingle")
      }
    }

    public struct UpdateSingle: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Single"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("objectId", type: .nonNull(.scalar(String.self))),
        GraphQLField("chatId", type: .nonNull(.scalar(String.self))),
        GraphQLField("userId1", type: .nonNull(.scalar(String.self))),
        GraphQLField("fullname1", type: .nonNull(.scalar(String.self))),
        GraphQLField("initials1", type: .nonNull(.scalar(String.self))),
        GraphQLField("pictureAt1", type: .nonNull(.scalar(Int.self))),
        GraphQLField("userId2", type: .nonNull(.scalar(String.self))),
        GraphQLField("fullname2", type: .nonNull(.scalar(String.self))),
        GraphQLField("initials2", type: .nonNull(.scalar(String.self))),
        GraphQLField("pictureAt2", type: .nonNull(.scalar(Int.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(Int.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(Int.self))),
      ]

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(objectId: String, chatId: String, userId1: String, fullname1: String, initials1: String, pictureAt1: Int, userId2: String, fullname2: String, initials2: String, pictureAt2: Int, createdAt: Int, updatedAt: Int) {
        self.init(unsafeResultMap: ["__typename": "Single", "objectId": objectId, "chatId": chatId, "userId1": userId1, "fullname1": fullname1, "initials1": initials1, "pictureAt1": pictureAt1, "userId2": userId2, "fullname2": fullname2, "initials2": initials2, "pictureAt2": pictureAt2, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var objectId: String {
        get {
          return resultMap["objectId"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "objectId")
        }
      }

      public var chatId: String {
        get {
          return resultMap["chatId"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "chatId")
        }
      }

      public var userId1: String {
        get {
          return resultMap["userId1"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "userId1")
        }
      }

      public var fullname1: String {
        get {
          return resultMap["fullname1"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "fullname1")
        }
      }

      public var initials1: String {
        get {
          return resultMap["initials1"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "initials1")
        }
      }

      public var pictureAt1: Int {
        get {
          return resultMap["pictureAt1"]! as! Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "pictureAt1")
        }
      }

      public var userId2: String {
        get {
          return resultMap["userId2"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "userId2")
        }
      }

      public var fullname2: String {
        get {
          return resultMap["fullname2"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "fullname2")
        }
      }

      public var initials2: String {
        get {
          return resultMap["initials2"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "initials2")
        }
      }

      public var pictureAt2: Int {
        get {
          return resultMap["pictureAt2"]! as! Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "pictureAt2")
        }
      }

      public var createdAt: Int {
        get {
          return resultMap["createdAt"]! as! Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: Int {
        get {
          return resultMap["updatedAt"]! as! Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class FriendsQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query Friends($userId: String!) {
      objects: friends(userId: $userId) {
        __typename
        objectId
        userId
        friendId
        isDeleted
        createdAt
        updatedAt
      }
    }
    """

  public let operationName: String = "Friends"

  public var userId: String

  public init(userId: String) {
    self.userId = userId
  }

  public var variables: GraphQLMap? {
    return ["userId": userId]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("friends", alias: "objects", arguments: ["userId": GraphQLVariable("userId")], type: .list(.object(Object.selections))),
    ]

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(objects: [Object?]? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "objects": objects.flatMap { (value: [Object?]) -> [ResultMap?] in value.map { (value: Object?) -> ResultMap? in value.flatMap { (value: Object) -> ResultMap in value.resultMap } } }])
    }

    public var objects: [Object?]? {
      get {
        return (resultMap["objects"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Object?] in value.map { (value: ResultMap?) -> Object? in value.flatMap { (value: ResultMap) -> Object in Object(unsafeResultMap: value) } } }
      }
      set {
        resultMap.updateValue(newValue.flatMap { (value: [Object?]) -> [ResultMap?] in value.map { (value: Object?) -> ResultMap? in value.flatMap { (value: Object) -> ResultMap in value.resultMap } } }, forKey: "objects")
      }
    }

    public struct Object: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Friend"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("objectId", type: .nonNull(.scalar(String.self))),
        GraphQLField("userId", type: .nonNull(.scalar(String.self))),
        GraphQLField("friendId", type: .nonNull(.scalar(String.self))),
        GraphQLField("isDeleted", type: .nonNull(.scalar(Bool.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(Int.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(Int.self))),
      ]

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(objectId: String, userId: String, friendId: String, isDeleted: Bool, createdAt: Int, updatedAt: Int) {
        self.init(unsafeResultMap: ["__typename": "Friend", "objectId": objectId, "userId": userId, "friendId": friendId, "isDeleted": isDeleted, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var objectId: String {
        get {
          return resultMap["objectId"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "objectId")
        }
      }

      public var userId: String {
        get {
          return resultMap["userId"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "userId")
        }
      }

      public var friendId: String {
        get {
          return resultMap["friendId"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "friendId")
        }
      }

      public var isDeleted: Bool {
        get {
          return resultMap["isDeleted"]! as! Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "isDeleted")
        }
      }

      public var createdAt: Int {
        get {
          return resultMap["createdAt"]! as! Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: Int {
        get {
          return resultMap["updatedAt"]! as! Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class PeopleQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query People($updatedAt: Int!) {
      objects: people(updatedAt: $updatedAt) {
        __typename
        email
        phone
        firstname
        lastname
        fullname
        country
        location
        pictureAt
        status
        keepMedia
        networkPhoto
        networkVideo
        networkAudio
        wallpaper
        loginMethod
        oneSignalId
        lastActive
        lastTerminate
        createdAt
        updatedAt
      }
    }
    """

  public let operationName: String = "People"

  public var updatedAt: Int

  public init(updatedAt: Int) {
    self.updatedAt = updatedAt
  }

  public var variables: GraphQLMap? {
    return ["updatedAt": updatedAt]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("people", alias: "objects", arguments: ["updatedAt": GraphQLVariable("updatedAt")], type: .list(.object(Object.selections))),
    ]

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(objects: [Object?]? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "objects": objects.flatMap { (value: [Object?]) -> [ResultMap?] in value.map { (value: Object?) -> ResultMap? in value.flatMap { (value: Object) -> ResultMap in value.resultMap } } }])
    }

    public var objects: [Object?]? {
      get {
        return (resultMap["objects"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Object?] in value.map { (value: ResultMap?) -> Object? in value.flatMap { (value: ResultMap) -> Object in Object(unsafeResultMap: value) } } }
      }
      set {
        resultMap.updateValue(newValue.flatMap { (value: [Object?]) -> [ResultMap?] in value.map { (value: Object?) -> ResultMap? in value.flatMap { (value: Object) -> ResultMap in value.resultMap } } }, forKey: "objects")
      }
    }

    public struct Object: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Person"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("email", type: .nonNull(.scalar(String.self))),
        GraphQLField("phone", type: .nonNull(.scalar(String.self))),
        GraphQLField("firstname", type: .nonNull(.scalar(String.self))),
        GraphQLField("lastname", type: .nonNull(.scalar(String.self))),
        GraphQLField("fullname", type: .nonNull(.scalar(String.self))),
        GraphQLField("country", type: .nonNull(.scalar(String.self))),
        GraphQLField("location", type: .nonNull(.scalar(String.self))),
        GraphQLField("pictureAt", type: .nonNull(.scalar(Int.self))),
        GraphQLField("status", type: .nonNull(.scalar(String.self))),
        GraphQLField("keepMedia", type: .nonNull(.scalar(Int.self))),
        GraphQLField("networkPhoto", type: .nonNull(.scalar(Int.self))),
        GraphQLField("networkVideo", type: .nonNull(.scalar(Int.self))),
        GraphQLField("networkAudio", type: .nonNull(.scalar(Int.self))),
        GraphQLField("wallpaper", type: .nonNull(.scalar(String.self))),
        GraphQLField("loginMethod", type: .nonNull(.scalar(String.self))),
        GraphQLField("oneSignalId", type: .nonNull(.scalar(String.self))),
        GraphQLField("lastActive", type: .nonNull(.scalar(Int.self))),
        GraphQLField("lastTerminate", type: .nonNull(.scalar(Int.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(Int.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(Int.self))),
      ]

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(email: String, phone: String, firstname: String, lastname: String, fullname: String, country: String, location: String, pictureAt: Int, status: String, keepMedia: Int, networkPhoto: Int, networkVideo: Int, networkAudio: Int, wallpaper: String, loginMethod: String, oneSignalId: String, lastActive: Int, lastTerminate: Int, createdAt: Int, updatedAt: Int) {
        self.init(unsafeResultMap: ["__typename": "Person", "email": email, "phone": phone, "firstname": firstname, "lastname": lastname, "fullname": fullname, "country": country, "location": location, "pictureAt": pictureAt, "status": status, "keepMedia": keepMedia, "networkPhoto": networkPhoto, "networkVideo": networkVideo, "networkAudio": networkAudio, "wallpaper": wallpaper, "loginMethod": loginMethod, "oneSignalId": oneSignalId, "lastActive": lastActive, "lastTerminate": lastTerminate, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var email: String {
        get {
          return resultMap["email"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "email")
        }
      }

      public var phone: String {
        get {
          return resultMap["phone"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "phone")
        }
      }

      public var firstname: String {
        get {
          return resultMap["firstname"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "firstname")
        }
      }

      public var lastname: String {
        get {
          return resultMap["lastname"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "lastname")
        }
      }

      public var fullname: String {
        get {
          return resultMap["fullname"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "fullname")
        }
      }

      public var country: String {
        get {
          return resultMap["country"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "country")
        }
      }

      public var location: String {
        get {
          return resultMap["location"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "location")
        }
      }

      public var pictureAt: Int {
        get {
          return resultMap["pictureAt"]! as! Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "pictureAt")
        }
      }

      public var status: String {
        get {
          return resultMap["status"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "status")
        }
      }

      public var keepMedia: Int {
        get {
          return resultMap["keepMedia"]! as! Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "keepMedia")
        }
      }

      public var networkPhoto: Int {
        get {
          return resultMap["networkPhoto"]! as! Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "networkPhoto")
        }
      }

      public var networkVideo: Int {
        get {
          return resultMap["networkVideo"]! as! Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "networkVideo")
        }
      }

      public var networkAudio: Int {
        get {
          return resultMap["networkAudio"]! as! Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "networkAudio")
        }
      }

      public var wallpaper: String {
        get {
          return resultMap["wallpaper"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "wallpaper")
        }
      }

      public var loginMethod: String {
        get {
          return resultMap["loginMethod"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "loginMethod")
        }
      }

      public var oneSignalId: String {
        get {
          return resultMap["oneSignalId"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "oneSignalId")
        }
      }

      public var lastActive: Int {
        get {
          return resultMap["lastActive"]! as! Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "lastActive")
        }
      }

      public var lastTerminate: Int {
        get {
          return resultMap["lastTerminate"]! as! Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "lastTerminate")
        }
      }

      public var createdAt: Int {
        get {
          return resultMap["createdAt"]! as! Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: Int {
        get {
          return resultMap["updatedAt"]! as! Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class BlockedsQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query Blockeds($blockedId: String, $blockerId: String) {
      objects: blockeds(blockedId: $blockedId, blockerId: $blockerId) {
        __typename
        objectId
        blockerId
        blockedId
        isDeleted
        createdAt
        updatedAt
      }
    }
    """

  public let operationName: String = "Blockeds"

  public var blockedId: String?
  public var blockerId: String?

  public init(blockedId: String? = nil, blockerId: String? = nil) {
    self.blockedId = blockedId
    self.blockerId = blockerId
  }

  public var variables: GraphQLMap? {
    return ["blockedId": blockedId, "blockerId": blockerId]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("blockeds", alias: "objects", arguments: ["blockedId": GraphQLVariable("blockedId"), "blockerId": GraphQLVariable("blockerId")], type: .list(.object(Object.selections))),
    ]

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(objects: [Object?]? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "objects": objects.flatMap { (value: [Object?]) -> [ResultMap?] in value.map { (value: Object?) -> ResultMap? in value.flatMap { (value: Object) -> ResultMap in value.resultMap } } }])
    }

    public var objects: [Object?]? {
      get {
        return (resultMap["objects"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Object?] in value.map { (value: ResultMap?) -> Object? in value.flatMap { (value: ResultMap) -> Object in Object(unsafeResultMap: value) } } }
      }
      set {
        resultMap.updateValue(newValue.flatMap { (value: [Object?]) -> [ResultMap?] in value.map { (value: Object?) -> ResultMap? in value.flatMap { (value: Object) -> ResultMap in value.resultMap } } }, forKey: "objects")
      }
    }

    public struct Object: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Blocked"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("objectId", type: .nonNull(.scalar(String.self))),
        GraphQLField("blockerId", type: .nonNull(.scalar(String.self))),
        GraphQLField("blockedId", type: .nonNull(.scalar(String.self))),
        GraphQLField("isDeleted", type: .nonNull(.scalar(Bool.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(Int.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(Int.self))),
      ]

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(objectId: String, blockerId: String, blockedId: String, isDeleted: Bool, createdAt: Int, updatedAt: Int) {
        self.init(unsafeResultMap: ["__typename": "Blocked", "objectId": objectId, "blockerId": blockerId, "blockedId": blockedId, "isDeleted": isDeleted, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var objectId: String {
        get {
          return resultMap["objectId"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "objectId")
        }
      }

      public var blockerId: String {
        get {
          return resultMap["blockerId"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "blockerId")
        }
      }

      public var blockedId: String {
        get {
          return resultMap["blockedId"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "blockedId")
        }
      }

      public var isDeleted: Bool {
        get {
          return resultMap["isDeleted"]! as! Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "isDeleted")
        }
      }

      public var createdAt: Int {
        get {
          return resultMap["createdAt"]! as! Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: Int {
        get {
          return resultMap["updatedAt"]! as! Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class DetailsQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query Details($chatIds: [String]!) {
      objects: details(chatIds: $chatIds) {
        __typename
        objectId
        chatId
        userId
        typing
        lastRead
        mutedUntil
        isDeleted
        isArchived
        createdAt
        updatedAt
      }
    }
    """

  public let operationName: String = "Details"

  public var chatIds: [String?]

  public init(chatIds: [String?]) {
    self.chatIds = chatIds
  }

  public var variables: GraphQLMap? {
    return ["chatIds": chatIds]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("details", alias: "objects", arguments: ["chatIds": GraphQLVariable("chatIds")], type: .list(.object(Object.selections))),
    ]

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(objects: [Object?]? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "objects": objects.flatMap { (value: [Object?]) -> [ResultMap?] in value.map { (value: Object?) -> ResultMap? in value.flatMap { (value: Object) -> ResultMap in value.resultMap } } }])
    }

    public var objects: [Object?]? {
      get {
        return (resultMap["objects"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Object?] in value.map { (value: ResultMap?) -> Object? in value.flatMap { (value: ResultMap) -> Object in Object(unsafeResultMap: value) } } }
      }
      set {
        resultMap.updateValue(newValue.flatMap { (value: [Object?]) -> [ResultMap?] in value.map { (value: Object?) -> ResultMap? in value.flatMap { (value: Object) -> ResultMap in value.resultMap } } }, forKey: "objects")
      }
    }

    public struct Object: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Detail"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("objectId", type: .nonNull(.scalar(String.self))),
        GraphQLField("chatId", type: .nonNull(.scalar(String.self))),
        GraphQLField("userId", type: .nonNull(.scalar(String.self))),
        GraphQLField("typing", type: .nonNull(.scalar(Bool.self))),
        GraphQLField("lastRead", type: .nonNull(.scalar(Int.self))),
        GraphQLField("mutedUntil", type: .nonNull(.scalar(Int.self))),
        GraphQLField("isDeleted", type: .nonNull(.scalar(Bool.self))),
        GraphQLField("isArchived", type: .nonNull(.scalar(Bool.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(Int.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(Int.self))),
      ]

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(objectId: String, chatId: String, userId: String, typing: Bool, lastRead: Int, mutedUntil: Int, isDeleted: Bool, isArchived: Bool, createdAt: Int, updatedAt: Int) {
        self.init(unsafeResultMap: ["__typename": "Detail", "objectId": objectId, "chatId": chatId, "userId": userId, "typing": typing, "lastRead": lastRead, "mutedUntil": mutedUntil, "isDeleted": isDeleted, "isArchived": isArchived, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var objectId: String {
        get {
          return resultMap["objectId"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "objectId")
        }
      }

      public var chatId: String {
        get {
          return resultMap["chatId"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "chatId")
        }
      }

      public var userId: String {
        get {
          return resultMap["userId"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "userId")
        }
      }

      public var typing: Bool {
        get {
          return resultMap["typing"]! as! Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "typing")
        }
      }

      public var lastRead: Int {
        get {
          return resultMap["lastRead"]! as! Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "lastRead")
        }
      }

      public var mutedUntil: Int {
        get {
          return resultMap["mutedUntil"]! as! Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "mutedUntil")
        }
      }

      public var isDeleted: Bool {
        get {
          return resultMap["isDeleted"]! as! Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "isDeleted")
        }
      }

      public var isArchived: Bool {
        get {
          return resultMap["isArchived"]! as! Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "isArchived")
        }
      }

      public var createdAt: Int {
        get {
          return resultMap["createdAt"]! as! Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: Int {
        get {
          return resultMap["updatedAt"]! as! Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class GroupsQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query Groups($chatIds: [String]!) {
      objects: groups(chatIds: $chatIds) {
        __typename
        objectId
        chatId
        name
        ownerId
        isDeleted
        createdAt
        updatedAt
      }
    }
    """

  public let operationName: String = "Groups"

  public var chatIds: [String?]

  public init(chatIds: [String?]) {
    self.chatIds = chatIds
  }

  public var variables: GraphQLMap? {
    return ["chatIds": chatIds]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("groups", alias: "objects", arguments: ["chatIds": GraphQLVariable("chatIds")], type: .list(.object(Object.selections))),
    ]

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(objects: [Object?]? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "objects": objects.flatMap { (value: [Object?]) -> [ResultMap?] in value.map { (value: Object?) -> ResultMap? in value.flatMap { (value: Object) -> ResultMap in value.resultMap } } }])
    }

    public var objects: [Object?]? {
      get {
        return (resultMap["objects"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Object?] in value.map { (value: ResultMap?) -> Object? in value.flatMap { (value: ResultMap) -> Object in Object(unsafeResultMap: value) } } }
      }
      set {
        resultMap.updateValue(newValue.flatMap { (value: [Object?]) -> [ResultMap?] in value.map { (value: Object?) -> ResultMap? in value.flatMap { (value: Object) -> ResultMap in value.resultMap } } }, forKey: "objects")
      }
    }

    public struct Object: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Group"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("objectId", type: .nonNull(.scalar(String.self))),
        GraphQLField("chatId", type: .nonNull(.scalar(String.self))),
        GraphQLField("name", type: .nonNull(.scalar(String.self))),
        GraphQLField("ownerId", type: .nonNull(.scalar(String.self))),
        GraphQLField("isDeleted", type: .nonNull(.scalar(Bool.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(Int.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(Int.self))),
      ]

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(objectId: String, chatId: String, name: String, ownerId: String, isDeleted: Bool, createdAt: Int, updatedAt: Int) {
        self.init(unsafeResultMap: ["__typename": "Group", "objectId": objectId, "chatId": chatId, "name": name, "ownerId": ownerId, "isDeleted": isDeleted, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var objectId: String {
        get {
          return resultMap["objectId"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "objectId")
        }
      }

      public var chatId: String {
        get {
          return resultMap["chatId"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "chatId")
        }
      }

      public var name: String {
        get {
          return resultMap["name"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "name")
        }
      }

      public var ownerId: String {
        get {
          return resultMap["ownerId"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "ownerId")
        }
      }

      public var isDeleted: Bool {
        get {
          return resultMap["isDeleted"]! as! Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "isDeleted")
        }
      }

      public var createdAt: Int {
        get {
          return resultMap["createdAt"]! as! Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: Int {
        get {
          return resultMap["updatedAt"]! as! Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class MembersQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query Members($chatIds: [String], $userIds: [String]) {
      objects: members(chatIds: $chatIds, userIds: $userIds) {
        __typename
        objectId
        chatId
        userId
        isActive
        createdAt
        updatedAt
      }
    }
    """

  public let operationName: String = "Members"

  public var chatIds: [String?]?
  public var userIds: [String?]?

  public init(chatIds: [String?]? = nil, userIds: [String?]? = nil) {
    self.chatIds = chatIds
    self.userIds = userIds
  }

  public var variables: GraphQLMap? {
    return ["chatIds": chatIds, "userIds": userIds]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("members", alias: "objects", arguments: ["chatIds": GraphQLVariable("chatIds"), "userIds": GraphQLVariable("userIds")], type: .list(.object(Object.selections))),
    ]

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(objects: [Object?]? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "objects": objects.flatMap { (value: [Object?]) -> [ResultMap?] in value.map { (value: Object?) -> ResultMap? in value.flatMap { (value: Object) -> ResultMap in value.resultMap } } }])
    }

    public var objects: [Object?]? {
      get {
        return (resultMap["objects"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Object?] in value.map { (value: ResultMap?) -> Object? in value.flatMap { (value: ResultMap) -> Object in Object(unsafeResultMap: value) } } }
      }
      set {
        resultMap.updateValue(newValue.flatMap { (value: [Object?]) -> [ResultMap?] in value.map { (value: Object?) -> ResultMap? in value.flatMap { (value: Object) -> ResultMap in value.resultMap } } }, forKey: "objects")
      }
    }

    public struct Object: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Member"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("objectId", type: .nonNull(.scalar(String.self))),
        GraphQLField("chatId", type: .nonNull(.scalar(String.self))),
        GraphQLField("userId", type: .nonNull(.scalar(String.self))),
        GraphQLField("isActive", type: .nonNull(.scalar(Bool.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(Int.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(Int.self))),
      ]

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(objectId: String, chatId: String, userId: String, isActive: Bool, createdAt: Int, updatedAt: Int) {
        self.init(unsafeResultMap: ["__typename": "Member", "objectId": objectId, "chatId": chatId, "userId": userId, "isActive": isActive, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var objectId: String {
        get {
          return resultMap["objectId"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "objectId")
        }
      }

      public var chatId: String {
        get {
          return resultMap["chatId"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "chatId")
        }
      }

      public var userId: String {
        get {
          return resultMap["userId"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "userId")
        }
      }

      public var isActive: Bool {
        get {
          return resultMap["isActive"]! as! Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "isActive")
        }
      }

      public var createdAt: Int {
        get {
          return resultMap["createdAt"]! as! Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: Int {
        get {
          return resultMap["updatedAt"]! as! Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class MessagesQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query Messages($chatIds: [String]!, $updatedAt: Int!) {
      objects: messages(chatIds: $chatIds, updatedAt: $updatedAt) {
        __typename
        objectId
        chatId
        userId
        userFullname
        userInitials
        userPictureAt
        type
        text
        photoWidth
        photoHeight
        videoDuration
        audioDuration
        latitude
        longitude
        isMediaQueued
        isMediaFailed
        isDeleted
        createdAt
        updatedAt
      }
    }
    """

  public let operationName: String = "Messages"

  public var chatIds: [String?]
  public var updatedAt: Int

  public init(chatIds: [String?], updatedAt: Int) {
    self.chatIds = chatIds
    self.updatedAt = updatedAt
  }

  public var variables: GraphQLMap? {
    return ["chatIds": chatIds, "updatedAt": updatedAt]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("messages", alias: "objects", arguments: ["chatIds": GraphQLVariable("chatIds"), "updatedAt": GraphQLVariable("updatedAt")], type: .list(.object(Object.selections))),
    ]

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(objects: [Object?]? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "objects": objects.flatMap { (value: [Object?]) -> [ResultMap?] in value.map { (value: Object?) -> ResultMap? in value.flatMap { (value: Object) -> ResultMap in value.resultMap } } }])
    }

    public var objects: [Object?]? {
      get {
        return (resultMap["objects"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Object?] in value.map { (value: ResultMap?) -> Object? in value.flatMap { (value: ResultMap) -> Object in Object(unsafeResultMap: value) } } }
      }
      set {
        resultMap.updateValue(newValue.flatMap { (value: [Object?]) -> [ResultMap?] in value.map { (value: Object?) -> ResultMap? in value.flatMap { (value: Object) -> ResultMap in value.resultMap } } }, forKey: "objects")
      }
    }

    public struct Object: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Message"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("objectId", type: .nonNull(.scalar(String.self))),
        GraphQLField("chatId", type: .nonNull(.scalar(String.self))),
        GraphQLField("userId", type: .nonNull(.scalar(String.self))),
        GraphQLField("userFullname", type: .nonNull(.scalar(String.self))),
        GraphQLField("userInitials", type: .nonNull(.scalar(String.self))),
        GraphQLField("userPictureAt", type: .nonNull(.scalar(Int.self))),
        GraphQLField("type", type: .nonNull(.scalar(String.self))),
        GraphQLField("text", type: .nonNull(.scalar(String.self))),
        GraphQLField("photoWidth", type: .nonNull(.scalar(Int.self))),
        GraphQLField("photoHeight", type: .nonNull(.scalar(Int.self))),
        GraphQLField("videoDuration", type: .nonNull(.scalar(Int.self))),
        GraphQLField("audioDuration", type: .nonNull(.scalar(Int.self))),
        GraphQLField("latitude", type: .nonNull(.scalar(Double.self))),
        GraphQLField("longitude", type: .nonNull(.scalar(Double.self))),
        GraphQLField("isMediaQueued", type: .nonNull(.scalar(Bool.self))),
        GraphQLField("isMediaFailed", type: .nonNull(.scalar(Bool.self))),
        GraphQLField("isDeleted", type: .nonNull(.scalar(Bool.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(Int.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(Int.self))),
      ]

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(objectId: String, chatId: String, userId: String, userFullname: String, userInitials: String, userPictureAt: Int, type: String, text: String, photoWidth: Int, photoHeight: Int, videoDuration: Int, audioDuration: Int, latitude: Double, longitude: Double, isMediaQueued: Bool, isMediaFailed: Bool, isDeleted: Bool, createdAt: Int, updatedAt: Int) {
        self.init(unsafeResultMap: ["__typename": "Message", "objectId": objectId, "chatId": chatId, "userId": userId, "userFullname": userFullname, "userInitials": userInitials, "userPictureAt": userPictureAt, "type": type, "text": text, "photoWidth": photoWidth, "photoHeight": photoHeight, "videoDuration": videoDuration, "audioDuration": audioDuration, "latitude": latitude, "longitude": longitude, "isMediaQueued": isMediaQueued, "isMediaFailed": isMediaFailed, "isDeleted": isDeleted, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var objectId: String {
        get {
          return resultMap["objectId"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "objectId")
        }
      }

      public var chatId: String {
        get {
          return resultMap["chatId"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "chatId")
        }
      }

      public var userId: String {
        get {
          return resultMap["userId"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "userId")
        }
      }

      public var userFullname: String {
        get {
          return resultMap["userFullname"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "userFullname")
        }
      }

      public var userInitials: String {
        get {
          return resultMap["userInitials"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "userInitials")
        }
      }

      public var userPictureAt: Int {
        get {
          return resultMap["userPictureAt"]! as! Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "userPictureAt")
        }
      }

      public var type: String {
        get {
          return resultMap["type"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "type")
        }
      }

      public var text: String {
        get {
          return resultMap["text"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "text")
        }
      }

      public var photoWidth: Int {
        get {
          return resultMap["photoWidth"]! as! Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "photoWidth")
        }
      }

      public var photoHeight: Int {
        get {
          return resultMap["photoHeight"]! as! Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "photoHeight")
        }
      }

      public var videoDuration: Int {
        get {
          return resultMap["videoDuration"]! as! Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "videoDuration")
        }
      }

      public var audioDuration: Int {
        get {
          return resultMap["audioDuration"]! as! Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "audioDuration")
        }
      }

      public var latitude: Double {
        get {
          return resultMap["latitude"]! as! Double
        }
        set {
          resultMap.updateValue(newValue, forKey: "latitude")
        }
      }

      public var longitude: Double {
        get {
          return resultMap["longitude"]! as! Double
        }
        set {
          resultMap.updateValue(newValue, forKey: "longitude")
        }
      }

      public var isMediaQueued: Bool {
        get {
          return resultMap["isMediaQueued"]! as! Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "isMediaQueued")
        }
      }

      public var isMediaFailed: Bool {
        get {
          return resultMap["isMediaFailed"]! as! Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "isMediaFailed")
        }
      }

      public var isDeleted: Bool {
        get {
          return resultMap["isDeleted"]! as! Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "isDeleted")
        }
      }

      public var createdAt: Int {
        get {
          return resultMap["createdAt"]! as! Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: Int {
        get {
          return resultMap["updatedAt"]! as! Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class SinglesQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query Singles($userId1: String, $userId2: String) {
      objects: singles(userId1: $userId1, userId2: $userId2) {
        __typename
        objectId
        chatId
        userId1
        fullname1
        initials1
        pictureAt1
        userId2
        fullname2
        initials2
        pictureAt2
        createdAt
        updatedAt
      }
    }
    """

  public let operationName: String = "Singles"

  public var userId1: String?
  public var userId2: String?

  public init(userId1: String? = nil, userId2: String? = nil) {
    self.userId1 = userId1
    self.userId2 = userId2
  }

  public var variables: GraphQLMap? {
    return ["userId1": userId1, "userId2": userId2]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("singles", alias: "objects", arguments: ["userId1": GraphQLVariable("userId1"), "userId2": GraphQLVariable("userId2")], type: .list(.object(Object.selections))),
    ]

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(objects: [Object?]? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "objects": objects.flatMap { (value: [Object?]) -> [ResultMap?] in value.map { (value: Object?) -> ResultMap? in value.flatMap { (value: Object) -> ResultMap in value.resultMap } } }])
    }

    public var objects: [Object?]? {
      get {
        return (resultMap["objects"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Object?] in value.map { (value: ResultMap?) -> Object? in value.flatMap { (value: ResultMap) -> Object in Object(unsafeResultMap: value) } } }
      }
      set {
        resultMap.updateValue(newValue.flatMap { (value: [Object?]) -> [ResultMap?] in value.map { (value: Object?) -> ResultMap? in value.flatMap { (value: Object) -> ResultMap in value.resultMap } } }, forKey: "objects")
      }
    }

    public struct Object: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Single"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("objectId", type: .nonNull(.scalar(String.self))),
        GraphQLField("chatId", type: .nonNull(.scalar(String.self))),
        GraphQLField("userId1", type: .nonNull(.scalar(String.self))),
        GraphQLField("fullname1", type: .nonNull(.scalar(String.self))),
        GraphQLField("initials1", type: .nonNull(.scalar(String.self))),
        GraphQLField("pictureAt1", type: .nonNull(.scalar(Int.self))),
        GraphQLField("userId2", type: .nonNull(.scalar(String.self))),
        GraphQLField("fullname2", type: .nonNull(.scalar(String.self))),
        GraphQLField("initials2", type: .nonNull(.scalar(String.self))),
        GraphQLField("pictureAt2", type: .nonNull(.scalar(Int.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(Int.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(Int.self))),
      ]

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(objectId: String, chatId: String, userId1: String, fullname1: String, initials1: String, pictureAt1: Int, userId2: String, fullname2: String, initials2: String, pictureAt2: Int, createdAt: Int, updatedAt: Int) {
        self.init(unsafeResultMap: ["__typename": "Single", "objectId": objectId, "chatId": chatId, "userId1": userId1, "fullname1": fullname1, "initials1": initials1, "pictureAt1": pictureAt1, "userId2": userId2, "fullname2": fullname2, "initials2": initials2, "pictureAt2": pictureAt2, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var objectId: String {
        get {
          return resultMap["objectId"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "objectId")
        }
      }

      public var chatId: String {
        get {
          return resultMap["chatId"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "chatId")
        }
      }

      public var userId1: String {
        get {
          return resultMap["userId1"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "userId1")
        }
      }

      public var fullname1: String {
        get {
          return resultMap["fullname1"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "fullname1")
        }
      }

      public var initials1: String {
        get {
          return resultMap["initials1"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "initials1")
        }
      }

      public var pictureAt1: Int {
        get {
          return resultMap["pictureAt1"]! as! Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "pictureAt1")
        }
      }

      public var userId2: String {
        get {
          return resultMap["userId2"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "userId2")
        }
      }

      public var fullname2: String {
        get {
          return resultMap["fullname2"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "fullname2")
        }
      }

      public var initials2: String {
        get {
          return resultMap["initials2"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "initials2")
        }
      }

      public var pictureAt2: Int {
        get {
          return resultMap["pictureAt2"]! as! Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "pictureAt2")
        }
      }

      public var createdAt: Int {
        get {
          return resultMap["createdAt"]! as! Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: Int {
        get {
          return resultMap["updatedAt"]! as! Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class FriendSubscription: GraphQLSubscription {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    subscription Friend($userId: String!) {
      object: friend(userId: $userId) {
        __typename
        objectId
        userId
        friendId
        isDeleted
        createdAt
        updatedAt
      }
    }
    """

  public let operationName: String = "Friend"

  public var userId: String

  public init(userId: String) {
    self.userId = userId
  }

  public var variables: GraphQLMap? {
    return ["userId": userId]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("friend", alias: "object", arguments: ["userId": GraphQLVariable("userId")], type: .nonNull(.object(Object.selections))),
    ]

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(object: Object) {
      self.init(unsafeResultMap: ["__typename": "Subscription", "object": object.resultMap])
    }

    public var object: Object {
      get {
        return Object(unsafeResultMap: resultMap["object"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "object")
      }
    }

    public struct Object: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Friend"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("objectId", type: .nonNull(.scalar(String.self))),
        GraphQLField("userId", type: .nonNull(.scalar(String.self))),
        GraphQLField("friendId", type: .nonNull(.scalar(String.self))),
        GraphQLField("isDeleted", type: .nonNull(.scalar(Bool.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(Int.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(Int.self))),
      ]

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(objectId: String, userId: String, friendId: String, isDeleted: Bool, createdAt: Int, updatedAt: Int) {
        self.init(unsafeResultMap: ["__typename": "Friend", "objectId": objectId, "userId": userId, "friendId": friendId, "isDeleted": isDeleted, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var objectId: String {
        get {
          return resultMap["objectId"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "objectId")
        }
      }

      public var userId: String {
        get {
          return resultMap["userId"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "userId")
        }
      }

      public var friendId: String {
        get {
          return resultMap["friendId"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "friendId")
        }
      }

      public var isDeleted: Bool {
        get {
          return resultMap["isDeleted"]! as! Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "isDeleted")
        }
      }

      public var createdAt: Int {
        get {
          return resultMap["createdAt"]! as! Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: Int {
        get {
          return resultMap["updatedAt"]! as! Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class PersonSubscription: GraphQLSubscription {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    subscription Person($updatedAt: Int!) {
      object: person(updatedAt: $updatedAt) {
        __typename
        email
        phone
        firstname
        lastname
        fullname
        country
        location
        pictureAt
        status
        keepMedia
        networkPhoto
        networkVideo
        networkAudio
        wallpaper
        loginMethod
        oneSignalId
        lastActive
        lastTerminate
        createdAt
        updatedAt
      }
    }
    """

  public let operationName: String = "Person"

  public var updatedAt: Int

  public init(updatedAt: Int) {
    self.updatedAt = updatedAt
  }

  public var variables: GraphQLMap? {
    return ["updatedAt": updatedAt]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("person", alias: "object", arguments: ["updatedAt": GraphQLVariable("updatedAt")], type: .nonNull(.object(Object.selections))),
    ]

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(object: Object) {
      self.init(unsafeResultMap: ["__typename": "Subscription", "object": object.resultMap])
    }

    public var object: Object {
      get {
        return Object(unsafeResultMap: resultMap["object"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "object")
      }
    }

    public struct Object: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Person"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("email", type: .nonNull(.scalar(String.self))),
        GraphQLField("phone", type: .nonNull(.scalar(String.self))),
        GraphQLField("firstname", type: .nonNull(.scalar(String.self))),
        GraphQLField("lastname", type: .nonNull(.scalar(String.self))),
        GraphQLField("fullname", type: .nonNull(.scalar(String.self))),
        GraphQLField("country", type: .nonNull(.scalar(String.self))),
        GraphQLField("location", type: .nonNull(.scalar(String.self))),
        GraphQLField("pictureAt", type: .nonNull(.scalar(Int.self))),
        GraphQLField("status", type: .nonNull(.scalar(String.self))),
        GraphQLField("keepMedia", type: .nonNull(.scalar(Int.self))),
        GraphQLField("networkPhoto", type: .nonNull(.scalar(Int.self))),
        GraphQLField("networkVideo", type: .nonNull(.scalar(Int.self))),
        GraphQLField("networkAudio", type: .nonNull(.scalar(Int.self))),
        GraphQLField("wallpaper", type: .nonNull(.scalar(String.self))),
        GraphQLField("loginMethod", type: .nonNull(.scalar(String.self))),
        GraphQLField("oneSignalId", type: .nonNull(.scalar(String.self))),
        GraphQLField("lastActive", type: .nonNull(.scalar(Int.self))),
        GraphQLField("lastTerminate", type: .nonNull(.scalar(Int.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(Int.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(Int.self))),
      ]

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(email: String, phone: String, firstname: String, lastname: String, fullname: String, country: String, location: String, pictureAt: Int, status: String, keepMedia: Int, networkPhoto: Int, networkVideo: Int, networkAudio: Int, wallpaper: String, loginMethod: String, oneSignalId: String, lastActive: Int, lastTerminate: Int, createdAt: Int, updatedAt: Int) {
        self.init(unsafeResultMap: ["__typename": "Person", "email": email, "phone": phone, "firstname": firstname, "lastname": lastname, "fullname": fullname, "country": country, "location": location, "pictureAt": pictureAt, "status": status, "keepMedia": keepMedia, "networkPhoto": networkPhoto, "networkVideo": networkVideo, "networkAudio": networkAudio, "wallpaper": wallpaper, "loginMethod": loginMethod, "oneSignalId": oneSignalId, "lastActive": lastActive, "lastTerminate": lastTerminate, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var email: String {
        get {
          return resultMap["email"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "email")
        }
      }

      public var phone: String {
        get {
          return resultMap["phone"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "phone")
        }
      }

      public var firstname: String {
        get {
          return resultMap["firstname"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "firstname")
        }
      }

      public var lastname: String {
        get {
          return resultMap["lastname"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "lastname")
        }
      }

      public var fullname: String {
        get {
          return resultMap["fullname"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "fullname")
        }
      }

      public var country: String {
        get {
          return resultMap["country"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "country")
        }
      }

      public var location: String {
        get {
          return resultMap["location"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "location")
        }
      }

      public var pictureAt: Int {
        get {
          return resultMap["pictureAt"]! as! Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "pictureAt")
        }
      }

      public var status: String {
        get {
          return resultMap["status"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "status")
        }
      }

      public var keepMedia: Int {
        get {
          return resultMap["keepMedia"]! as! Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "keepMedia")
        }
      }

      public var networkPhoto: Int {
        get {
          return resultMap["networkPhoto"]! as! Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "networkPhoto")
        }
      }

      public var networkVideo: Int {
        get {
          return resultMap["networkVideo"]! as! Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "networkVideo")
        }
      }

      public var networkAudio: Int {
        get {
          return resultMap["networkAudio"]! as! Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "networkAudio")
        }
      }

      public var wallpaper: String {
        get {
          return resultMap["wallpaper"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "wallpaper")
        }
      }

      public var loginMethod: String {
        get {
          return resultMap["loginMethod"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "loginMethod")
        }
      }

      public var oneSignalId: String {
        get {
          return resultMap["oneSignalId"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "oneSignalId")
        }
      }

      public var lastActive: Int {
        get {
          return resultMap["lastActive"]! as! Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "lastActive")
        }
      }

      public var lastTerminate: Int {
        get {
          return resultMap["lastTerminate"]! as! Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "lastTerminate")
        }
      }

      public var createdAt: Int {
        get {
          return resultMap["createdAt"]! as! Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: Int {
        get {
          return resultMap["updatedAt"]! as! Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class BlockedSubscription: GraphQLSubscription {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    subscription Blocked($blockedId: String, $blockerId: String) {
      object: blocked(blockedId: $blockedId, blockerId: $blockerId) {
        __typename
        objectId
        blockerId
        blockedId
        isDeleted
        createdAt
        updatedAt
      }
    }
    """

  public let operationName: String = "Blocked"

  public var blockedId: String?
  public var blockerId: String?

  public init(blockedId: String? = nil, blockerId: String? = nil) {
    self.blockedId = blockedId
    self.blockerId = blockerId
  }

  public var variables: GraphQLMap? {
    return ["blockedId": blockedId, "blockerId": blockerId]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("blocked", alias: "object", arguments: ["blockedId": GraphQLVariable("blockedId"), "blockerId": GraphQLVariable("blockerId")], type: .nonNull(.object(Object.selections))),
    ]

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(object: Object) {
      self.init(unsafeResultMap: ["__typename": "Subscription", "object": object.resultMap])
    }

    public var object: Object {
      get {
        return Object(unsafeResultMap: resultMap["object"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "object")
      }
    }

    public struct Object: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Blocked"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("objectId", type: .nonNull(.scalar(String.self))),
        GraphQLField("blockerId", type: .nonNull(.scalar(String.self))),
        GraphQLField("blockedId", type: .nonNull(.scalar(String.self))),
        GraphQLField("isDeleted", type: .nonNull(.scalar(Bool.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(Int.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(Int.self))),
      ]

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(objectId: String, blockerId: String, blockedId: String, isDeleted: Bool, createdAt: Int, updatedAt: Int) {
        self.init(unsafeResultMap: ["__typename": "Blocked", "objectId": objectId, "blockerId": blockerId, "blockedId": blockedId, "isDeleted": isDeleted, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var objectId: String {
        get {
          return resultMap["objectId"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "objectId")
        }
      }

      public var blockerId: String {
        get {
          return resultMap["blockerId"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "blockerId")
        }
      }

      public var blockedId: String {
        get {
          return resultMap["blockedId"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "blockedId")
        }
      }

      public var isDeleted: Bool {
        get {
          return resultMap["isDeleted"]! as! Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "isDeleted")
        }
      }

      public var createdAt: Int {
        get {
          return resultMap["createdAt"]! as! Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: Int {
        get {
          return resultMap["updatedAt"]! as! Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class DetailSubscription: GraphQLSubscription {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    subscription Detail($chatIds: [String]!) {
      object: detail(chatIds: $chatIds) {
        __typename
        objectId
        chatId
        userId
        typing
        lastRead
        mutedUntil
        isDeleted
        isArchived
        createdAt
        updatedAt
      }
    }
    """

  public let operationName: String = "Detail"

  public var chatIds: [String?]

  public init(chatIds: [String?]) {
    self.chatIds = chatIds
  }

  public var variables: GraphQLMap? {
    return ["chatIds": chatIds]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("detail", alias: "object", arguments: ["chatIds": GraphQLVariable("chatIds")], type: .nonNull(.object(Object.selections))),
    ]

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(object: Object) {
      self.init(unsafeResultMap: ["__typename": "Subscription", "object": object.resultMap])
    }

    public var object: Object {
      get {
        return Object(unsafeResultMap: resultMap["object"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "object")
      }
    }

    public struct Object: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Detail"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("objectId", type: .nonNull(.scalar(String.self))),
        GraphQLField("chatId", type: .nonNull(.scalar(String.self))),
        GraphQLField("userId", type: .nonNull(.scalar(String.self))),
        GraphQLField("typing", type: .nonNull(.scalar(Bool.self))),
        GraphQLField("lastRead", type: .nonNull(.scalar(Int.self))),
        GraphQLField("mutedUntil", type: .nonNull(.scalar(Int.self))),
        GraphQLField("isDeleted", type: .nonNull(.scalar(Bool.self))),
        GraphQLField("isArchived", type: .nonNull(.scalar(Bool.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(Int.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(Int.self))),
      ]

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(objectId: String, chatId: String, userId: String, typing: Bool, lastRead: Int, mutedUntil: Int, isDeleted: Bool, isArchived: Bool, createdAt: Int, updatedAt: Int) {
        self.init(unsafeResultMap: ["__typename": "Detail", "objectId": objectId, "chatId": chatId, "userId": userId, "typing": typing, "lastRead": lastRead, "mutedUntil": mutedUntil, "isDeleted": isDeleted, "isArchived": isArchived, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var objectId: String {
        get {
          return resultMap["objectId"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "objectId")
        }
      }

      public var chatId: String {
        get {
          return resultMap["chatId"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "chatId")
        }
      }

      public var userId: String {
        get {
          return resultMap["userId"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "userId")
        }
      }

      public var typing: Bool {
        get {
          return resultMap["typing"]! as! Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "typing")
        }
      }

      public var lastRead: Int {
        get {
          return resultMap["lastRead"]! as! Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "lastRead")
        }
      }

      public var mutedUntil: Int {
        get {
          return resultMap["mutedUntil"]! as! Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "mutedUntil")
        }
      }

      public var isDeleted: Bool {
        get {
          return resultMap["isDeleted"]! as! Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "isDeleted")
        }
      }

      public var isArchived: Bool {
        get {
          return resultMap["isArchived"]! as! Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "isArchived")
        }
      }

      public var createdAt: Int {
        get {
          return resultMap["createdAt"]! as! Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: Int {
        get {
          return resultMap["updatedAt"]! as! Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class GroupSubscription: GraphQLSubscription {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    subscription Group($chatIds: [String]!) {
      object: group(chatIds: $chatIds) {
        __typename
        objectId
        chatId
        name
        ownerId
        isDeleted
        createdAt
        updatedAt
      }
    }
    """

  public let operationName: String = "Group"

  public var chatIds: [String?]

  public init(chatIds: [String?]) {
    self.chatIds = chatIds
  }

  public var variables: GraphQLMap? {
    return ["chatIds": chatIds]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("group", alias: "object", arguments: ["chatIds": GraphQLVariable("chatIds")], type: .nonNull(.object(Object.selections))),
    ]

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(object: Object) {
      self.init(unsafeResultMap: ["__typename": "Subscription", "object": object.resultMap])
    }

    public var object: Object {
      get {
        return Object(unsafeResultMap: resultMap["object"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "object")
      }
    }

    public struct Object: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Group"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("objectId", type: .nonNull(.scalar(String.self))),
        GraphQLField("chatId", type: .nonNull(.scalar(String.self))),
        GraphQLField("name", type: .nonNull(.scalar(String.self))),
        GraphQLField("ownerId", type: .nonNull(.scalar(String.self))),
        GraphQLField("isDeleted", type: .nonNull(.scalar(Bool.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(Int.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(Int.self))),
      ]

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(objectId: String, chatId: String, name: String, ownerId: String, isDeleted: Bool, createdAt: Int, updatedAt: Int) {
        self.init(unsafeResultMap: ["__typename": "Group", "objectId": objectId, "chatId": chatId, "name": name, "ownerId": ownerId, "isDeleted": isDeleted, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var objectId: String {
        get {
          return resultMap["objectId"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "objectId")
        }
      }

      public var chatId: String {
        get {
          return resultMap["chatId"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "chatId")
        }
      }

      public var name: String {
        get {
          return resultMap["name"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "name")
        }
      }

      public var ownerId: String {
        get {
          return resultMap["ownerId"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "ownerId")
        }
      }

      public var isDeleted: Bool {
        get {
          return resultMap["isDeleted"]! as! Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "isDeleted")
        }
      }

      public var createdAt: Int {
        get {
          return resultMap["createdAt"]! as! Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: Int {
        get {
          return resultMap["updatedAt"]! as! Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class MemberSubscription: GraphQLSubscription {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    subscription Member($chatIds: [String]!) {
      object: member(chatIds: $chatIds) {
        __typename
        objectId
        chatId
        userId
        isActive
        createdAt
        updatedAt
      }
    }
    """

  public let operationName: String = "Member"

  public var chatIds: [String?]

  public init(chatIds: [String?]) {
    self.chatIds = chatIds
  }

  public var variables: GraphQLMap? {
    return ["chatIds": chatIds]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("member", alias: "object", arguments: ["chatIds": GraphQLVariable("chatIds")], type: .nonNull(.object(Object.selections))),
    ]

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(object: Object) {
      self.init(unsafeResultMap: ["__typename": "Subscription", "object": object.resultMap])
    }

    public var object: Object {
      get {
        return Object(unsafeResultMap: resultMap["object"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "object")
      }
    }

    public struct Object: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Member"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("objectId", type: .nonNull(.scalar(String.self))),
        GraphQLField("chatId", type: .nonNull(.scalar(String.self))),
        GraphQLField("userId", type: .nonNull(.scalar(String.self))),
        GraphQLField("isActive", type: .nonNull(.scalar(Bool.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(Int.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(Int.self))),
      ]

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(objectId: String, chatId: String, userId: String, isActive: Bool, createdAt: Int, updatedAt: Int) {
        self.init(unsafeResultMap: ["__typename": "Member", "objectId": objectId, "chatId": chatId, "userId": userId, "isActive": isActive, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var objectId: String {
        get {
          return resultMap["objectId"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "objectId")
        }
      }

      public var chatId: String {
        get {
          return resultMap["chatId"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "chatId")
        }
      }

      public var userId: String {
        get {
          return resultMap["userId"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "userId")
        }
      }

      public var isActive: Bool {
        get {
          return resultMap["isActive"]! as! Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "isActive")
        }
      }

      public var createdAt: Int {
        get {
          return resultMap["createdAt"]! as! Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: Int {
        get {
          return resultMap["updatedAt"]! as! Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class MessageSubscription: GraphQLSubscription {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    subscription Message($chatIds: [String]!, $updatedAt: Int!) {
      object: message(chatIds: $chatIds, updatedAt: $updatedAt) {
        __typename
        objectId
        chatId
        userId
        userFullname
        userInitials
        userPictureAt
        type
        text
        photoWidth
        photoHeight
        videoDuration
        audioDuration
        latitude
        longitude
        isMediaQueued
        isMediaFailed
        isDeleted
        createdAt
        updatedAt
      }
    }
    """

  public let operationName: String = "Message"

  public var chatIds: [String?]
  public var updatedAt: Int

  public init(chatIds: [String?], updatedAt: Int) {
    self.chatIds = chatIds
    self.updatedAt = updatedAt
  }

  public var variables: GraphQLMap? {
    return ["chatIds": chatIds, "updatedAt": updatedAt]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("message", alias: "object", arguments: ["chatIds": GraphQLVariable("chatIds"), "updatedAt": GraphQLVariable("updatedAt")], type: .nonNull(.object(Object.selections))),
    ]

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(object: Object) {
      self.init(unsafeResultMap: ["__typename": "Subscription", "object": object.resultMap])
    }

    public var object: Object {
      get {
        return Object(unsafeResultMap: resultMap["object"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "object")
      }
    }

    public struct Object: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Message"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("objectId", type: .nonNull(.scalar(String.self))),
        GraphQLField("chatId", type: .nonNull(.scalar(String.self))),
        GraphQLField("userId", type: .nonNull(.scalar(String.self))),
        GraphQLField("userFullname", type: .nonNull(.scalar(String.self))),
        GraphQLField("userInitials", type: .nonNull(.scalar(String.self))),
        GraphQLField("userPictureAt", type: .nonNull(.scalar(Int.self))),
        GraphQLField("type", type: .nonNull(.scalar(String.self))),
        GraphQLField("text", type: .nonNull(.scalar(String.self))),
        GraphQLField("photoWidth", type: .nonNull(.scalar(Int.self))),
        GraphQLField("photoHeight", type: .nonNull(.scalar(Int.self))),
        GraphQLField("videoDuration", type: .nonNull(.scalar(Int.self))),
        GraphQLField("audioDuration", type: .nonNull(.scalar(Int.self))),
        GraphQLField("latitude", type: .nonNull(.scalar(Double.self))),
        GraphQLField("longitude", type: .nonNull(.scalar(Double.self))),
        GraphQLField("isMediaQueued", type: .nonNull(.scalar(Bool.self))),
        GraphQLField("isMediaFailed", type: .nonNull(.scalar(Bool.self))),
        GraphQLField("isDeleted", type: .nonNull(.scalar(Bool.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(Int.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(Int.self))),
      ]

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(objectId: String, chatId: String, userId: String, userFullname: String, userInitials: String, userPictureAt: Int, type: String, text: String, photoWidth: Int, photoHeight: Int, videoDuration: Int, audioDuration: Int, latitude: Double, longitude: Double, isMediaQueued: Bool, isMediaFailed: Bool, isDeleted: Bool, createdAt: Int, updatedAt: Int) {
        self.init(unsafeResultMap: ["__typename": "Message", "objectId": objectId, "chatId": chatId, "userId": userId, "userFullname": userFullname, "userInitials": userInitials, "userPictureAt": userPictureAt, "type": type, "text": text, "photoWidth": photoWidth, "photoHeight": photoHeight, "videoDuration": videoDuration, "audioDuration": audioDuration, "latitude": latitude, "longitude": longitude, "isMediaQueued": isMediaQueued, "isMediaFailed": isMediaFailed, "isDeleted": isDeleted, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var objectId: String {
        get {
          return resultMap["objectId"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "objectId")
        }
      }

      public var chatId: String {
        get {
          return resultMap["chatId"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "chatId")
        }
      }

      public var userId: String {
        get {
          return resultMap["userId"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "userId")
        }
      }

      public var userFullname: String {
        get {
          return resultMap["userFullname"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "userFullname")
        }
      }

      public var userInitials: String {
        get {
          return resultMap["userInitials"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "userInitials")
        }
      }

      public var userPictureAt: Int {
        get {
          return resultMap["userPictureAt"]! as! Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "userPictureAt")
        }
      }

      public var type: String {
        get {
          return resultMap["type"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "type")
        }
      }

      public var text: String {
        get {
          return resultMap["text"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "text")
        }
      }

      public var photoWidth: Int {
        get {
          return resultMap["photoWidth"]! as! Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "photoWidth")
        }
      }

      public var photoHeight: Int {
        get {
          return resultMap["photoHeight"]! as! Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "photoHeight")
        }
      }

      public var videoDuration: Int {
        get {
          return resultMap["videoDuration"]! as! Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "videoDuration")
        }
      }

      public var audioDuration: Int {
        get {
          return resultMap["audioDuration"]! as! Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "audioDuration")
        }
      }

      public var latitude: Double {
        get {
          return resultMap["latitude"]! as! Double
        }
        set {
          resultMap.updateValue(newValue, forKey: "latitude")
        }
      }

      public var longitude: Double {
        get {
          return resultMap["longitude"]! as! Double
        }
        set {
          resultMap.updateValue(newValue, forKey: "longitude")
        }
      }

      public var isMediaQueued: Bool {
        get {
          return resultMap["isMediaQueued"]! as! Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "isMediaQueued")
        }
      }

      public var isMediaFailed: Bool {
        get {
          return resultMap["isMediaFailed"]! as! Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "isMediaFailed")
        }
      }

      public var isDeleted: Bool {
        get {
          return resultMap["isDeleted"]! as! Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "isDeleted")
        }
      }

      public var createdAt: Int {
        get {
          return resultMap["createdAt"]! as! Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: Int {
        get {
          return resultMap["updatedAt"]! as! Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class SingleSubscription: GraphQLSubscription {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    subscription Single($userId1: String, $userId2: String) {
      object: single(userId1: $userId1, userId2: $userId2) {
        __typename
        objectId
        chatId
        userId1
        fullname1
        initials1
        pictureAt1
        userId2
        fullname2
        initials2
        pictureAt2
        createdAt
        updatedAt
      }
    }
    """

  public let operationName: String = "Single"

  public var userId1: String?
  public var userId2: String?

  public init(userId1: String? = nil, userId2: String? = nil) {
    self.userId1 = userId1
    self.userId2 = userId2
  }

  public var variables: GraphQLMap? {
    return ["userId1": userId1, "userId2": userId2]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("single", alias: "object", arguments: ["userId1": GraphQLVariable("userId1"), "userId2": GraphQLVariable("userId2")], type: .nonNull(.object(Object.selections))),
    ]

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(object: Object) {
      self.init(unsafeResultMap: ["__typename": "Subscription", "object": object.resultMap])
    }

    public var object: Object {
      get {
        return Object(unsafeResultMap: resultMap["object"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "object")
      }
    }

    public struct Object: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Single"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("objectId", type: .nonNull(.scalar(String.self))),
        GraphQLField("chatId", type: .nonNull(.scalar(String.self))),
        GraphQLField("userId1", type: .nonNull(.scalar(String.self))),
        GraphQLField("fullname1", type: .nonNull(.scalar(String.self))),
        GraphQLField("initials1", type: .nonNull(.scalar(String.self))),
        GraphQLField("pictureAt1", type: .nonNull(.scalar(Int.self))),
        GraphQLField("userId2", type: .nonNull(.scalar(String.self))),
        GraphQLField("fullname2", type: .nonNull(.scalar(String.self))),
        GraphQLField("initials2", type: .nonNull(.scalar(String.self))),
        GraphQLField("pictureAt2", type: .nonNull(.scalar(Int.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(Int.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(Int.self))),
      ]

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(objectId: String, chatId: String, userId1: String, fullname1: String, initials1: String, pictureAt1: Int, userId2: String, fullname2: String, initials2: String, pictureAt2: Int, createdAt: Int, updatedAt: Int) {
        self.init(unsafeResultMap: ["__typename": "Single", "objectId": objectId, "chatId": chatId, "userId1": userId1, "fullname1": fullname1, "initials1": initials1, "pictureAt1": pictureAt1, "userId2": userId2, "fullname2": fullname2, "initials2": initials2, "pictureAt2": pictureAt2, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var objectId: String {
        get {
          return resultMap["objectId"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "objectId")
        }
      }

      public var chatId: String {
        get {
          return resultMap["chatId"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "chatId")
        }
      }

      public var userId1: String {
        get {
          return resultMap["userId1"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "userId1")
        }
      }

      public var fullname1: String {
        get {
          return resultMap["fullname1"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "fullname1")
        }
      }

      public var initials1: String {
        get {
          return resultMap["initials1"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "initials1")
        }
      }

      public var pictureAt1: Int {
        get {
          return resultMap["pictureAt1"]! as! Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "pictureAt1")
        }
      }

      public var userId2: String {
        get {
          return resultMap["userId2"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "userId2")
        }
      }

      public var fullname2: String {
        get {
          return resultMap["fullname2"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "fullname2")
        }
      }

      public var initials2: String {
        get {
          return resultMap["initials2"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "initials2")
        }
      }

      public var pictureAt2: Int {
        get {
          return resultMap["pictureAt2"]! as! Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "pictureAt2")
        }
      }

      public var createdAt: Int {
        get {
          return resultMap["createdAt"]! as! Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: Int {
        get {
          return resultMap["updatedAt"]! as! Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}
