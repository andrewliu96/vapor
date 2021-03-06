class ContentMiddleware: Middleware {

    func respond(to request: Request, chainingTo next: Responder) throws -> Response {
        var request = request
        
        request.data = Content(request: request)

        return try next.respond(to: request)
    }

}
