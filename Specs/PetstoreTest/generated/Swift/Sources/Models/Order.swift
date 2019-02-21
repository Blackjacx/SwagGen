//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class Order: APIModel {

    /** Order Status */
    public enum Status: String, Codable {
        case placed = "placed"
        case approved = "approved"
        case delivered = "delivered"

        public static let cases: [Status] = [
          .placed,
          .approved,
          .delivered,
        ]
    }

    public var complete: Bool?

    public var id: Int?

    public var petId: Int?

    public var quantity: Int?

    public var shipDate: DateTime?

    /** Order Status */
    public var status: Status?

    public init(complete: Bool? = nil, id: Int? = nil, petId: Int? = nil, quantity: Int? = nil, shipDate: DateTime? = nil, status: Status? = nil) {
        self.complete = complete
        self.id = id
        self.petId = petId
        self.quantity = quantity
        self.shipDate = shipDate
        self.status = status
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        complete = try container.decodeIfPresent("complete")
        id = try container.decodeIfPresent("id")
        petId = try container.decodeIfPresent("petId")
        quantity = try container.decodeIfPresent("quantity")
        shipDate = try container.decodeIfPresent("shipDate")
        status = try container.decodeIfPresent("status")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(complete, forKey: "complete")
        try container.encodeIfPresent(id, forKey: "id")
        try container.encodeIfPresent(petId, forKey: "petId")
        try container.encodeIfPresent(quantity, forKey: "quantity")
        try container.encodeIfPresent(shipDate, forKey: "shipDate")
        try container.encodeIfPresent(status, forKey: "status")
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? Order else { return false }
      guard self.complete == object.complete else { return false }
      guard self.id == object.id else { return false }
      guard self.petId == object.petId else { return false }
      guard self.quantity == object.quantity else { return false }
      guard self.shipDate == object.shipDate else { return false }
      guard self.status == object.status else { return false }
      return true
    }

    public static func == (lhs: Order, rhs: Order) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
