import Bits

public final class If: Tag {
    public init() {}

    public func render(
        parameters: [Data],
        context: inout Data,
        body: Bytes?,
        renderer: Renderer
    ) throws -> Bytes {
        let expr = try requireParameter(0, from: parameters)
        let body = try requireBody(body)
        
        if expr.bool != false {
            return body
        } else {
            return []
        }
    }
}