package org.sami.electit.shared.middlewares;

import com.auth0.jwt.exceptions.JWTVerificationException;
import graphql.GraphQLError;
import graphql.GraphqlErrorBuilder;
import graphql.schema.DataFetchingEnvironment;
import org.jetbrains.annotations.NotNull;
import org.sami.electit.shared.domain.exceptions.DuplicateEntryException;
import org.sami.electit.shared.domain.exceptions.InvalidEntryDataException;
import org.sami.electit.shared.domain.exceptions.NoEntryFoundException;
import org.springframework.graphql.execution.DataFetcherExceptionResolver;
import org.springframework.graphql.execution.ErrorType;
import org.springframework.security.access.AccessDeniedException;
import org.springframework.stereotype.Component;
import reactor.core.publisher.Mono;

import java.util.List;

@Component
public class GraphQLErrorHandlerMiddleware implements DataFetcherExceptionResolver {
    @Override
    public @NotNull Mono<List<GraphQLError>> resolveException(@NotNull Throwable e, DataFetchingEnvironment environment) {
        var errorType = switch (e) {
            case DuplicateEntryException ignored -> ErrorType.BAD_REQUEST;
            case NoEntryFoundException ignored -> ErrorType.NOT_FOUND;
            case AccessDeniedException ignored -> ErrorType.UNAUTHORIZED;
            case JWTVerificationException ignored -> ErrorType.UNAUTHORIZED;
            case InvalidEntryDataException ignored -> ErrorType.BAD_REQUEST;
            default -> ErrorType.INTERNAL_ERROR;
        };

        return Mono.just(List.of(GraphqlErrorBuilder.newError()
                .errorType(errorType)
                .message(e.getMessage())
                .path(environment.getExecutionStepInfo().getPath())
                .location(environment.getField().getSourceLocation())
                .build()));
    }
}
